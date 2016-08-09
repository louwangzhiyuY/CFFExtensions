; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CFFExtensions"
#define MyAppVersion "1.0.4"
#define MyAppPublisher "@bfosterjr"
#define MyAppURL "@bfosterjr"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0B080FE7-FDC6-4817-9312-BB077E4A5C32}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename={#MyAppName}_{#MyAppVersion}_setup
Compression=lzma
SolidCompression=yes
OutputDir=.\bin
DefaultDirName={pf}\Explorer Suite\Extensions\CFF Explorer\CFFExtensions
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: ".\bin\x64\Release\CFFHashes.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x64\Release\CFFStrings.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x64\Release\CFFYara.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x64\Release\CFFCapstone.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x86\Release\CFFHashes.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: solidbreak
Source: ".\bin\x86\Release\CFFStrings.dll"; DestDir: "{app}"; Check: not is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x86\Release\CFFYara.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion
Source: ".\bin\x86\Release\CFFCapstone.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Code]
function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  case CurPageID of
    wpSelectDir:
      MsgBox('Please ensure the installation path is in the "Extensions\CFF Explorer" directory of CFF Explorer', mbInformation, MB_OK);
  end;
  Result := True;
end;
