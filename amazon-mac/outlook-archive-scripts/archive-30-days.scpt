FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	-- ========== Outlook Mac 2011 Archive Script to local folders 2.2.0 =============
	
	Author: 		Michael Needham Oct 2012, blog.7thdomain.com/2012/09/03/auto-archive-script-for-outlook-mac-2011/ (feedback/suggestions welcome)
	
	Details:
	 			Mail:
				-----
				- Script to auto archive a full folder structure from the default (or nominated) exchange account to local 'on my computer' root folder
	 			- Set parameteres in 'Global Settings' section below, before running script
				- Script can be run manually from AppleScript Editor which is useful if you want to review the debug event log (click twice on the "Events" button above the logging window to see log output), however...
				- It's also recommended you schedule the script from Outlook's 'Run Schedule' tool to execute on a regular basis (daily recommended)
				
				Calendar:
				---------
				- Script also archives calendar events from the nominated exchange account to local 'on my computer' archive calendar
	 			- Set parameteres in global settings section below before running script 


				- Calendar and mail archiving can be separately enabled with different archive periods
	
	Disclaimer: Free to use at your own risk and liability	 
     � 	 		x 
 	 - -   = = = = = = = = = =   O u t l o o k   M a c   2 0 1 1   A r c h i v e   S c r i p t   t o   l o c a l   f o l d e r s   2 . 2 . 0   = = = = = = = = = = = = = 
 	 
 	 A u t h o r :   	 	 M i c h a e l   N e e d h a m   O c t   2 0 1 2 ,   b l o g . 7 t h d o m a i n . c o m / 2 0 1 2 / 0 9 / 0 3 / a u t o - a r c h i v e - s c r i p t - f o r - o u t l o o k - m a c - 2 0 1 1 /   ( f e e d b a c k / s u g g e s t i o n s   w e l c o m e ) 
 	 
 	 D e t a i l s : 
 	   	 	 	 M a i l : 
 	 	 	 	 - - - - - 
 	 	 	 	 -   S c r i p t   t o   a u t o   a r c h i v e   a   f u l l   f o l d e r   s t r u c t u r e   f r o m   t h e   d e f a u l t   ( o r   n o m i n a t e d )   e x c h a n g e   a c c o u n t   t o   l o c a l   ' o n   m y   c o m p u t e r '   r o o t   f o l d e r 
 	   	 	 	 -   S e t   p a r a m e t e r e s   i n   ' G l o b a l   S e t t i n g s '   s e c t i o n   b e l o w ,   b e f o r e   r u n n i n g   s c r i p t 
 	 	 	 	 -   S c r i p t   c a n   b e   r u n   m a n u a l l y   f r o m   A p p l e S c r i p t   E d i t o r   w h i c h   i s   u s e f u l   i f   y o u   w a n t   t o   r e v i e w   t h e   d e b u g   e v e n t   l o g   ( c l i c k   t w i c e   o n   t h e   " E v e n t s "   b u t t o n   a b o v e   t h e   l o g g i n g   w i n d o w   t o   s e e   l o g   o u t p u t ) ,   h o w e v e r . . . 
 	 	 	 	 -   I t ' s   a l s o   r e c o m m e n d e d   y o u   s c h e d u l e   t h e   s c r i p t   f r o m   O u t l o o k ' s   ' R u n   S c h e d u l e '   t o o l   t o   e x e c u t e   o n   a   r e g u l a r   b a s i s   ( d a i l y   r e c o m m e n d e d ) 
 	 	 	 	 
 	 	 	 	 C a l e n d a r : 
 	 	 	 	 - - - - - - - - - 
 	 	 	 	 -   S c r i p t   a l s o   a r c h i v e s   c a l e n d a r   e v e n t s   f r o m   t h e   n o m i n a t e d   e x c h a n g e   a c c o u n t   t o   l o c a l   ' o n   m y   c o m p u t e r '   a r c h i v e   c a l e n d a r 
 	   	 	 	 -   S e t   p a r a m e t e r e s   i n   g l o b a l   s e t t i n g s   s e c t i o n   b e l o w   b e f o r e   r u n n i n g   s c r i p t   
 
 
 	 	 	 	 -   C a l e n d a r   a n d   m a i l   a r c h i v i n g   c a n   b e   s e p a r a t e l y   e n a b l e d   w i t h   d i f f e r e n t   a r c h i v e   p e r i o d s 
 	 
 	 D i s c l a i m e r :   F r e e   t o   u s e   a t   y o u r   o w n   r i s k   a n d   l i a b i l i t y 	   
   
  
 l     ��������  ��  ��        l   l ����  O    l    k   k       l   ��������  ��  ��        l   ��  ��    � � Global Settings which you can change if required ---------------------------------------------------------------------------------------------------------------------------     �  Z   G l o b a l   S e t t i n g s   w h i c h   y o u   c a n   c h a n g e   i f   r e q u i r e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l   ��������  ��  ��        l   ��  ��     	 General	     �      G e n e r a l 	     !   l    " # $ " r     % & % m     ' ' � ( ( $ < e x c h a n g e   a c c o u n t > & o      ���� 80 exchangeaccountdescription exchangeAccountDescription #,& By default you don't have to change this to your account name as the script will attempt to auto detect the primary account. However, if you have multiple accounts then you set this to the greyed out name of your Exchange Account in the main Outlook window holding all your folders (Inbox etc)    $ � ) )L   B y   d e f a u l t   y o u   d o n ' t   h a v e   t o   c h a n g e   t h i s   t o   y o u r   a c c o u n t   n a m e   a s   t h e   s c r i p t   w i l l   a t t e m p t   t o   a u t o   d e t e c t   t h e   p r i m a r y   a c c o u n t .   H o w e v e r ,   i f   y o u   h a v e   m u l t i p l e   a c c o u n t s   t h e n   y o u   s e t   t h i s   t o   t h e   g r e y e d   o u t   n a m e   o f   y o u r   E x c h a n g e   A c c o u n t   i n   t h e   m a i n   O u t l o o k   w i n d o w   h o l d i n g   a l l   y o u r   f o l d e r s   ( I n b o x   e t c ) !  * + * l    , - . , r     / 0 / m    	��
�� boovfals 0 o      ���� *0 runinsimulationmode runInSimulationMode -�� when set to true no mail or calendar events will be archived. It will however create the appropriate folder structures under 'On My Computer' and the candidate items that will be archived will be logged to the events window for you to review. The script can be run repeatedly to test out the effect off different parameters below. You can also optionally delete the empty folders that were created from running in this mode if you want to re-run the simulation    . � 1 1�   w h e n   s e t   t o   t r u e   n o   m a i l   o r   c a l e n d a r   e v e n t s   w i l l   b e   a r c h i v e d .   I t   w i l l   h o w e v e r   c r e a t e   t h e   a p p r o p r i a t e   f o l d e r   s t r u c t u r e s   u n d e r   ' O n   M y   C o m p u t e r '   a n d   t h e   c a n d i d a t e   i t e m s   t h a t   w i l l   b e   a r c h i v e d   w i l l   b e   l o g g e d   t o   t h e   e v e n t s   w i n d o w   f o r   y o u   t o   r e v i e w .   T h e   s c r i p t   c a n   b e   r u n   r e p e a t e d l y   t o   t e s t   o u t   t h e   e f f e c t   o f f   d i f f e r e n t   p a r a m e t e r s   b e l o w .   Y o u   c a n   a l s o   o p t i o n a l l y   d e l e t e   t h e   e m p t y   f o l d e r s   t h a t   w e r e   c r e a t e d   f r o m   r u n n i n g   i n   t h i s   m o d e   i f   y o u   w a n t   t o   r e - r u n   t h e   s i m u l a t i o n +  2 3 2 l    4 5 6 4 r     7 8 7 m    ����  8 o      ���� ,0 minutesbeforetimeout minutesBeforeTimeOut 5�� When first running this script against a very large mailbox (one user had 150 000 mails in one folder to archive, for example), it can take the script a long time to build the arrays necessary for calculating the items to be archived. By default AppleScript will timeout quite quickly if it feels an application is taking too long to respond. This timeout value overrides that to allow it handle the long processing times. You can make it longer if you still experience timeouts (CPU dependent).  In extreme large cases an alterntive is to manually drag down mail to your archive and then allow the script to keep the archive up to date from there.    6 � 9 9   W h e n   f i r s t   r u n n i n g   t h i s   s c r i p t   a g a i n s t   a   v e r y   l a r g e   m a i l b o x   ( o n e   u s e r   h a d   1 5 0   0 0 0   m a i l s   i n   o n e   f o l d e r   t o   a r c h i v e ,   f o r   e x a m p l e ) ,   i t   c a n   t a k e   t h e   s c r i p t   a   l o n g   t i m e   t o   b u i l d   t h e   a r r a y s   n e c e s s a r y   f o r   c a l c u l a t i n g   t h e   i t e m s   t o   b e   a r c h i v e d .   B y   d e f a u l t   A p p l e S c r i p t   w i l l   t i m e o u t   q u i t e   q u i c k l y   i f   i t   f e e l s   a n   a p p l i c a t i o n   i s   t a k i n g   t o o   l o n g   t o   r e s p o n d .   T h i s   t i m e o u t   v a l u e   o v e r r i d e s   t h a t   t o   a l l o w   i t   h a n d l e   t h e   l o n g   p r o c e s s i n g   t i m e s .   Y o u   c a n   m a k e   i t   l o n g e r   i f   y o u   s t i l l   e x p e r i e n c e   t i m e o u t s   ( C P U   d e p e n d e n t ) .     I n   e x t r e m e   l a r g e   c a s e s   a n   a l t e r n t i v e   i s   t o   m a n u a l l y   d r a g   d o w n   m a i l   t o   y o u r   a r c h i v e   a n d   t h e n   a l l o w   t h e   s c r i p t   t o   k e e p   t h e   a r c h i v e   u p   t o   d a t e   f r o m   t h e r e . 3  : ; : l    < = > < r     ? @ ? m     A A ?ə����� @ o      ���� "0 processingdelay processingDelay = The number of milliseconds to wait between moving messages on Outlook. On slower machines Outlook can't handle the speed at which the script requests mail to be moved sometimes causing a lock-up. It also makes Outlook more responsive while running in the background.     > � B B   T h e   n u m b e r   o f   m i l l i s e c o n d s   t o   w a i t   b e t w e e n   m o v i n g   m e s s a g e s   o n   O u t l o o k .   O n   s l o w e r   m a c h i n e s   O u t l o o k   c a n ' t   h a n d l e   t h e   s p e e d   a t   w h i c h   t h e   s c r i p t   r e q u e s t s   m a i l   t o   b e   m o v e d   s o m e t i m e s   c a u s i n g   a   l o c k - u p .   I t   a l s o   m a k e s   O u t l o o k   m o r e   r e s p o n s i v e   w h i l e   r u n n i n g   i n   t h e   b a c k g r o u n d .   ;  C D C l    E F G E r     H I H m     J J � K K  D o   N o t   A r c h i v e I o      ���� 40 donotarchivecategoryname doNotArchiveCategoryName F � � If you create an Outlook category that has this exact name (case sensitive) and assign that category to messages or calendar events the archiving process will skip those items indefinitely    G � L Lz   I f   y o u   c r e a t e   a n   O u t l o o k   c a t e g o r y   t h a t   h a s   t h i s   e x a c t   n a m e   ( c a s e   s e n s i t i v e )   a n d   a s s i g n   t h a t   c a t e g o r y   t o   m e s s a g e s   o r   c a l e n d a r   e v e n t s   t h e   a r c h i v i n g   p r o c e s s   w i l l   s k i p   t h o s e   i t e m s   i n d e f i n i t e l y D  M N M l   ��������  ��  ��   N  O P O l   ��������  ��  ��   P  Q R Q l   �� S T��   S   Mail Archive parameters    T � U U 0   M a i l   A r c h i v e   p a r a m e t e r s R  V W V l    X Y Z X r     [ \ [ m    ��
�� boovtrue \ o      ���� $0 archivemailitems archiveMailItems Y 8 2 no mail archiving will take place if set to false    Z � ] ] d   n o   m a i l   a r c h i v i n g   w i l l   t a k e   p l a c e   i f   s e t   t o   f a l s e W  ^ _ ^ l    ` a b ` r     c d c m    ����  d o      ���� .0 daysbeforemailarchive daysBeforeMailArchive a L F number of days to keep mail in your exchange account before archiving    b � e e �   n u m b e r   o f   d a y s   t o   k e e p   m a i l   i n   y o u r   e x c h a n g e   a c c o u n t   b e f o r e   a r c h i v i n g _  f g f l    # h i j h r     # k l k m     ! m m � n n  A r c h i v e d   M a i l l o      ���� @0 localmailarchiverootfoldername localMailArchiveRootFolderName i � � name of the root archive mail folder to create under 'On My Computer'. If an existing archive mail folder is found it will use it, otherwise it will create the folder for you    j � o o^   n a m e   o f   t h e   r o o t   a r c h i v e   m a i l   f o l d e r   t o   c r e a t e   u n d e r   ' O n   M y   C o m p u t e r ' .   I f   a n   e x i s t i n g   a r c h i v e   m a i l   f o l d e r   i s   f o u n d   i t   w i l l   u s e   i t ,   o t h e r w i s e   i t   w i l l   c r e a t e   t h e   f o l d e r   f o r   y o u g  p q p l  $ L r s t r r   $ L u v u J   $ H w w  x y x m   $ % z z � { {  i m m i g r a t i o n y  | } | m   % & ~ ~ �    d a v i d k }  � � � m   & ) � � � � �  d a v i d k - d i r e c t s �  � � � m   ) , � � � � �  b r o w s e - t i c k e t s �  � � � m   , / � � � � � & b r o w s e - s o f t w a r e - o p s �  � � � m   / 2 � � � � �  f o r - s a l e - i - n e e d �  � � � m   2 5 � � � � � , b r o w s e - s o f t w a r e - p a t r o l �  � � � m   5 8 � � � � � B b r o w s e - s o f t w a r e - a w s - s 3 g r a p h c a c h e r �  � � � m   8 ; � � � � �  s e a t t l e - c h a t t e r �  � � � m   ; > � � � � �  D e l e t e d   I t e m s �  � � � m   > A � � � � �  S y n c   I s s u e s �  ��� � m   A D � � � � � ( C o n v e r s a t i o n   H i s t o r y��   v o      ���� 20 excludedmailfolderslist excludedMailFoldersList s d ^ list of mail folders in your exchange account to exclude (sub-folders will also be excluded).    t � � � �   l i s t   o f   m a i l   f o l d e r s   i n   y o u r   e x c h a n g e   a c c o u n t   t o   e x c l u d e   ( s u b - f o l d e r s   w i l l   a l s o   b e   e x c l u d e d ) . q  � � � l  M R � � � � r   M R � � � m   M N��
�� boovfals � o      ���� H0 "processsubfoldersofexcludedfolders "processSubFoldersofExcludedFolders �a[ By setting to true subfolders will be archived even though the parent folder is excluded for all excluded folders in above list (e.g. excluding your inbox but allowing it's sub-folders to be archived). Note that in this mode, folders with the repeated same name in your folder tree hierarchy will be all excluded if included in the excluded list.    � � � ��   B y   s e t t i n g   t o   t r u e   s u b f o l d e r s   w i l l   b e   a r c h i v e d   e v e n   t h o u g h   t h e   p a r e n t   f o l d e r   i s   e x c l u d e d   f o r   a l l   e x c l u d e d   f o l d e r s   i n   a b o v e   l i s t   ( e . g .   e x c l u d i n g   y o u r   i n b o x   b u t   a l l o w i n g   i t ' s   s u b - f o l d e r s   t o   b e   a r c h i v e d ) .   N o t e   t h a t   i n   t h i s   m o d e ,   f o l d e r s   w i t h   t h e   r e p e a t e d   s a m e   n a m e   i n   y o u r   f o l d e r   t r e e   h i e r a r c h y   w i l l   b e   a l l   e x c l u d e d   i f   i n c l u d e d   i n   t h e   e x c l u d e d   l i s t . �  � � � l  S X � � � � r   S X � � � m   S T��
�� boovfals � o      ���� B0 donotarchiveincompletetodoitems doNotArchiveInCompleteTodoItems � � � If set to true then archiving will ignore all items that are marked with a todo flag but are not complete (including items with no due date which are by definition always incomplete)    � � � �n   I f   s e t   t o   t r u e   t h e n   a r c h i v i n g   w i l l   i g n o r e   a l l   i t e m s   t h a t   a r e   m a r k e d   w i t h   a   t o d o   f l a g   b u t   a r e   n o t   c o m p l e t e   ( i n c l u d i n g   i t e m s   w i t h   n o   d u e   d a t e   w h i c h   a r e   b y   d e f i n i t i o n   a l w a y s   i n c o m p l e t e ) �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   � "  Calendar Archive parameters    � � � � 8   C a l e n d a r   A r c h i v e   p a r a m e t e r s �  � � � l  Y ^ � � � � r   Y ^ � � � m   Y Z��
�� boovtrue � o      ���� ,0 archivecalendaritems archiveCalendarItems � < 6 no calendar archiving will take place if set to false    � � � � l   n o   c a l e n d a r   a r c h i v i n g   w i l l   t a k e   p l a c e   i f   s e t   t o   f a l s e �  � � � l  _ f � � � � r   _ f � � � m   _ b � � � � � " A r c h i v e d   C a l e n d a r � o      ���� 40 localarchivecalendarname localArchiveCalendarName � � � name of the archive calendar to create under 'On My Computer'. If an existing calendar is found it will use it, otherwise it will create the calendar for you    � � � �<   n a m e   o f   t h e   a r c h i v e   c a l e n d a r   t o   c r e a t e   u n d e r   ' O n   M y   C o m p u t e r ' .   I f   a n   e x i s t i n g   c a l e n d a r   i s   f o u n d   i t   w i l l   u s e   i t ,   o t h e r w i s e   i t   w i l l   c r e a t e   t h e   c a l e n d a r   f o r   y o u �  � � � l  g n � � � � r   g n � � � m   g j���� � � o      ���� 60 daysbeforecalendararchive daysBeforeCalendarArchive � e _ number of days to keep non-recurring calendar events in your exchange account before archiving    � � � � �   n u m b e r   o f   d a y s   t o   k e e p   n o n - r e c u r r i n g   c a l e n d a r   e v e n t s   i n   y o u r   e x c h a n g e   a c c o u n t   b e f o r e   a r c h i v i n g �  � � � l  o t � � � � r   o t � � � m   o p��
�� boovfals � o      ���� 00 archivereccuringevents archiveReccuringEvents � � � If you wish to also archive recurring events then set this to true. Warning: if a recurring event is moved to the archive it will remove the entire series from your calendar even if those recurrances are present today     � � � ��   I f   y o u   w i s h   t o   a l s o   a r c h i v e   r e c u r r i n g   e v e n t s   t h e n   s e t   t h i s   t o   t r u e .   W a r n i n g :   i f   a   r e c u r r i n g   e v e n t   i s   m o v e d   t o   t h e   a r c h i v e   i t   w i l l   r e m o v e   t h e   e n t i r e   s e r i e s   f r o m   y o u r   c a l e n d a r   e v e n   i f   t h o s e   r e c u r r a n c e s   a r e   p r e s e n t   t o d a y   �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   � � �End Global Settings  (do not modify parameters or code beyond this line unless you know what you are doing) ---------------------------------------------------    � � � �> E n d   G l o b a l   S e t t i n g s     ( d o   n o t   m o d i f y   p a r a m e t e r s   o r   c o d e   b e y o n d   t h i s   l i n e   u n l e s s   y o u   k n o w   w h a t   y o u   a r e   d o i n g )   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  u u��������  ��  ��   �  � � � l  u u��������  ��  ��   �  � � � l  u u��������  ��  ��   �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   � � set exchange account (if none specified then use the first account found if it's not a delegated or other users folder account)    � � � � � s e t   e x c h a n g e   a c c o u n t   ( i f   n o n e   s p e c i f i e d   t h e n   u s e   t h e   f i r s t   a c c o u n t   f o u n d   i f   i t ' s   n o t   a   d e l e g a t e d   o r   o t h e r   u s e r s   f o l d e r   a c c o u n t ) �  � � � Z   u � � ��� � � =  u z � � � o   u v���� 80 exchangeaccountdescription exchangeAccountDescription � m   v y   � $ < e x c h a n g e   a c c o u n t > � k   } �  r   } � n   } � 4   � ���	
�� 
cobj	 m   � �����  2  } ���
�� 
Eact o      ���� "0 exchangeaccount exchangeAccount 

 Z   � ����� >  � � n   � � 1   � ���
