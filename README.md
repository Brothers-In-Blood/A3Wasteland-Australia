A3Wasteland Chernarus by Motavar
====================

VIDEO GAME: Arma 3<br>
MISSION: A3Wasteland Chernarus<br>
GAME TYPE: Survival / Conquest warfare<br>
<br>
AUTHOR: Motavar<br>
EMAIL: Motavar@judgement.net<br>
<br>
LAUNCHER/PATCHER:<br>
Available @ www.TAC-X.com<br>
If you use the launcher/patcher I ask that you help seed the torrents.<br>
<br>
Server Admins or Windows 2008 R2 Users Please Note: 
If you receive an error that you could not load Ragnar.dll you are required to install Visual Studio 2013 C++ Redistributable (32 bit). You will need to load the 32-bit files onto your x64 bit OS. The 64bit files do not contain the 32bit files required by the application when running in WOW mode.<br>
<br>
<b>WINDOWS INSTALLATION:</b><br>
<br>
YOU WILL NEED THE FOLLOWING TO RUN:<br>
- User the TAP patcher to grab the following mods:<br>
RHS v3.7, HLC mods from 4/2015, ASDG_JR (joint rails from 4/15), All in Arma Terrain Pack 1.1.2015 w/patch<br>
- DATABSE: MySQL community server v5.6 (Install MySql workbench during the install process)<br>
- Torndeco's extDB2 (release v55+): https://github.com/Torndeco/extDB2/releases<br>
<br>
<b>DATABASE SETUP:</b><br>
install mysql<br>
copy "a3wasteland_db_v2.03.sql" to your mysql bin directory (where your mysql.exe is located)<br>
example: C:\Program Files (x86)\MySQL\MySQL Server 5.6\bin<br>
login to mysql<br>
<br>
example:<br>
>><br>
C:\>cd "Program Files (x86)<br>
C:\Program Files (x86)>cd MySQL<br>
C:\Program Files (x86)\MySQL>cd MySQL Server 5.6<br>
C:\Program Files (x86)\MySQL\MySQL Server 5.6>cd bin<br>
C:\Program Files (x86)\MySQL\MySQL Server 5.6\bin>mysql -u root -p<br>
Enter password: your database password<br>
<br>
Create the database:<br>
mysql> source a3wasteland_db_v2.03.sql<br>
exit out<br>
<<<br>
<br>
<br>
<b>A3WASTELAND SETTINGS SETUP:</b><br>
Copy the "A3Wasteland_settings" directory to the Arma directory (where you have your arma3.exe)<br>
This contains the mission settings stored in the "main_config.sqf"<br>
<br>
<br>
<b>INSTALL extDB2</b><br>
open extDB2-v55.rar file, go into the windows folder and extract the files to the Arma3 directory (where you have your arma3.exe)<br>
Switch over to your Arma 3 directory<br>
Go into the @extDB2 directory and edit extdb-config.ini file<br>
configure your passwords <br>
<br>
Change the following:<br>
Version = 3<br>
to<br>
Version = 4<br>
<br>
find the following<br>
>><br>
[MySQL_Example]<br>
Type = MySQL<br>
Name = Database_Name<br>
<br>
Username = root<br>
Password = password<br>
<<<br>
Change to:<br>
[A3W]<br>
Type = MySQL<br>
Name = a3wasteland<br>
Username = root<br>
Password = whatever your pw is for db<br>
<br>
save the file and exit<br>
<br>
<br>
<b>SQL CUSTOM FOLDER SETUP:</b><br>
Copy the "sql_custom" directory to your Arma 3 @extDB2/extDB/ folder. Overwrite the folder that is in there<br>
<br>
<br>
<br>SERVER EXE SETUP:</b><br>
<br>
Your Server Mod Startup Order:<br>
-mod=@RHSAFRF;@RHSUSAF;@ASDG_JR;@hlcmods;@AllInArmaTerrainPack<br>
<br>
EXAMPLE SERVER STARTUP:<br>
"C:\Program Files (x86)\Steam\SteamApps\common\Arma 3\arma3server.exe" "-profiles=c:\Arma3\A3Master" -config=server.cfg -world=empty -mod=@RHSAFRF;@RHSUSAF;@ASDG_JR;@hlcmods;@AllInArmaTerrainPack;@extDB2 -autoInit
<br>
<br>
A3Wasteland Settings Directory (changes for player HUD):
In your A3wasteland settings directory add the following to your main_config.sqf<br>
// Server Naming<br>
A3W_serverName = "Your Server Name";	//Name of your server for Player HUD<br>
A3W_serverIP = "127.0.0.1";		       //IP address of your server for Player HUD<br>
A3W_serverWWW = "www.your_web_site.com";	//Server HTTP address<br>
<br>
<br>
*SERVER ADMINS - WARNING NOTE:<br>
A3Wasteland Chernarus does not support "Samatra Wasteland Chernarus" versions of RHS/HLC/AIA/JR mods as they are not signed by the original authors.<br>
Take warning if you are using their files for the mission type, your server is subject to compromise using unsigned files. 
<br>
<br>
SERVER ADMINS - COMMUNITY MODS USED:<br>
A3Wasteland Chernarus supports the following "original" community mods below.<br>
To help the community we created a BitTorrent patcher/launcher to help distribute the original signed author files for clients/servers. <br>
<br>
----------------------------------------------------------------------------------------------<br>
Half Life Creations: HLC Weapons:<br>
Small Arms Packs by Toadie2k<br>
----------------------------------------------------------------------------------------------<br>
HLC Core: v.087 2015-03-06 15:43<br>
HLC AK Pack: v1.71 2015-04-13 20:52<br>
HLC FAL Pack: v1.5 2015-04-13 20:49<br>
HLC M14: v1.6 2015-04-13 20:57<br>
HLC M60E4/M60: v8.0 2015-04-13 20:54<br>
HLC G3: v1.55 2015-03-06 15:55<br>
HLC MP5: v1.3 2015-04-13 21:03<br>
HLC AUGs: v1.2 2015-04-13 20:59<br>
HLC AR15: v1.5 2015-04-13 20:45<br>
<br>
----------------------------------------------------------------------------------------------<br>
AiA TP: <br>
All in Arma Terrain Pack: 2015-01-01 Hotfix<br>
----------------------------------------------------------------------------------------------<br>
<br>
----------------------------------------------------------------------------------------------<br>
ASDG Joint Rails by Robalo_AS: v.015 2015-04-09 08:47<br>
----------------------------------------------------------------------------------------------<br>
<br>
----------------------------------------------------------------------------------------------<br>
Red Hammer Studios: RHS Pack v0.3.7<br>
RHS: Armed Forces of the Russian Federation<br>
RHS: United States Armed Forces <br>
LINK: http://www.rhsmods.org/<br>
----------------------------------------------------------------------------------------------<br>
<br>
<br>
CREDITS: <br>
<br>
Core by A3Wasteland.com<br>
Code Modified by TOPARMA.COM<br>
Chernarus port by TAC-X.com<br>
Help and suggestions from many members of the open Arma community.<br>
<br>
<br>