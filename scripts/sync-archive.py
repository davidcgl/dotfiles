#!/usr/bin/env python3

# This script copy files to and from `~/archive` and various cloud storage
# providers (Dropbox, Google Drive, Sync.com). Its primary purpose is to keep
# my archive folder in sync with my cloud providers.
#
# To run this script, run `python sync-archive.py`

import subprocess
import os
import datetime

PATHS = {
    "ARCHIVE": os.path.expanduser("~/archive"),
    "DROPBOX": os.path.expanduser("~/Dropbox"),
    "GOOGLE_DRIVE": os.path.expanduser("~/GoogleDrive"),
    "SYNC_DOT_COM": os.path.expanduser("~/Sync"),
}


def log(message: str) -> None:
    timestamp = datetime.datetime.now().isoformat()
    print(f"[{timestamp}] {message}")


def run_command(command: str) -> None:
    try:
        log(command)
        subprocess.run(command, check=True, shell=True)
    except subprocess.CalledProcessError as e:
        log(f"Error executing command: {e}")


def run_rsync(src_root: str, src_path: str, dst_path: str) -> None:
    # Change current working directory to src_root.
    cwd = os.getcwd()
    os.chdir(src_root)

    log("Sync started")
    log(f"cwd: {os.getcwd()}")
    log(f"src: {src_path}")
    log(f"dst: {dst_path}")
    run_command(f"rsync -avPhR --delete {src_path} {dst_path}")
    log("Sync complete\n")

    # Restore the original working directory.
    os.chdir(cwd)


def sync_from_archive_to_cloud(
    src_paths: list[str],
    dst_path: str,
) -> None:
    for src_path in src_paths:
        run_rsync(
            src_root=PATHS["ARCHIVE"],
            src_path=src_path,
            dst_path=dst_path,
        )


def sync_from_archive_to_dropbox() -> None:
    # Nothing to sync to Dropbox at this time.
    pass


def sync_from_archive_to_google_drive() -> None:
    paths_to_sync = ["docs", "photography/processed"]
    sync_from_archive_to_cloud(
        src_paths=paths_to_sync,
        dst_path=os.path.join(PATHS["GOOGLE_DRIVE"], "archive"),
    )


def sync_from_archive_to_sync_dot_com() -> None:
    paths_to_sync = ["docs"]
    sync_from_archive_to_cloud(
        src_paths=paths_to_sync,
        dst_path=os.path.join(PATHS["SYNC_DOT_COM"], "archive"),
    )


def main():
    # First, copy all docs from ~/Dropbox/docs to ~/archive/docs. Dropbox has
    # my master copy of docs so that I can upload docs from other devices.
    run_rsync(
        src_root=PATHS["DROPBOX"],
        src_path="docs",
        dst_path=PATHS["ARCHIVE"],
    )

    # Then, copy selected folders from ~/archive to clouds.
    sync_from_archive_to_dropbox()
    sync_from_archive_to_google_drive()
    sync_from_archive_to_sync_dot_com()


if __name__ == "__main__":
    main()