�� 
ExTp o   � ����� "0 exchangeaccount exchangeAccount m   � ���
�� eEATePrm R   � �����
�� .ascrerr ****      � **** m   � � � � P l e a s e   s e t   a n   e x c h a n g e   a c c o u n t   w h i c h   i s   n o t   d e l e g a t e d   o r   a n o t h e r   u s e r s   f o l d e r   a c c o u n t��  ��  ��   �� I  � �����
�� .ascrcmnt****      � **** b   � � l  � ����� c   � � b   � � m   � � �  P r o c e s s i n g   n   � � !  1   � ���
�� 
pnam! o   � ����� "0 exchangeaccount exchangeAccount m   � ���
�� 
ctxt��  ��   m   � �"" �## >   -   t h e   p r i m a r y   e x c h a n g e   a c c o u n t��  ��  ��   � k   � �$$ %&% r   � �'(' 4   � ���)
�� 
Eact) o   � ����� 80 exchangeaccountdescription exchangeAccountDescription( o      ���� "0 exchangeaccount exchangeAccount& *��* I  � ���+��
�� .ascrcmnt****      � ****+ b   � �,-, b   � �./. m   � �00 �11  P r o c e s s i n g  / o   � ����� 80 exchangeaccountdescription exchangeAccountDescription- m   � �22 �33 6   -   t h e   s e t   e x c h a n g e   a c c o u n t��  ��   � 454 l  � ���������  ��  ��  5 676 I  � ���8��
�� .ascrcmnt****      � ****8 m   � �99 �:: \ = = = = = = = = = = = = = = = = = = = =   M a i l   = = = = = = = = = = = = = = = = = = = =��  7 ;<; l  � ���������  ��  ��  < =>= l  � ���?@��  ?   Archive Mail if required   @ �AA 2   A r c h i v e   M a i l   i f   r e q u i r e d> BCB Z   �DE����D o   � ����� $0 archivemailitems archiveMailItemsE k   �	FF GHG I  � ���I��
�� .ascrcmnt****      � ****I m   � �JJ �KK . P r o c e s s i n g   m a i l   f o l d e r s��  H LML l  � ���NO��  N + % Run archive process to local folders   O �PP J   R u n   a r c h i v e   p r o c e s s   t o   l o c a l   f o l d e r sM Q��Q n  �	RSR I   �	��T���� 00 archiveexchangefolders archiveExchangeFoldersT UVU n   � �WXW 2  � ���
�� 
cMFoX o   � ����� "0 exchangeaccount exchangeAccountV YZY o   � ����� 20 excludedmailfolderslist excludedMailFoldersListZ [\[ n  �]^] I   ���_���� 20 createmailarchivefolder createMailArchiveFolder_ `a` o   � ����� @0 localmailarchiverootfoldername localMailArchiveRootFolderNamea b��b 1   � ���
�� 
pOMC��  ��  ^  f   � �\ c�c o  �~�~ .0 daysbeforemailarchive daysBeforeMailArchive�  ��  S  f   � ���  ��  ��  C ded l �}�|�{�}  �|  �{  e fgf I �zh�y
�z .ascrcmnt****      � ****h m  ii �jj ^ = = = = = = = = = = = = = = = = = =   C a l e n d a r   = = = = = = = = = = = = = = = = = = =�y  g klk l �x�w�v�x  �w  �v  l mnm l �uop�u  o * $ Archive Calendar Events if required   p �qq H   A r c h i v e   C a l e n d a r   E v e n t s   i f   r e q u i r e dn rsr Z  ctu�t�st o  �r�r ,0 archivecalendaritems archiveCalendarItemsu k  _vv wxw l �qyz�q  y ' ! select default exchange calendar   z �{{ B   s e l e c t   d e f a u l t   e x c h a n g e   c a l e n d a rx |}| r  '~~ n  #��� 1  #�p
�p 
pAMC� o  �o�o "0 exchangeaccount exchangeAccount o      �n�n 20 defaultexchangecalendar defaultExchangeCalendar} ��� I (K�m��l
�m .ascrcmnt****      � ****� b  (G��� b  (;��� l (7��k�j� c  (7��� b  (3��� m  (+�� ���  P r o c e s s i n g  � n  +2��� 1  .2�i
�i 
pnam� o  +.�h�h "0 exchangeaccount exchangeAccount� m  36�g
�g 
ctxt�k  �j  � m  7:�� ��� * ' s   p r i m a r y   c a l e n d a r :  � l ;F��f�e� c  ;F��� n  ;B��� 1  >B�d
�d 
pnam� o  ;>�c�c 20 defaultexchangecalendar defaultExchangeCalendar� m  BE�b
�b 
ctxt�f  �e  �l  � ��� l LL�a�`�_�a  �`  �_  � ��� l LL�^���^  � k e Move all non-recurring events to archive calendar that exceed the period of days from current date		   � ��� �   M o v e   a l l   n o n - r e c u r r i n g   e v e n t s   t o   a r c h i v e   c a l e n d a r   t h a t   e x c e e d   t h e   p e r i o d   o f   d a y s   f r o m   c u r r e n t   d a t e 	 	� ��]� n L_��� I  M_�\��[�\ .0 archivecalendarevents archiveCalendarEvents� ��� o  MP�Z�Z 20 defaultexchangecalendar defaultExchangeCalendar� ��� n PX��� I  QX�Y��X�Y 80 createlocalarchivecalendar createLocalArchiveCalendar� ��W� o  QT�V�V 40 localarchivecalendarname localArchiveCalendarName�W  �X  �  f  PQ� ��U� o  X[�T�T 60 daysbeforecalendararchive daysBeforeCalendarArchive�U  �[  �  f  LM�]  �t  �s  s ��� l dd�S�R�Q�S  �R  �Q  � ��P� I dk�O��N
�O .ascrcmnt****      � ****� m  dg�� ��� 
 D o n e !�N  �P    m     ��                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  ��  ��    ��� l     �M�L�K�M  �L  �K  � ��� l     �J�I�H�J  �I  �H  � ��� l      �G���G  � 7 1================= Mail Archiving ================   � ��� b = = = = = = = = = = = = = = = = =   M a i l   A r c h i v i n g   = = = = = = = = = = = = = = = =� ��� l     �F�E�D�F  �E  �D  � ��� l     �C���C  � [ U Recursively archive the tree of exchange folders (but ignoring the excluded folders)   � ��� �   R e c u r s i v e l y   a r c h i v e   t h e   t r e e   o f   e x c h a n g e   f o l d e r s   ( b u t   i g n o r i n g   t h e   e x c l u d e d   f o l d e r s )� ��� i     ��� I      �B��A�B 00 archiveexchangefolders archiveExchangeFolders� ��� o      �@�@ "0 exchangefolders exchangeFolders� ��� o      �?�? "0 excludedfolders excludedFolders� ��� o      �>�> &0 archiverootfolder archiveRootFolder� ��=� o      �<�< &0 daysbeforearchive daysBeforeArchive�=  �A  � k     ��� ��� l     �;�:�9�;  �:  �9  � ��8� O     ���� k    ��� ��� l   �7�6�5�7  �6  �5  � ��� l   �4���4  � N H Calculate the earliest date of mail that must remain on exchange server   � ��� �   C a l c u l a t e   t h e   e a r l i e s t   d a t e   o f   m a i l   t h a t   m u s t   r e m a i n   o n   e x c h a n g e   s e r v e r� ��� r    ��� l   ��3�2� \    ��� l   	��1�0� I   	�/�.�-
�/ .misccurdldt    ��� null�.  �-  �1  �0  � l  	 ��,�+� ]   	 ��� o   	 
�*�* &0 daysbeforearchive daysBeforeArchive� 1   
 �)
�) 
days�,  �+  �3  �2  � o      �(�( 0 earliestdate earliestDate� ��� I   �'��&
�' .ascrcmnt****      � ****� b    ��� m    �� ���   E a r l i e s t   D a t e   -  � o    �%�% 0 earliestdate earliestDate�&  � ��� l   �$�#�"�$  �#  �"  � ��� l   �!� ��!  �   �  � ��� X    ����� k   ( ��� ��� r   ( /��� c   ( -��� n   ( +� � 1   ) +�
� 
pnam  o   ( )�� 0 
mailfolder 
mailFolder� m   + ,�
� 
ctxt� o      ��  0 mailfoldername mailFolderName�  l  0 0����  �  �    r   0 5 E  0 3 o   0 1�� "0 excludedfolders excludedFolders l  1 2	��	 o   1 2��  0 mailfoldername mailFolderName�  �   o      �� (0 mailfolderexcluded mailFolderExcluded 

 r   6 > n  6 < I   7 <��� 0 hassubfolders hasSubFolders � o   7 8�� 0 
mailfolder 
mailFolder�  �    f   6 7 o      �� "0 subfoldersexist subFoldersExist  r   ? B m   ? @ �   o      �� ,0 currentarchivefolder currentArchiveFolder  l  C C��
�	�  �
  �	    l  C C��   V P Avoid excluded folders unless requested to process their sub-folders regardless    � �   A v o i d   e x c l u d e d   f o l d e r s   u n l e s s   r e q u e s t e d   t o   p r o c e s s   t h e i r   s u b - f o l d e r s   r e g a r d l e s s   Z   C �!"�#! G   C N$%$ H   C E&& o   C D�� (0 mailfolderexcluded mailFolderExcluded% n  H L'(' o   I K�� H0 "processsubfoldersofexcludedfolders "processSubFoldersofExcludedFolders(  f   H I" k   Q �)) *+* l  Q Q����  �  �  + ,-, l  Q Q�./�  . g a Only create the local folder if archiving will occur or sub-folders exist in the excluded folder   / �00 �   O n l y   c r e a t e   t h e   l o c a l   f o l d e r   i f   a r c h i v i n g   w i l l   o c c u r   o r   s u b - f o l d e r s   e x i s t   i n   t h e   e x c l u d e d   f o l d e r- 121 Z   Q i34� ��3 G   Q Y565 o   Q R���� "0 subfoldersexist subFoldersExist6 H   U W77 o   U V���� (0 mailfolderexcluded mailFolderExcluded4 k   \ e88 9:9 l  \ \��;<��  ; H B create the destination folder locally if it doesn't exist already   < �== �   c r e a t e   t h e   d e s t i n a t i o n   f o l d e r   l o c a l l y   i f   i t   d o e s n ' t   e x i s t   a l r e a d y: >��> r   \ e?@? n  \ cABA I   ] c��C���� 20 createmailarchivefolder createMailArchiveFolderC DED o   ] ^����  0 mailfoldername mailFolderNameE F��F o   ^ _���� &0 archiverootfolder archiveRootFolder��  ��  B  f   \ ]@ o      ���� ,0 currentarchivefolder currentArchiveFolder��  �   ��  2 GHG l  j j��������  ��  ��  H IJI Z   j {KL����K H   j lMM o   j k���� (0 mailfolderexcluded mailFolderExcludedL k   o wNN OPO l  o o��QR��  Q %  archive mail in current folder   R �SS >   a r c h i v e   m a i l   i n   c u r r e n t   f o l d e rP T��T n  o wUVU I   p w��W���� 0 archivemail archiveMailW XYX o   p q���� 0 
mailfolder 
mailFolderY Z[Z o   q r���� ,0 currentarchivefolder currentArchiveFolder[ \��\ o   r s���� 0 earliestdate earliestDate��  ��  V  f   o p��  ��  ��  J ]^] l  | |��������  ��  ��  ^ _`_ l  | |��ab��  a   recurse sub-folders   b �cc (   r e c u r s e   s u b - f o l d e r s` d��d Z   | �ef����e o   | }���� "0 subfoldersexist subFoldersExistf k   � �gg hih I  � ���j��
�� .ascrcmnt****      � ****j b   � �klk o   � �����  0 mailfoldername mailFolderNamel m   � �mm �nn     h a s   s u b - f o l d e r s��  i o��o n  � �pqp I   � ���r���� 00 archiveexchangefolders archiveExchangeFoldersr sts n  � �uvu 2  � ���
�� 
cMFov o   � ����� 0 
mailfolder 
mailFoldert wxw o   � ����� "0 excludedfolders excludedFoldersx yzy o   � ����� ,0 currentarchivefolder currentArchiveFolderz {��{ o   � ����� &0 daysbeforearchive daysBeforeArchive��  ��  q  f   � ���  ��  ��  ��  �  # I  � ���|��
�� .ascrcmnt****      � ****| b   � �}~} o   � �����  0 mailfoldername mailFolderName~ m   � � ��� 2   a n d   s u b - f o l d e r s   e x c l u d e d��    ���� l  � ���������  ��  ��  ��  � 0 
mailfolder 
mailFolder� o    ���� "0 exchangefolders exchangeFolders� ���� l  � ���������  ��  ��  ��  � m     ��                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  �8  � ��� l     ��������  ��  ��  � ��� l     ������  � @ : Create Local Mail Archive Folder unless it exists already   � ��� t   C r e a t e   L o c a l   M a i l   A r c h i v e   F o l d e r   u n l e s s   i t   e x i s t s   a l r e a d y� ��� l     ������  � ' ! Returns the created/found folder   � ��� B   R e t u r n s   t h e   c r e a t e d / f o u n d   f o l d e r� ��� i    ��� I      ������� 20 createmailarchivefolder createMailArchiveFolder� ��� o      ����  0 mailfoldername mailFolderName� ���� o      ���� &0 archiverootfolder archiveRootFolder��  ��  � O     N��� k    M�� ��� r    ��� 6  ��� n    ��� 2    ��
�� 
cMFo� o    ���� &0 archiverootfolder archiveRootFolder� =   ��� 1   	 ��
�� 
pnam� o    ����  0 mailfoldername mailFolderName� o      ���� 0 founditemlist foundItemList� ��� r    ��� m    �� ���  � o      ���� ,0 currentarchivefolder currentArchiveFolder� ��� l   ��������  ��  ��  � ��� Z    J������ ?   ��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 founditemlist foundItemList��  ��  ��  � m    ����  � k   ! /�� ��� I  ! (�����
�� .ascrcmnt****      � ****� b   ! $��� m   ! "�� ��� , F o u n d   e x i s t i n g   f o l d e r  � o   " #����  0 mailfoldername mailFolderName��  � ���� r   ) /��� n   ) -��� 4   * -���
�� 
cMFo� o   + ,����  0 mailfoldername mailFolderName� o   ) *���� &0 archiverootfolder archiveRootFolder� o      ���� ,0 currentarchivefolder currentArchiveFolder��  ��  � k   2 J�� ��� I  2 9�����
�� .ascrcmnt****      � ****� b   2 5��� m   2 3�� ���   C r e a t i n g   f o l d e r  � o   3 4����  0 mailfoldername mailFolderName��  � ���� r   : J��� I  : H�����
�� .corecrel****      � null��  � ����
�� 
kocl� n  < ?��� m   = ?��
�� 
cMFo� o   < =���� &0 archiverootfolder archiveRootFolder� �����
�� 
prdt� K   @ D�� �����
�� 
pnam� o   A B����  0 mailfoldername mailFolderName��  ��  � o      ���� ,0 currentarchivefolder currentArchiveFolder��  � ��� l  K K��������  ��  ��  � ���� L   K M�� o   K L���� ,0 currentarchivefolder currentArchiveFolder��  � m     ��                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � c ] Archive mail from exchange folder to Mail Archive folder but only if older than earliestDate   � ��� �   A r c h i v e   m a i l   f r o m   e x c h a n g e   f o l d e r   t o   M a i l   A r c h i v e   f o l d e r   b u t   o n l y   i f   o l d e r   t h a n   e a r l i e s t D a t e� ��� i    ��� I      ������� 0 archivemail archiveMail� ��� o      ���� 0 
mailfolder 
mailFolder� ��� o      ���� ,0 currentarchivefolder currentArchiveFolder� ���� o      ���� 0 earliestdate earliestDate��  ��  � k     ��� ��� O     ���� t    ���� k   
 ��� ��� l  
 
��������  ��  ��  � ��� r   
 ��� n   
 ��� 2   ��
�� 
msg � o   
 ���� 0 
mailfolder 
mailFolder� o      ���� $0 exchangemessages exchangeMessages� ���� Y    ���� �~� k    �  r    $ n    " 4    "�}
�} 
cobj o     !�|�| &0 theincrementvalue theIncrementValue o    �{�{ $0 exchangemessages exchangeMessages o      �z�z 0 
themessage 
theMessage 	
	 l  % %�y�x�w�y  �x  �w  
 �v Z   % ��u A  % * n   % ( 1   & (�t
�t 
tims o   % &�s�s 0 
themessage 
theMessage o   ( )�r�r 0 earliestdate earliestDate k   - �  l  - -�q�p�o�q  �p  �o   �n Z   - ��m n  - 3 I   . 3�l�k�l .0 excludedfromarchiving excludedFromArchiving �j o   . /�i�i 0 
themessage 
theMessage�j  �k    f   - . k   6 I   l  6 6�h!"�h  ! H B Mail has been excluded by assignment to 'Do Not Archive' category   " �## �   M a i l   h a s   b e e n   e x c l u d e d   b y   a s s i g n m e n t   t o   ' D o   N o t   A r c h i v e '   c a t e g o r y  $�g$ I  6 I�f%�e
�f .ascrcmnt****      � ****% b   6 E&'& b   6 ?()( b   6 =*+* m   6 7,, �-- R S k i p p i n g   m a i l   m a r k e d   f o r   n o   a r c h i v i n g   -    + l  7 <.�d�c. c   7 </0/ n   7 :121 1   8 :�b
�b 
subj2 o   7 8�a�a 0 
themessage 
theMessage0 m   : ;�`
�` 
ctxt�d  �c  ) m   = >33 �44    -    ' l  ? D5�_�^5 c   ? D676 n   ? B898 1   @ B�]
�] 
tims9 o   ? @�\�\ 0 
themessage 
theMessage7 m   B C�[
�[ 
ctxt�_  �^  �e  �g  �m   Z   L �:;�Z<: F   L k=>= F   L ]?@? >  L QABA n   L OCDC 1   M O�Y
�Y 
tFlgD o   L M�X�X 0 
themessage 
theMessageB m   O P�W
�W FlagFlNF@ >  T YEFE n   T WGHG 1   U W�V
�V 
tFlgH o   T U�U�U 0 
themessage 
theMessageF m   W X�T
�T FlagFlCo> =  ` gIJI n  ` eKLK o   a e�S�S B0 donotarchiveincompletetodoitems doNotArchiveInCompleteTodoItemsL  f   ` aJ m   e f�R
�R boovtrue; I  n ��QM�P
�Q .ascrcmnt****      � ****M b   n �NON b   n {PQP b   n wRSR m   n qTT �UU d S k i p p i n g   m a i l   m a r k e d   f o r   t o d o   b u t   n o t   c o m p l e t e   -    S l  q vV�O�NV c   q vWXW n   q tYZY 1   r t�M
�M 
subjZ o   q r�L�L 0 
themessage 
theMessageX m   t u�K
�K 
ctxt�O  �N  Q m   w z[[ �\\    -    O l  { �]�J�I] c   { �^_^ n   { ~`a` 1   | ~�H
�H 
timsa o   { |�G�G 0 
themessage 
theMessage_ m   ~ �F
�F 
ctxt�J  �I  �P  �Z  < k   � �bb cdc I  � ��Ee�D
�E .ascrcmnt****      � ****e b   � �fgf b   � �hih b   � �jkj m   � �ll �mm $ A r c h i v i n g   m a i l   -    k l  � �n�C�Bn c   � �opo n   � �qrq 1   � ��A
�A 
subjr o   � ��@�@ 0 
themessage 
theMessagep m   � ��?
�? 
ctxt�C  �B  i m   � �ss �tt    -    g l  � �u�>�=u c   � �vwv n   � �xyx 1   � ��<
�< 
timsy o   � ��;�; 0 
themessage 
theMessagew m   � ��:
�: 
ctxt�>  �=  �D  d z{z Z   � �|}�9�8| H   � �~~ n  � �� o   � ��7�7 *0 runinsimulationmode runInSimulationMode�  f   � �} k   � ��� ��� r   � ���� m   � ��6
�6 FlagFlNF� n      ��� 1   � ��5
�5 
tFlg� o   � ��4�4 0 
themessage 
theMessage� ��3� I  � ��2��
�2 .coremovenull���     obj � o   � ��1�1 0 
themessage 
theMessage� �0��/
�0 
insh� o   � ��.�. ,0 currentarchivefolder currentArchiveFolder�/  �3  �9  �8  { ��-� I  � ��,��+
�, .sysodelanull��� ��� nmbr� n  � ���� o   � ��*�* "0 processingdelay processingDelay�  f   � ��+  �-  �n  �u   k   � ��� ��� I  � ��)��(
�) .ascrcmnt****      � ****� m   � ��� ��� . F o l d e r   a r c h i v e   c o m p l e t e�(  � ��'�  S   � ��'  �v  � &0 theincrementvalue theIncrementValue� m    �&�&   I   �%��$
�% .corecnte****       ****� o    �#�# $0 exchangemessages exchangeMessages�$  �~  ��  � ]    	��� l   ��"�!� n   ��� o    � �  ,0 minutesbeforetimeout minutesBeforeTimeOut�  f    �"  �!  � m    �� <� m     ��                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  � ��� l  � �����  �  �  �  � ��� l     ����  �  �  � ��� l      ����  � ; 5================= Calendar Archiving ================   � ��� j = = = = = = = = = = = = = = = = =   C a l e n d a r   A r c h i v i n g   = = = = = = = = = = = = = = = =� ��� l     ����  �  �  � ��� l     ����  � ' ! Archive all non-recurring events   � ��� B   A r c h i v e   a l l   n o n - r e c u r r i n g   e v e n t s� ��� i    ��� I      ���� .0 archivecalendarevents archiveCalendarEvents� ��� o      �� $0 exchangecalendar exchangeCalendar� ��� o      �� ,0 localarchivecalendar localArchiveCalendar� ��� o      �� 60 daysbeforecalendararchive daysBeforeCalendarArchive�  �  � k     ��� ��� l     ���
�  �  �
  � ��	� O     ���� t    ���� k   
 ��� ��� l  
 
����  �  �  � ��� l  
 
����  �  �  � ��� l  
 
����  � Y S Calculate the earliest date of calendar events that must remain on exchange server   � ��� �   C a l c u l a t e   t h e   e a r l i e s t   d a t e   o f   c a l e n d a r   e v e n t s   t h a t   m u s t   r e m a i n   o n   e x c h a n g e   s e r v e r� ��� r   
 ��� l  
 ��� � \   
 ��� l  
 ������ I  
 ������
�� .misccurdldt    ��� null��  ��  ��  ��  � l   ������ ]    ��� o    ���� 60 daysbeforecalendararchive daysBeforeCalendarArchive� 1    ��
�� 
days��  ��  �  �   � o      ���� 0 earliestdate earliestDate� ��� I   �����
�� .ascrcmnt****      � ****� b    ��� m    �� ���   E a r l i e s t   D a t e   -  � o    ���� 0 earliestdate earliestDate��  � ��� l   ��������  ��  ��  � ���� X    ������ k   0 ��� ��� l  0 0������  � &   repeat starts with oldest event   � ��� @   r e p e a t   s t a r t s   w i t h   o l d e s t   e v e n t� ���� Z   0 ������� A  0 5��� n   0 3��� 1   1 3��
�� 
endT� o   0 1���� 0 calendarevent calendarEvent� o   3 4���� 0 earliestdate earliestDate� Z   8 ������� G   8 Q��� F   8 G��� =  8 =��� n   8 ;��� 1   9 ;��
�� 
pRcr� o   8 9���� 0 calendarevent calendarEvent� m   ; <��
�� boovfals� =  @ E��� n   @ C��� 1   A C��
�� 
pExc� o   @ A���� 0 calendarevent calendarEvent� m   C D��
�� boovfals� =  J O��� n  J M� � o   K M���� 00 archivereccuringevents archiveReccuringEvents   f   J K� m   M N��
�� boovtrue� k   T �  l  T T��������  ��  ��    l  T T��������  ��  ��    Z   T �	��
 n  T Z I   U Z������ .0 excludedfromarchiving excludedFromArchiving �� o   U V���� 0 calendarevent calendarEvent��  ��    f   T U	 k   ] z  l  ] ]����   R L Calendar Event has been excluded by assignment to 'Do Not Archive' category    � �   C a l e n d a r   E v e n t   h a s   b e e n   e x c l u d e d   b y   a s s i g n m e n t   t o   ' D o   N o t   A r c h i v e '   c a t e g o r y �� I  ] z����
�� .ascrcmnt****      � **** c   ] v b   ] r b   ] n l  ] j���� c   ] j b   ] f !  m   ] `"" �## T S k i p p i n g   e v e n t   m a r k e d   w i t h   n o   a r c h i v i n g   -  ! n   ` e$%$ 1   a e��
�� 
subj% o   ` a���� 0 calendarevent calendarEvent m   f i��
�� 
ctxt��  ��   m   j m&& �''    n   n q()( 1   o q��
�� 
endT) o   n o���� 0 calendarevent calendarEvent m   r u��
�� 
ctxt��  ��  ��  
 k   } �** +,+ l  } }��������  ��  ��  , -.- I  } ���/��
�� .ascrcmnt****      � ****/ c   } �010 b   } �232 b   } �454 l  } �6����6 c   } �787 b   } �9:9 m   } �;; �<< $ A r c h i v i n g   e v e n t   -  : n   � �=>= 1   � ���
�� 
subj> o   � ����� 0 calendarevent calendarEvent8 m   � ���
�� 
ctxt��  ��  5 m   � �?? �@@   3 n   � �ABA 1   � ���
�� 
endTB o   � ����� 0 calendarevent calendarEvent1 m   � ���
�� 
ctxt��  . C��C Z   � �DE����D H   � �FF n  � �GHG o   � ����� *0 runinsimulationmode runInSimulationModeH  f   � �E k   � �II JKJ I  � ���LM
�� .coremovenull���     obj L o   � ����� 0 calendarevent calendarEventM ��N��
�� 
inshN o   � ����� ,0 localarchivecalendar localArchiveCalendar��  K O��O I  � ���P��
�� .sysodelanull��� ��� nmbrP n  � �QRQ o   � ����� "0 processingdelay processingDelayR  f   � ���  ��  ��  ��  ��   STS l  � ���������  ��  ��  T U��U l  � ���������  ��  ��  ��  ��  � I  � ���V��
�� .ascrcmnt****      � ****V c   � �WXW b   � �YZY b   � �[\[ l  � �]����] c   � �^_^ b   � �`a` m   � �bb �cc 6 S k i p p i n g   r e c u r r i n g   e v e n t   -  a n   � �ded 1   � ���
�� 
subje o   � ����� 0 calendarevent calendarEvent_ m   � ���
�� 
ctxt��  ��  \ m   � �ff �gg   Z n   � �hih 1   � ���
�� 
endTi o   � ����� 0 calendarevent calendarEventX m   � ���
�� 
ctxt��  ��  �  S   � ���  �� 0 calendarevent calendarEvent� n   ! $jkj 2  " $��
�� 
cEvtk o   ! "���� $0 exchangecalendar exchangeCalendar��  � ]    	lml l   n����n n   opo o    ���� ,0 minutesbeforetimeout minutesBeforeTimeOutp  f    ��  ��  m m    ���� <� m     qq                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  �	  � rsr l     ��������  ��  ��  s tut l     ��vw��  v = 7 Create local Archive Calendar unless it exists already   w �xx n   C r e a t e   l o c a l   A r c h i v e   C a l e n d a r   u n l e s s   i t   e x i s t s   a l r e a d yu yzy l     ��{|��  { ' ! Returns the created/found folder   | �}} B   R e t u r n s   t h e   c r e a t e d / f o u n d   f o l d e rz ~~ i    ��� I      ������� 80 createlocalarchivecalendar createLocalArchiveCalendar� ���� o      ���� 0 calendarname calendarName��  ��  � O     f��� k    e�� ��� l   ��������  ��  ��  � ��� I   �����
�� .ascrcmnt****      � ****� c    ��� b    ��� m    �� ��� 6 N u m b e r   o f   l o c a l   c a l e n d a r s :  � l   ������ I   �����
�� .corecnte****       ****� n    
��� 2   
��
�� 
cCFo� 1    ��
�� 
pOMC��  ��  ��  � m    ��
�� 
ctxt��  � ��� r    ��� m    �� ���  � o      ���� 00 currentarchivecalendar currentArchiveCalendar� ��� r    *��� 6  (��� n    ��� 2    ��
�� 
cCFo� 1    �
� 
pOMC� =    '��� 1   ! #�~
�~ 
pnam� o   $ &�}�} 0 calendarname calendarName� o      �|�| 0 founditemlist foundItemList� ��� Z   + b���{�� ?  + 2��� l  + 0��z�y� I  + 0�x��w
�x .corecnte****       ****� o   + ,�v�v 0 founditemlist foundItemList�w  �z  �y  � m   0 1�u�u  � k   5 E�� ��� I  5 <�t��s
�t .ascrcmnt****      � ****� b   5 8��� m   5 6�� ��� B F o u n d   e x i s t i n g   a r c h i v e   c a l e n d a r :  � o   6 7�r�r 0 calendarname calendarName�s  � ��q� r   = E��� n   = C��� 4   @ C�p�
�p 
cCFo� o   A B�o�o 0 calendarname calendarName� 1   = @�n
�n 
pOMC� o      �m�m 00 currentarchivecalendar currentArchiveCalendar�q  �{  � k   H b�� ��� I  H O�l��k
�l .ascrcmnt****      � ****� b   H K��� m   H I�� ��� . C r e a t i n g   n e w   c a l e n d a r :  � o   I J�j�j 0 calendarname calendarName�k  � ��i� r   P b��� I  P `�h�g�
�h .corecrel****      � null�g  � �f��
�f 
kocl� n  R W��� m   U W�e
�e 
cCFo� 1   R U�d
�d 
pOMC� �c��b
�c 
prdt� K   X \�� �a��`
�a 
pnam� o   Y Z�_�_ 0 calendarname calendarName�`  �b  � o      �^�^ 00 currentarchivecalendar currentArchiveCalendar�i  � ��� l  c c�]�\�[�]  �\  �[  � ��Z� L   c e�� o   c d�Y�Y 00 currentarchivecalendar currentArchiveCalendar�Z  � m     ��                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��   ��� l     �X�W�V�X  �W  �V  � ��� l     �U�T�S�U  �T  �S  � ��� l      �R���R  � Y S=======================================================
	-- Utility helper methods
   � ��� � = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 	 - -   U t i l i t y   h e l p e r   m e t h o d s 
� ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N���N  � q k Checks a categorizable item (e.g. calendar or mail item) for the presence of the 'Do Not Archive' category   � ��� �   C h e c k s   a   c a t e g o r i z a b l e   i t e m   ( e . g .   c a l e n d a r   o r   m a i l   i t e m )   f o r   t h e   p r e s e n c e   o f   t h e   ' D o   N o t   A r c h i v e '   c a t e g o r y� ��� i    ��� I      �M��L�M .0 excludedfromarchiving excludedFromArchiving� ��K� o      �J�J 0 anitem anItem�K  �L  � O     ?��� k    >�� ��� l   �I�H�G�I  �H  �G  � ��� l   �F���F  � F @ Check if item's category list for the 'do not archive' category   � ��� �   C h e c k   i f   i t e m ' s   c a t e g o r y   l i s t   f o r   t h e   ' d o   n o t   a r c h i v e '   c a t e g o r y� ��� l   �E���E  � [ U [Wrote this procedurally due to problems with using 'every syntax' on category list]   � ��� �   [ W r o t e   t h i s   p r o c e d u r a l l y   d u e   t o   p r o b l e m s   w i t h   u s i n g   ' e v e r y   s y n t a x '   o n   c a t e g o r y   l i s t ]� ��� r    	��� n    ��� 2   �D
�D 
cCtg� o    �C�C 0 anitem anItem� o      �B�B 0 catlist catList�    r   
  m   
 �A
�A boovfals o      �@�@ &0 founddonotarchive foundDoNotArchive  Y    9�?�> k    4		 

 r    " n      4     �=
�= 
cobj o    �<�< 0 y Y o    �;�; 0 catlist catList o      �:�: 0 
currentcat 
currentCat �9 Z   # 4�8�7 =  # * n   # & 1   $ &�6
�6 
pnam o   # $�5�5 0 
currentcat 
currentCat n  & ) o   ' )�4�4 40 donotarchivecategoryname doNotArchiveCategoryName  f   & ' r   - 0 m   - .�3
�3 boovtrue o      �2�2 &0 founddonotarchive foundDoNotArchive�8  �7  �9  �? 0 y Y m    �1�1  I   �0�/
�0 .corecnte****       **** o    �.�. 0 catlist catList�/  �>    L   : < o   : ;�-�- &0 founddonotarchive foundDoNotArchive  �,  l  = =�+�*�)�+  �*  �)  �,  � m     !!                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  � "#" l     �(�'�&�(  �'  �&  # $%$ l     �%�$�#�%  �$  �#  % &'& l     �"()�"  ( 9 3 Determines whether a folder has sub-folders or not   ) �** f   D e t e r m i n e s   w h e t h e r   a   f o l d e r   h a s   s u b - f o l d e r s   o r   n o t' +,+ i    -.- I      �!/� �! 0 hassubfolders hasSubFolders/ 0�0 o      �� 0 
mailfolder 
mailFolder�  �   . O     121 Z    34�53 ?   676 l   8��8 I   �9�
� .corecnte****       ****9 n   :;: 2   �
� 
cMFo; o    �� 0 
mailfolder 
mailFolder�  �  �  7 m    ��  4 L    << m    �
� boovtrue�  5 L    == m    �
� boovfals2 m     >>                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  , ?@? l     ����  �  �  @ ABA l     �CD�  C 5 / Determine if passed in folder is a root folder   D �EE ^   D e t e r m i n e   i f   p a s s e d   i n   f o l d e r   i s   a   r o o t   f o l d e rB FGF i    HIH I      �J�� 0 isrootfolder isRootFolderJ K�K o      �� 0 
mailfolder 
mailFolder�  �  I O     LML k    NN OPO Z    QR�SQ =   TUT l   	V�
�	V n    	WXW 1    	�
� 
pnamX n    YZY 1    �
� 
ctnrZ o    �� 0 
mailfolder 
mailFolder�
  �	  U m   	 
�
� 
msngR L    [[ m    �
� boovtrue�  S L    \\ m    �
� boovfalsP ]�] l   �� ���  �   ��  �  M m     ^^                                                                                  OPIM  alis    �  Macintosh HD               ΘPH+   4�Microsoft Outlook.app                                           ��̼�         ����  	                Microsoft Office 2011     Θx�      ̽"�     4�   Q  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  G _`_ l     ��������  ��  ��  ` a��a l     ��������  ��  ��  ��       ��bcdefghijk��  b 	�������������������� 00 archiveexchangefolders archiveExchangeFolders�� 20 createmailarchivefolder createMailArchiveFolder�� 0 archivemail archiveMail�� .0 archivecalendarevents archiveCalendarEvents�� 80 createlocalarchivecalendar createLocalArchiveCalendar�� .0 excludedfromarchiving excludedFromArchiving�� 0 hassubfolders hasSubFolders�� 0 isrootfolder isRootFolder
�� .aevtoappnull  �   � ****c �������lm���� 00 archiveexchangefolders archiveExchangeFolders�� ��n�� n  ���������� "0 exchangefolders exchangeFolders�� "0 excludedfolders excludedFolders�� &0 archiverootfolder archiveRootFolder�� &0 daysbeforearchive daysBeforeArchive��  l 
���������������������� "0 exchangefolders exchangeFolders�� "0 excludedfolders excludedFolders�� &0 archiverootfolder archiveRootFolder�� &0 daysbeforearchive daysBeforeArchive�� 0 earliestdate earliestDate�� 0 
mailfolder 
mailFolder��  0 mailfoldername mailFolderName�� (0 mailfolderexcluded mailFolderExcluded�� "0 subfoldersexist subFoldersExist�� ,0 currentarchivefolder currentArchiveFolderm ����������������������������m������
�� .misccurdldt    ��� null
�� 
days
�� .ascrcmnt****      � ****
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
ctxt�� 0 hassubfolders hasSubFolders�� H0 "processsubfoldersofexcludedfolders "processSubFoldersofExcludedFolders
�� 
bool�� 20 createmailarchivefolder createMailArchiveFolder�� 0 archivemail archiveMail
�� 
cMFo�� �� 00 archiveexchangefolders archiveExchangeFolders�� �� �*j �� E�O�%j O ��[��l kh ��,�&E�O��E�O)�k+ 
E�O�E�O�
 )�,E�& Q�
 ��& )��l+ E�Y hO� )���m+ Y hO� �a %j O)�a -���a + Y hY �a %j OP[OY�wOPUd �������op���� 20 createmailarchivefolder createMailArchiveFolder�� ��q�� q  ������  0 mailfoldername mailFolderName�� &0 archiverootfolder archiveRootFolder��  o ����������  0 mailfoldername mailFolderName�� &0 archiverootfolder archiveRootFolder�� 0 founditemlist foundItemList�� ,0 currentarchivefolder currentArchiveFolderp ���r�����������������
�� 
cMFor  
�� 
pnam
�� .corecnte****       ****
�� .ascrcmnt****      � ****
�� 
kocl
�� 
prdt�� 
�� .corecrel****      � null�� O� K��-�[�,\Z�81E�O�E�O�j j �%j O��/E�Y �%j O*��,��l� E�O�Ue �������st���� 0 archivemail archiveMail�� ��u�� u  �������� 0 
mailfolder 
mailFolder�� ,0 currentarchivefolder currentArchiveFolder�� 0 earliestdate earliestDate��  s �������������� 0 
mailfolder 
mailFolder�� ,0 currentarchivefolder currentArchiveFolder�� 0 earliestdate earliestDate�� $0 exchangemessages exchangeMessages�� &0 theincrementvalue theIncrementValue�� 0 
themessage 
theMessaget ���������������,����3������������T[ls������������� ,0 minutesbeforetimeout minutesBeforeTimeOut�� <
�� 
msg 
�� .corecnte****       ****
�� 
cobj
�� 
tims�� .0 excludedfromarchiving excludedFromArchiving
�� 
subj
�� 
ctxt
�� .ascrcmnt****      � ****
�� 
tFlg
�� FlagFlNF
�� FlagFlCo
�� 
bool�� B0 donotarchiveincompletetodoitems doNotArchiveInCompleteTodoItems�� *0 runinsimulationmode runInSimulationMode
�� 
insh
�� .coremovenull���     obj �� "0 processingdelay processingDelay
�� .sysodelanull��� ��� nmbr�� �� �)�,� n��-E�O �k�j kh ��/E�O��,� �)�k+  ��,�&%�%��,�&%j Y |��,�	 ��,�a &	 )a ,e a & a ��,�&%a %��,�&%j Y @a ��,�&%a %��,�&%j O)a , ��,FO�a �l Y hO)a ,j Y a j O[OY�FoUOPf �������vw���� .0 archivecalendarevents archiveCalendarEvents�� ��x�� x  �������� $0 exchangecalendar exchangeCalendar�� ,0 localarchivecalendar localArchiveCalendar�� 60 daysbeforecalendararchive daysBeforeCalendarArchive��  v ������������ $0 exchangecalendar exchangeCalendar�� ,0 localarchivecalendar localArchiveCalendar�� 60 daysbeforecalendararchive daysBeforeCalendarArchive�� 0 earliestdate earliestDate�� 0 calendarevent calendarEventw q���������������������~�}�|�{�z"�y�x&;?�w�v�u�t�sbf�� ,0 minutesbeforetimeout minutesBeforeTimeOut�� <
�� .misccurdldt    ��� null
�� 
days
�� .ascrcmnt****      � ****
�� 
cEvt
�� 
kocl
�� 
cobj
�� .corecnte****       ****
� 
endT
�~ 
pRcr
�} 
pExc
�| 
bool�{ 00 archivereccuringevents archiveReccuringEvents�z .0 excludedfromarchiving excludedFromArchiving
�y 
subj
�x 
ctxt�w *0 runinsimulationmode runInSimulationMode
�v 
insh
�u .coremovenull���     obj �t "0 processingdelay processingDelay
�s .sysodelanull��� ��� nmbr�� �� �)�,� n*j �� E�O�%j O Ǡ�-[��l 
kh ��,� ���,f 	 	��,f �&
 	)�,e �& n)�k+  "a �a ,%a &a %��,%a &j Y @a �a ,%a &a %��,%a &j O)a , �a �l O)a ,j Y hOPY a �a ,%a &a %��,%a &j Y [OY�IoUg �r��q�pyz�o�r 80 createlocalarchivecalendar createLocalArchiveCalendar�q �n{�n {  �m�m 0 calendarname calendarName�p  y �l�k�j�l 0 calendarname calendarName�k 00 currentarchivecalendar currentArchiveCalendar�j 0 founditemlist foundItemListz ���i�h�g�f�e�r�d���c�b�a�`
