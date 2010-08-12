[Setup]
AppName=XChat-WDK (x86)
AppVerName=XChat WDK (x86) r1451-5
AppVersion=14.51.5
VersionInfoVersion=14.51.5
AppPublisher=XChat-WDK
AppPublisherURL=http://code.google.com/p/xchat-wdk/
AppCopyright=Copyright (C) 1998-2010 Peter Zelezny
AppSupportURL=http://code.google.com/p/xchat-wdk/issues/list
AppUpdatesURL=http://code.google.com/p/xchat-wdk/downloads/list
WizardImageFile=c:\mozilla-build\build\xchat.bmp
SetupIconFile=c:\mozilla-build\build\xchat-wdk\xchat.ico
LicenseFile=COPYING
UninstallDisplayIcon={app}\xchat.exe
UninstallDisplayName=XChat-WDK (x86)
DefaultDirName={pf}\XChat-WDK
DefaultGroupName=XChat-WDK
SolidCompression=yes
SourceDir=..\..\xchat-wdk-x86
OutputDir=.
OutputBaseFilename=XChat-WDK r1451-5 x86
FlatComponentsList=no
ArchitecturesAllowed=x86 x64
;msiexec /quiet /uninstall {F61055AA-AED4-4AB9-8026-9D70B12ABA10}

[Types]
Name: "normal"; Description: "Normal Installation"
Name: "full"; Description: "Full Installation"
Name: "custom"; Description: "Custom Installation"; Flags: iscustom

[Components]
Name: "xchat"; Description: "XChat-WDK"; Types: normal full custom; Flags: fixed
Name: "translations"; Description: "Translations"; Types: normal full custom
Name: "plugins"; Description: "Language Interfaces"; Types: full custom
Name: "plugins\lua"; Description: "Lua (experimental; needs Lua-WDK 5.14)"; Types: full custom
Name: "plugins\perl"; Description: "Perl (needs ActivePerl 5.10)"; Types: full custom
Name: "plugins\python"; Description: "Python (needs ActivePython 2.6)"; Types: full custom
Name: "plugins\tcl"; Description: "Tcl (needs ActiveTcl 8.5)"; Types: full custom

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Components: xchat; Flags: unchecked

[Files]
Source: "COPYING"; DestDir: "{app}"; Components: xchat
Source: "freetype6.dll"; DestDir: "{app}"; Components: xchat
Source: "intl.dll"; DestDir: "{app}"; Components: xchat
Source: "libatk-1.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libcairo-2.dll"; DestDir: "{app}"; Components: xchat
Source: "libeay32.dll"; DestDir: "{app}"; Components: xchat
Source: "libexpat-1.dll"; DestDir: "{app}"; Components: xchat
Source: "libfontconfig-1.dll"; DestDir: "{app}"; Components: xchat
Source: "libgdk_pixbuf-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgdk-win32-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgio-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libglib-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgmodule-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgobject-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgthread-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libgtk-win32-2.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libpango-1.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libpangocairo-1.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libpangoft2-1.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libpangowin32-1.0-0.dll"; DestDir: "{app}"; Components: xchat
Source: "libpng14-14.dll"; DestDir: "{app}"; Components: xchat
Source: "LICENSE.OPENSSL"; DestDir: "{app}"; Components: xchat
Source: "LICENSE.ZLIB"; DestDir: "{app}"; Components: xchat
Source: "ssleay32.dll"; DestDir: "{app}"; Components: xchat
Source: "xchat.exe"; DestDir: "{app}"; Components: xchat
Source: "zlib1.dll"; DestDir: "{app}"; Components: xchat

Source: "plugins\xcewc.dll"; DestDir: "{app}\plugins"; Components: xchat
Source: "plugins\xcxdcc.dll"; DestDir: "{app}\plugins"; Components: xchat

Source: "plugins\xclua.dll"; DestDir: "{app}\plugins"; Components: plugins\lua
Source: "plugins\xcperl.dll"; DestDir: "{app}\plugins"; Components: plugins\perl
Source: "plugins\xcpython.dll"; DestDir: "{app}\plugins"; Components: plugins\python
Source: "plugins\xctcl.dll"; DestDir: "{app}\plugins"; Components: plugins\tcl

Source: "etc\*"; DestDir: "{app}\etc"; Flags: createallsubdirs recursesubdirs; Components: xchat
Source: "lib\*"; DestDir: "{app}\lib"; Flags: createallsubdirs recursesubdirs; Components: xchat

Source: "locale\*"; DestDir: "{app}\locale"; Flags: createallsubdirs recursesubdirs; Components: translations
Source: "share\*"; DestDir: "{app}\share"; Flags: createallsubdirs recursesubdirs; Components: translations

[Icons]
Name: "{group}\XChat-WDK (x86)"; Filename: "{app}\xchat.exe"
Name: "{group}\Uninstall XChat-WDK (x86)"; Filename: "{uninstallexe}";
Name: "{userdesktop}\XChat-WDK (x86)"; Filename: "{app}\xchat.exe"; Tasks: desktopicon; Comment: "IRC Client";  WorkingDir: "{app}";

[Messages]
BeveledLabel= XChat-WDK (x86)
