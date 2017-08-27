@echo off
setlocal ENABLEDELAYEDEXPANSION
set logg=^> _^&^& type _^&^&type _^>^>%~dp0\SystemSpecs.txt
title PC Specs
set LogoLine1=                        ::::::::   :::::::::   ::::::::::  ::::::::    :::::::: 
set LogoLine2=                      :+:    :+:  :+:    :+:  :+:        :+:    :+:  :+:    :+: 
set LogoLine3=                     +:+         +:+    +:+  +:+        +:+         +:+         
set LogoLine4=                    +#++:++#++  +#++:++#+   +#++:++#   +#+         +#++:++#++   
set LogoLine5=                          +#+  +#+         +#+        +#+                +#+    
set LogoLine6=                  #+#    #+#  #+#         #+#        #+#    #+#  #+#    #+#     
set LogoLine7=                  ########   ###         ##########  ########    ########       
set LogoLine8=                                   Coded By: MSFTserver
::Rem Computer Inviroment Info
:SystemEnvironment
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Loading Bios Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic BIOS Get Name /value') do SET biosname=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BIOS Get Manufacturer /value') do SET biosmanufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BIOS Get Version /value') do SET biosversion=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic Bios Get SerialNumber /value') do SET biosserialnumber=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic Bios Get ReleaseDate /value') do SET biosdt=%%A
ping localhost -n 3 >nul
cls 
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Loading Memory Bank 0 Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 0%%'" get banklabel /value') do (
SET ramb0label=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 0%%'" get Manufacturer /value') do SET ramb0manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 0%%'" get speed /value') do SET ramb0speed=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 0%%'" get serialnumber /value') do SET ramb0serialnumber=%%A
)
echo Loading Memory Bank 1 Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 1%%'" get banklabel /value') do (
SET ramb1label=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 1%%'" get Manufacturer /value') do SET ramb1manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 1%%'" get speed /value') do SET ramb1speed=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 1%%'" get serialnumber /value') do SET ramb1serialnumber=%%A
)
echo Loading Memory Bank 2 Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 2%%'" get banklabel /value') do (
SET ramb2label=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 2%%'" get Manufacturer /value') do SET ramb2manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 2%%'" get speed /value') do SET ramb2speed=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 2%%'" get serialnumber /value') do SET ramb2serialnumber=%%A
)
echo Loading Memory Bank 3 Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 3%%'" get banklabel /value') do (
SET ramb3label=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 3%%'" get Manufacturer /value') do SET ramb3manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 3%%'" get speed /value') do SET ramb3speed=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic memorychip WHERE "banklabel like 'BANK 3%%'" get serialnumber /value') do SET ramb3serialnumber=%%A
)
ping localhost -n 3 >nul
cls 
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Loading System Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Manufacturer /value') do SET csmanufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Model /value') do SET csmodel=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get loadpercentage /value') do SET cpuload=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic cpu Get NumberOfCores /value') do SET cpuphysicalcores=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os get Name /value') do SET osname=%%A
FOR /F "tokens=1 delims='|'" %%A in ("%osname%") do SET osname=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os Get Version /value') do SET osversion=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os Get NumberOfProcesses /value') do SET cpuprocesses=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os Get BuildNumber /value') do SET osbuildnumber=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os Get BuildType /value') do SET osbuildtype=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os Get SystemDrive /value') do SET osdrive=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os get OSArchitecture /value') do SET osarch=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os get InstallDate /value') do SET osdt=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os get LastBootUpTime /value') do SET bootdt=%%A
ping localhost -n 3 >nul
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Loading Video Card Data ...
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get name /value') do SET videocard=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get VideoProcessor /value') do SET videocardprocessor=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get CurrentRefreshRate /value') do SET videocardrefreshrate=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get DriverVersion /value') do SET videocarddriverversion=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get InstallDate /value') do SET videocardinstalldt=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get DriverDate /value') do SET videocarddt=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get VideoMemoryType /value') do SET videocardramtype=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get CurrentVerticalResolution /value') do SET videocardresolution1=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get CurrentHorizontalResolution /value') do SET videocardresolution2=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic path win32_VideoController get AdapterRAM /value') do SET videocardram=%%A
ping localhost -n 3 >nul
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Loading Drive Data ...
ping localhost -n 3 >nul
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
FOR /F "tokens=4" %%a in ('systeminfo ^| findstr Physical') do if defined totalMem (set availableMem=%%a) else (set totalMem=%%a)
FOR /f "skip=1 tokens=2 delims==" %%A in ('wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature /value') do SET /a "HunDegCel=(%%~A*10)-27315"
set totalMem=%totalMem:,=%
set availableMem=%availableMem:,=%
set /a usedMem=totalMem-availableMem
set /a videocardtotalram=videocardram/1073741824
set cputempc=%HunDegCel:~0,-2%.%HunDegCel:~-2%
set /a cputempf=cputempc*9/5+32
set "videocardinstallYY=%videocardinstalldt:~2,2%" & set "videocardinstallYYYY=%videocardinstalldt:~0,4%" & set "videocardinstallMM=%videocardinstalldt:~4,2%" & set "videocardinstallDD=%videocardinstalldt:~6,2%"
set "videocardinstallHH=%videocardinstalldt:~8,2%" & set "videocardinstallMin=%videocardinstalldt:~10,2%" & set "videocardinstallSec=%videocardinstalldt:~12,2%"
set "videocardinstalldate=%videocardinstallMM%/%videocardinstallDD%/%videocardinstallYYYY%_%videocardinstallHH%:%videocardinstallMin%:%videocardinstallSec%"
set "videocarddriverYY=%videocarddt:~2,2%" & set "videocarddriverYYYY=%videocarddt:~0,4%" & set "videocarddriverMM=%videocarddt:~4,2%" & set "videocarddriverDD=%videocarddt:~6,2%"
set "videocarddriverHH=%videocarddt:~8,2%" & set "videocarddriverMin=%videocarddt:~10,2%" & set "videocarddriverSec=%videocarddt:~12,2%"
set "videocarddriverdate=%videocarddriverMM%/%videocarddriverDD%/%videocarddriverYYYY%_%videocarddriverHH%:%videocarddriverMin%:%videocarddriverSec%"
set "osYY=%osdt:~2,2%" & set "osYYYY=%osdt:~0,4%" & set "osMM=%osdt:~4,2%" & set "osDD=%osdt:~6,2%"
set "osHH=%osdt:~8,2%" & set "osMin=%osdt:~10,2%" & set "osSec=%osdt:~12,2%"
set "osinstalldate=%osMM%/%osDD%/%osYYYY%_%osHH%:%osMin%:%osSec%"
set "bootYY=%bootdt:~2,2%" & set "bootYYYY=%bootdt:~0,4%" & set "bootMM=%bootdt:~4,2%" & set "bootDD=%bootdt:~6,2%"
set "bootHH=%bootdt:~8,2%" & set "bootMin=%bootdt:~10,2%" & set "bootSec=%bootdt:~12,2%"
set "osboottime=%bootMM%/%bootDD%/%bootYYYY%_%bootHH%:%bootMin%:%bootSec%"
set "biosYY=%biosdt:~2,2%" & set "biosYYYY=%biosdt:~0,4%" & set "biosMM=%biosdt:~4,2%" & set "biosDD=%biosdt:~6,2%"
set "biosHH=%biosdt:~8,2%" & set "biosMin=%biosdt:~10,2%" & set "biosSec=%biosdt:~12,2%"
set "biosreleasedate=%biosMM%/%biosDD%/%biosYYYY%_%biosHH%:%biosMin%:%biosSec%"
if %videocardramtype%==1 set videocardramtype=Other
if %videocardramtype%==2 set videocardramtype=Unkown
if %videocardramtype%==3 set videocardramtype=VRAM
if %videocardramtype%==4 set videocardramtype=DRAM
if %videocardramtype%==5 set videocardramtype=SRAM
if %videocardramtype%==6 set videocardramtype=WRAM
if %videocardramtype%==7 set videocardramtype=EDO RAM
if %videocardramtype%==8 set videocardramtype=Burst Synchronous DRAM
if %videocardramtype%==9 set videocardramtype=Pipelined Burst SRAM
if %videocardramtype%==10 set videocardramtype=CDRAM
if %videocardramtype%==11 set videocardramtype=3DRAM
if %videocardramtype%==12 set videocardramtype=SDRAM
if %videocardramtype%==13 set videocardramtype=SGRAM
if %videocardinstalldate%==//_:: set videocardinstalldate=Null
set "DRIVELETTERSFREE=Z Y X W V U T S R Q P O N M L K J I H G F E D C B A "
for /f "skip=1 tokens=1,2 delims=: " %%a in ('wmic logicaldisk get deviceid^') do (
   set "DRIVELETTERSUSED=!DRIVELETTERSUSED!"%%a:\", %%b"
   set "DRIVELETTERSFREE=!DRIVELETTERSFREE:%%a =!"
)
set DRIVELETTERSUSED=%DRIVELETTERSUSED:~0,-2%
set DRIVELETTERSUSED=%DRIVELETTERSUSED:,@=, %
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo Organizing List ...
ping localhost -n 3 >nul
cls
echo %Logoline1%
echo %Logoline2%
echo %Logoline3%
echo %Logoline4%
echo %Logoline5%
echo %Logoline6%
echo %Logoline7%
echo %Logoline8%
echo . %logg%
echo                   System Info %logg%
echo                       Model: %csmodel% %logg%
echo                       Manufacturer: %csmanufacturer% %logg%
echo . %logg%
echo                       Video Card Name: %videocard% %logg%
echo                       Video Card Processor: %videocardprocessor% %logg%
echo                       Video Card Install Date: %videocardinstalldate% %logg%
echo                       Video Card Driver Version: %videocarddriverversion% %logg%
echo                       Video Card Driver Installed: %videocarddriverdate% %logg%
echo                       Video Card Ram Type: %videocardramtype% %logg%
echo                       Video Card Ram: %videocardtotalram% GB %logg%
echo                       Video Card Refresh Rate: %videocardrefreshrate% FPS %logg%
echo                       Video Card Resolution: %videocardresolution2% x %videocardresolution1% %logg%
echo . %logg%
echo                       Bios Manufacturer: %biosmanufacturer% %logg%
echo                       Bios Name: %biosname% %logg%
echo                       Bios Version: %biosversion% %logg%
echo                       Serial Number: %biosserialnumber% %logg%
echo                       Bios Release Date: %biosreleasedate% %logg%
echo . %logg%
echo                       PC Name: %COMPUTERNAME% %logg%
echo                       OS Name: %osname% %logg%
echo                       OS Build Type: %osbuildtype% %logg%
echo                       OS Build Number: %osbuildnumber% %logg%
echo                       OS Version: %osversion% %logg%
echo                       OS Architecture: %osarch% %logg%
echo                       OS Installation Date: %osinstalldate% %logg%
echo                       OS Last Boot-up Time: %osboottime% %logg%
echo                       OS Directory: "%osdrive%\" %logg%
echo . %logg%
echo                       CPU Type: %PROCESSOR_IDENTIFIER% %logg%
echo                       CPU Revision: %PROCESSOR_REVISION% %logg%
echo                       CPU Logical Cores: %NUMBER_OF_PROCESSORS% %logg%
echo                       CPU Physical Cores: %cpuphysicalcores% %logg%
echo                       CPU Model Number: %PROCESSOR_LEVEL% %logg%
echo                       CPU Architecture: %PROCESSOR_ARCHITECTURE% %logg%
echo                       CPU Processes: %cpuprocesses% %logg%
echo                       CPU Load: %cpuload%%% %logg%
echo                       CPU Temp C: %cputempc:~0,-3% %logg%
echo                       CPU Temp F: %cputempf% %logg%
echo . %logg%
if defined ramb0label (
echo                       Memory BANK 0 %logg%
echo                           Manufacturer: %ramb0manufacturer% %logg%
echo                           Serial Number: %ramb0serialnumber% %logg%
echo                           Speed: %ramb0speed% %logg%
)
if defined ramb1label (
echo                       Memory BANK 1 %logg%
echo                           Manufacturer: %ramb1manufacturer% %logg%
echo                           Serial Number: %ramb1serialnumber% %logg%
echo                           Speed: %ramb1speed% %logg%
)
if defined ramb2label (
echo                       Memory BANK 2 %logg%
echo                           Manufacturer: %ramb2manufacturer% %logg%
echo                           Serial Number: %ramb2serialnumber% %logg%
echo                           Speed: %ramb2speed% %logg%
)
if defined ramb3label (
echo                       Memory BANK 3 %logg%
echo                           Manufacturer: %ramb3manufacturer% %logg%
echo                           Serial Number: %ramb3serialnumber% %logg%
echo                           Speed: %ramb3speed% %logg%
)
echo                       Memory Total: %totalMem% MB %logg%
echo                       Memory  Used: %usedMem% MB %logg%
echo                       Memory  Free: %availableMem% MB %logg%
echo . %logg%
IF EXIST A:\ (
set drivea="A:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree A:\') DO (
    SET "adiskfree=!adisktotal!"
    SET "adisktotal=!adiskavail!"
    SET "adiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%adisktotal% %adiskavail%") DO SET "adisktotal=%%i"& SET "adiskavail=%%j"
)
IF EXIST B:\ (
set driveb="B:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree B:\') DO (
    SET "bdiskfree=!bdisktotal!"
    SET "bdisktotal=!bdiskavail!"
    SET "bdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%bdisktotal% %bdiskavail%") DO SET "bdisktotal=%%i"& SET "bdiskavail=%%j"
)
IF EXIST C:\ (
set drivec="C:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree C:\') DO (
    SET "cdiskfree=!cdisktotal!"
    SET "cdisktotal=!cdiskavail!"
    SET "cdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%cdisktotal% %cdiskavail%") DO SET "cdisktotal=%%i"& SET "cdiskavail=%%j"
)
IF EXIST D:\ (
set drived="D:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree D:\') DO (
    SET "ddiskfree=!ddisktotal!"
    SET "ddisktotal=!ddiskavail!"
    SET "addiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%ddisktotal% %ddiskavail%") DO SET "ddisktotal=%%i"& SET "ddiskavail=%%j"
)
IF EXIST E:\ (
set drivee="E:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree E:\') DO (
    SET "ediskfree=!edisktotal!"
    SET "edisktotal=!ediskavail!"
    SET "ediskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%edisktotal% %ediskavail%") DO SET "edisktotal=%%i"& SET "ediskavail=%%j"
)
IF EXIST F:\ (
set drivef="F:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree F:\') DO (
    SET "fdiskfree=!fdisktotal!"
    SET "fdisktotal=!fdiskavail!"
    SET "fdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%fdisktotal% %fdiskavail%") DO SET "fdisktotal=%%i"& SET "fdiskavail=%%j"
)
IF EXIST G:\ (
set driveg="G:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree G:\') DO (
    SET "gdiskfree=!gdisktotal!"
    SET "gdisktotal=!gdiskavail!"
    SET "gdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%gdisktotal% %gdiskavail%") DO SET "gdisktotal=%%i"& SET "gdiskavail=%%j"
)
IF EXIST H:\ (
set driveh="H:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree H:\') DO (
    SET "hdiskfree=!hdisktotal!"
    SET "hdisktotal=!hdiskavail!"
    SET "hdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%hdisktotal% %hdiskavail%") DO SET "hdisktotal=%%i"& SET "hdiskavail=%%j"
)
IF EXIST I:\ (
set drivei="I:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree I:\') DO (
    SET "idiskfree=!idisktotal!"
    SET "idisktotal=!idiskavail!"
    SET "idiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%idisktotal% %idiskavail%") DO SET "idisktotal=%%i"& SET "idiskavail=%%j"
)
IF EXIST J:\ (
set drivej="J:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree J:\') DO (
    SET "jdiskfree=!jdisktotal!"
    SET "jdisktotal=!jdiskavail!"
    SET "jdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%jdisktotal% %jdiskavail%") DO SET "jdisktotal=%%i"& SET "jdiskavail=%%j"
)
IF EXIST K:\ (
set drivek="K:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree K:\') DO (
    SET "kdiskfree=!kdisktotal!"
    SET "kdisktotal=!kdiskavail!"
    SET "kdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%kdisktotal% %kdiskavail%") DO SET "kdisktotal=%%i"& SET "kdiskavail=%%j"
)
IF EXIST L:\ (
set drivel="L:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree L:\') DO (
    SET "ldiskfree=!ldisktotal!"
    SET "ldisktotal=!ldiskavail!"
    SET "ldiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%ldisktotal% %ldiskavail%") DO SET "ldisktotal=%%i"& SET "ldiskavail=%%j"
)
IF EXIST M:\ (
set drivem="M:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree M:\') DO (
    SET "mdiskfree=!mdisktotal!"
    SET "mdisktotal=!mdiskavail!"
    SET "mdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%mdisktotal% %mdiskavail%") DO SET "mdisktotal=%%i"& SET "mdiskavail=%%j"
)
IF EXIST N:\ (
set driven="N:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree N:\') DO (
    SET "ndiskfree=!ndisktotal!"
    SET "ndisktotal=!ndiskavail!"
    SET "ndiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%ndisktotal% %ndiskavail%") DO SET "ndisktotal=%%i"& SET "ndiskavail=%%j"
)
IF EXIST O:\ (
set driveo="O:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree AO:\') DO (
    SET "odiskfree=!odisktotal!"
    SET "odisktotal=!odiskavail!"
    SET "odiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%odisktotal% %odiskavail%") DO SET "odisktotal=%%i"& SET "odiskavail=%%j"
)
IF EXIST P:\ (
set drivep="P:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree P:\') DO (
    SET "pdiskfree=!pdisktotal!"
    SET "pdisktotal=!pdiskavail!"
    SET "pdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%pdisktotal% %pdiskavail%") DO SET "pdisktotal=%%i"& SET "pdiskavail=%%j"
)
IF EXIST Q:\ (
set driveq="Q:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree Q:\') DO (
    SET "qdiskfree=!qdisktotal!"
    SET "qdisktotal=!qdiskavail!"
    SET "qdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%qdisktotal% %qdiskavail%") DO SET "qdisktotal=%%i"& SET "qdiskavail=%%j"
)
IF EXIST R:\ (
set driver="R:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree R:\') DO (
    SET "rdiskfree=!rdisktotal!"
    SET "rdisktotal=!rdiskavail!"
    SET "rdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%rdisktotal% %rdiskavail%") DO SET "rdisktotal=%%i"& SET "rdiskavail=%%j"
)
IF EXIST S:\ (
set drives="S:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree S:\') DO (
    SET "sdiskfree=!sdisktotal!"
    SET "sdisktotal=!sdiskavail!"
    SET "sdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%sdisktotal% %sdiskavail%") DO SET "sdisktotal=%%i"& SET "sdiskavail=%%j"
)
IF EXIST T:\ (
set drivet="T:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree T:\') DO (
    SET "tdiskfree=!tdisktotal!"
    SET "tdisktotal=!tdiskavail!"
    SET "tdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%tdisktotal% %tdiskavail%") DO SET "tdisktotal=%%i"& SET "tdiskavail=%%j"
)
IF EXIST U:\ (
set driveu="U:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree U:\') DO (
    SET "udiskfree=!udisktotal!"
    SET "udisktotal=!udiskavail!"
    SET "udiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%udisktotal% %udiskavail%") DO SET "udisktotal=%%i"& SET "udiskavail=%%j"
)
IF EXIST V:\ (
set drivev="V:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree V:\') DO (
    SET "vdiskfree=!vdisktotal!"
    SET "vdisktotal=!vdiskavail!"
    SET "vdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%vdisktotal% %vdiskavail%") DO SET "vdisktotal=%%i"& SET "vdiskavail=%%j"
)
IF EXIST W:\ (
set drivew="W:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree W:\') DO (
    SET "wdiskfree=!wdisktotal!"
    SET "wdisktotal=!wdiskavail!"
    SET "wdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%wdisktotal% %wdiskavail%") DO SET "wdisktotal=%%i"& SET "wdiskavail=%%j"
)
IF EXIST X:\ (
set drivex="X:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree X:\') DO (
    SET "xdiskfree=!xdisktotal!"
    SET "xdisktotal=!xdiskavail!"
    SET "xdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%xdisktotal% %xdiskavail%") DO SET "xdisktotal=%%i"& SET "xdiskavail=%%j"
)
IF EXIST Y:\ (
set drivey="Y:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree Y:\') DO (
    SET "ydiskfree=!ydisktotal!"
    SET "ydisktotal=!ydiskavail!"
    SET "ydiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%ydisktotal% %ydiskavail%") DO SET "ydisktotal=%%i"& SET "ydiskavail=%%j"
)
IF EXIST Z:\ (
set drivez="Z:\", 
FOR /f "tokens=1*delims=:" %%i IN ('fsutil volume diskfree Z:\') DO (
    SET "zdiskfree=!zdisktotal!"
    SET "zdisktotal=!zdiskavail!"
    SET "zdiskavail=%%j"
)
FOR /f "tokens=1,2" %%i IN ("%zdisktotal% %zdiskavail%") DO SET "zdisktotal=%%i"& SET "zdiskavail=%%j"
)
set driveexist=%drivea%%driveb%%drivec%%drived%%drivee%%drivef%%driveg%%driveh%%drivei%%drivej%%drivek%%drivel%%drivem%%driven%%driveo%%drivep%%driveq%%driver%%drives%%drivet%%driveu%%drivev%%drivew%%drivex%%drivey%%drivez%
echo                       Connected Drives: %DRIVELETTERSUSED:~0,-6% %logg%
echo                       Writable Drives: %driveexist:~0,-2% %logg%
If EXIST A:\ (
echo                       A:\ Total Space: %adisktotal:~0,-9% GB %logg%
echo                       A:\ Free  Space: %adiskavail:~0,-9% GB %logg%
)
If EXIST B:\ (
echo                       B:\ Total Space: %bdisktotal:~0,-9% GB %logg%
echo                       B:\ Free  Space: %bdiskavail:~0,-9% GB %logg%
)
If EXIST C:\ (
echo                       C:\ Total Space: %cdisktotal:~0,-9% GB %logg%
echo                       C:\ Free  Space: %cdiskavail:~0,-9% GB %logg%
)
If EXIST D:\ (
echo                       D:\ Total Space: %ddisktotal:~0,-9% GB %logg%
echo                       D:\ Free  Space: %ddiskavail:~0,-9% GB %logg%
)
If EXIST E:\ (
echo                       E:\ Total Space: %edisktotal:~0,-9% GB %logg%
echo                       E:\ Free  Space: %ediskavail:~0,-9% GB %logg%
)
If EXIST F:\ (
echo                       F:\ Total Space: %fdisktotal:~0,-9% GB %logg%
echo                       F:\ Free  Space: %fdiskavail:~0,-9% GB %logg%
)
If EXIST G:\ (
echo                       G:\ Total Space: %gdisktotal:~0,-9% GB %logg%
echo                       G:\ Free  Space: %gdiskavail:~0,-9% GB %logg%
)
If EXIST H:\ (
echo                       H:\ Total Space: %hdisktotal:~0,-9% GB %logg%
echo                       H:\ Free  Space: %hdiskavail:~0,-9% GB %logg%
)
If EXIST I:\ (
echo                       I:\ Total Space: %idisktotal:~0,-9% GB %logg%
echo                       I:\ Free  Space: %idiskavail:~0,-9% GB %logg%
)
If EXIST J:\ (
echo                       J:\ Total Space: %jdisktotal:~0,-9% GB %logg%
echo                       J:\ Free  Space: %jdiskavail:~0,-9% GB %logg%
)
If EXIST K:\ (
echo                       K:\ Total Space: %kdisktotal:~0,-9% GB %logg%
echo                       K:\ Free  Space: %kdiskavail:~0,-9% GB %logg%
)
If EXIST L:\ (
echo                       L:\ Total Space: %ldisktotal:~0,-9% GB %logg%
echo                       L:\ Free  Space: %ldiskavail:~0,-9% GB %logg%
)
If EXIST M:\ (
echo                       M:\ Total Space: %mdisktotal:~0,-9% GB %logg%
echo                       M:\ Free  Space: %mdiskavail:~0,-9% GB %logg%
)
If EXIST N:\ (
echo                       N:\ Total Space: %ndisktotal:~0,-9% GB %logg%
echo                       N:\ Free  Space: %ndiskavail:~0,-9% GB %logg%
)
If EXIST O:\ (
echo                       O:\ Total Space: %odisktotal:~0,-9% GB %logg%
echo                       O:\ Free  Space: %odiskavail:~0,-9% GB %logg%
)
If EXIST P:\ (
echo                       P:\ Total Space: %pdisktotal:~0,-9% GB %logg%
echo                       P:\ Free  Space: %pdiskavail:~0,-9% GB %logg%
)
If EXIST Q:\ (
echo                       Q:\ Total Space: %qdisktotal:~0,-9% GB %logg%
echo                       Q:\ Free  Space: %qdiskavail:~0,-9% GB %logg%
)
If EXIST R:\ (
echo                       R:\ Total Space: %rdisktotal:~0,-9% GB %logg%
echo                       R:\ Free  Space: %rdiskavail:~0,-9% GB %logg%
)
If EXIST S:\ (
echo                       S:\ Total Space: %sdisktotal:~0,-9% GB %logg%
echo                       S:\ Free  Space: %sdiskavail:~0,-9% GB %logg%
)
If EXIST T:\ (
echo                       T:\ Total Space: %tdisktotal:~0,-9% GB %logg%
echo                       T:\ Free  Space: %tdiskavail:~0,-9% GB %logg%
)
If EXIST U:\ (
echo                       U:\ Total Space: %udisktotal:~0,-9% GB %logg%
echo                       U:\ Free  Space: %udiskavail:~0,-9% GB %logg%
)
If EXIST V:\ (
echo                       V:\ Total Space: %vdisktotal:~0,-9% GB %logg%
echo                       V:\ Free  Space: %vdiskavail:~0,-9% GB %logg%
)
If EXIST W:\ (
echo                       W:\ Total Space: %wdisktotal:~0,-9% GB %logg%
echo                       W:\ Free  Space: %wdiskavail:~0,-9% GB %logg%
)
If EXIST X:\ (
echo                       X:\ Total Space: %xdisktotal:~0,-9% GB %logg%
echo                       X:\ Free  Space: %xdiskavail:~0,-9% GB %logg%
)
If EXIST Y:\ (
echo                       Y:\ Total Space: %ydisktotal:~0,-9% GB %logg%
echo                       Y:\ Free  Space: %ydiskavail:~0,-9% GB %logg%
)
If EXIST Z:\ (
echo                       Z:\ Total Space: %zdisktotal:~0,-9% GB %logg%
echo                       Z:\ Free  Space: %zdiskavail:~0,-9% GB %logg%
)
echo . %logg%
echo          NOTE: Everything is Logged To %~dp0\SystemSpecs.txt
ping localhost -n 7 >nul
 pause>nul|set/p = press any key to run loop ...
goto :SystemEnvironment