�i 
pOMC
�h 
cCFo
�g .corecnte****       ****
�f 
ctxt
�e .ascrcmnt****      � ****
�d 
pnam
�c 
kocl
�b 
prdt�a 
�` .corecrel****      � null�o g� c�*�,�-j %�&j O�E�O*�,�-�[�,\Z�81E�O�j j �%j O*�,�/E�Y �%j O*�*�,�,��l� E�O�Uh �_��^�]|}�\�_ .0 excludedfromarchiving excludedFromArchiving�^ �[~�[ ~  �Z�Z 0 anitem anItem�]  | �Y�X�W�V�U�Y 0 anitem anItem�X 0 catlist catList�W &0 founddonotarchive foundDoNotArchive�V 0 y Y�U 0 
currentcat 
currentCat} !�T�S�R�Q�P
�T 
cCtg
�S .corecnte****       ****
�R 
cobj
�Q 
pnam�P 40 donotarchivecategoryname doNotArchiveCategoryName�\ @� <��-E�OfE�O *k�j kh ��/E�O��,)�,  eE�Y h[OY��O�OPUi �O.�N�M��L�O 0 hassubfolders hasSubFolders�N �K��K �  �J�J 0 
mailfolder 
mailFolder�M   �I�I 0 
mailfolder 
mailFolder� >�H�G
�H 
cMFo
�G .corecnte****       ****�L � ��-j j eY fUj �FI�E�D���C�F 0 isrootfolder isRootFolder�E �B��B �  �A�A 0 
mailfolder 
mailFolder�D  � �@�@ 0 
mailfolder 
mailFolder� ^�?�>�=
�? 
ctnr
�> 
pnam
�= 
msng�C � ��,�,�  eY fOPUk �<��;�:���9
�< .aevtoappnull  �   � ****� k    l��  �8�8  �;  �:  �  � A� '�7�6�5 A�4 J�3�2�1�0 m�/ z ~ � � � � � � � � � ��.�-�,�+�* ��)�(�'�& �%�$�#�"�!� �"�029J�����i��������7 80 exchangeaccountdescription exchangeAccountDescription�6 *0 runinsimulationmode runInSimulationMode�5 ,0 minutesbeforetimeout minutesBeforeTimeOut�4 "0 processingdelay processingDelay�3 40 donotarchivecategoryname doNotArchiveCategoryName�2 $0 archivemailitems archiveMailItems�1 �0 .0 daysbeforemailarchive daysBeforeMailArchive�/ @0 localmailarchiverootfoldername localMailArchiveRootFolderName�. �- 20 excludedmailfolderslist excludedMailFoldersList�, H0 "processsubfoldersofexcludedfolders "processSubFoldersofExcludedFolders�+ B0 donotarchiveincompletetodoitems doNotArchiveInCompleteTodoItems�* ,0 archivecalendaritems archiveCalendarItems�) 40 localarchivecalendarname localArchiveCalendarName�( ��' 60 daysbeforecalendararchive daysBeforeCalendarArchive�& 00 archivereccuringevents archiveReccuringEvents
�% 
Eact
�$ 
cobj�# "0 exchangeaccount exchangeAccount
�" 
ExTp
�! eEATePrm
�  
pnam
� 
ctxt
� .ascrcmnt****      � ****
� 
cMFo
� 
pOMC� 20 createmailarchivefolder createMailArchiveFolder� � 00 archiveexchangefolders archiveExchangeFolders
� 
pAMC� 20 defaultexchangecalendar defaultExchangeCalendar� 80 createlocalarchivecalendar createLocalArchiveCalendar� .0 archivecalendarevents archiveCalendarEvents�9m�i�E�OfE�OlE�O�E�O�E�OeE�O�E�O�E�O��a a a a a a a a a a a vE` OfE` OfE` OeE` Oa E`  Oa !E` "OfE` #O�a $  D*a %-a &k/E` 'O_ 'a (,a ) )ja *Y hOa +_ 'a ,,%a -&a .%j /Y *a %�/E` 'Oa 0�%a 1%j /Oa 2j /O� *a 3j /O)_ 'a 4-_ )�*a 5,l+ 6�a 7+ 8Y hOa 9j /O_  H_ 'a :,E` ;Oa <_ 'a ,,%a -&a =%_ ;a ,,a -&%j /O)_ ;)_  k+ >_ "m+ ?Y hOa @j /Uascr  ��ޭ