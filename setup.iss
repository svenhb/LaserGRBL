; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LaserGRBL"
#define MyAppVersion "3.0.1"
#define MyAppVersionName "Rhyhorn"
#define MyAppPublisher "LaserGRBL"
#define MyAppURL "http://lasergrbl.com"
#define MyAppExeName "LaserGRBL.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4BF69C31-8363-4935-9804-CCDD623E7C1F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersionName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir=.\
OutputBaseFilename=install
Compression=lzma/ultra64
SolidCompression=yes
InternalCompressLevel=ultra64
CompressionThreads=2
RestartIfNeededByRun=False
Uninstallable=yes
UninstallFilesDir={pf}
SetupIconFile=.\install.ico
UninstallDisplayIcon={app}\LaserGRBL.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
;Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\LaserGRBL\bin\Release\LaserGRBL.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\Autotrace\autotrace.exe"; DestDir: "{app}\Autotrace"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\it\LaserGRBL.resources.dll"; DestDir: "{app}\it"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\da\LaserGRBL.resources.dll"; DestDir: "{app}\da"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\de\LaserGRBL.resources.dll"; DestDir: "{app}\de"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\es\LaserGRBL.resources.dll"; DestDir: "{app}\es"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\fr\LaserGRBL.resources.dll"; DestDir: "{app}\fr"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\pt-BR\LaserGRBL.resources.dll"; DestDir: "{app}\pt-BR"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\ru\LaserGRBL.resources.dll"; DestDir: "{app}\ru"; Flags: ignoreversion
Source: ".\LaserGRBL\bin\Release\zh-CN\LaserGRBL.resources.dll"; DestDir: "{app}\zh-CN"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
;Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

