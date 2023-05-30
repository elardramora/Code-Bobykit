[Setup]
AppName=Bobykit de survie YUZU
AppVersion=1.93.112.3622
DefaultDirName={localappdata}\Bobykit YUZU
SourceDir=S:\SANDBOX\Github\Code-Bobykit\
DiskSpanning=yes
DisableProgramGroupPage=yes
WizardImageFile=S:\SANDBOX\Github\Code-Bobykit\GRAPHICS\rec4.bmp
WizardSmallImageFile=S:\SANDBOX\Github\Code-Bobykit\GRAPHICS\rec3.bmp
OutputBaseFilename=Bobykit de survie YUZU
DisableWelcomePage=no


[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Components]
//MODS FPS//
Name: "Framerate"; Description: "Choisis ton framerate"; Types: full compact custom; Flags: fixed
Name: "Framerate/30fps"; Description: "30fps dynamique"; Types: custom; Flags: exclusive
Name: "Framerate/60fps"; Description: "60fps dynamique"; Types: custom; Flags: exclusive

//CONF//
Name: "TonPC"; Description: "Choisis le type de PC que tu as (n'aie pas honte, je suis le seul qui te juge en ce moment)"; Types: full compact custom; Flags: fixed
//extra low//
Name: "TonPC/exlow"; Description: "Une plaque en braille. Je veux jouer en 540p à 3fps, je suis aveugle. (mais je déconne pas avec les musiques!)"; Types: custom; Flags: exclusive
//minimal//
Name: "TonPC/Minimal"; Description: "Un minitel. ''Experience de merde, experience quand même'', j'ai appris ça à la scatinière! "; Types: custom; Flags: exclusive
//recomandé//
Name: "TonPC/Recommande"; Description: "Le minimum requis, pourquoi ma vie est-elle si fade?"; Types: custom; Flags: exclusive
Name: "TonPC/Recommande/reso"; Description: "Ta résolution d'écran:"; Types: full compact custom; 
Name: "TonPC/Recommande/reso/1008p"; Description: "1008p (Et non c'est pas une erreur, et ça sera plus beau que le 1080p natif)"; Types: custom; Flags: exclusive
Name: "TonPC/Recommande/reso/2k"; Description: "2k"; Types: custom; Flags: exclusive
Name: "TonPC/Recommande/reso/4k"; Description: "4k"; Types: custom; Flags: exclusive
//optimal//
Name: "TonPC/Optimal"; Description: "Le Rocco Siffredi des PC, les daronnes se cachent quand elles le voient"; Types: custom; Flags: exclusive
Name: "TonPC/Optimal/reso"; Description: "Ta résolution d'écran:"; Types: full compact custom; 
Name: "TonPC/Optimal/reso/1008p"; Description: "1008p (toujours pas une erreur, faut suivre Boby)"; Types: custom; Flags: exclusive
Name: "TonPC/Optimal/reso/2k"; Description: "2k"; Types: custom; Flags: exclusive
Name: "TonPC/Optimal/reso/4k"; Description: "4k"; Types: custom; Flags: exclusive

//CONFORT//
Name: "confort"; Description: "Pour ton petit confort d'occidental"; Types: full compact custom; Flags: fixed
Name: "confort/UI"; Description: "Ton style d'interface utilisateur préféré"; Types: full compact custom; Flags: fixed
Name: "confort/UI/switch"; Description: "Nintendo Switch"; Types: custom; Flags: exclusive
Name: "confort/UI/sony"; Description: "Sony Playstation"; Types: custom; Flags: exclusive
Name: "confort/UI/xbox"; Description: "Microsoft Xboite"; Types: custom; Flags: exclusive
Name: "confort/mouse"; Description: "Sensibilité de caméra augmentée"; 
Name: "confort/noDOF"; Description: "Désactivation du flou de ciblage"; 

//CHEATS//
Name: "cheats"; Description: "Les cheats de fillettes"; Types: full compact custom; Flags: fixed
Name: "cheats/amiibos"; Description: "Amiibos illimités et table de loot 100% (parce que même sans ça c'est aussi chiant pour les vrais hommes...)"; Types: full compact custom;

//SYSTEM//
Name: "system"; Description: "Fichiers système"; Types: full compact custom; Flags: fixed
Name: "system/shader"; Description: "Pack de 30k Shader cache (mets à jour tes drivers graphique!!!)"; Types: full compact custom
Name: "system/yuzu"; Description: "Yuzu...accessoirement"; Types: full compact custom; Flags: fixed

[Files]
//MODS FPS//
Source: "S:\SANDBOX\Github\Code-Bobykit\framerate\30fps\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "Framerate/30fps"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\framerate\60fps\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "Framerate/60fps"; Flags: recursesubdirs

//CONF//
//extra low//
Source: "S:\SANDBOX\Github\Code-Bobykit\level\extralow\x1\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/exlow"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\extralow\mods\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "TonPC/exlow"; Flags: recursesubdirs
//minimal//
Source: "S:\SANDBOX\Github\Code-Bobykit\level\low\x1\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Minimal"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\low\mods\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "TonPC/Minimal"; Flags: recursesubdirs
//recommandé//
Source: "S:\SANDBOX\Github\Code-Bobykit\level\medium\1008p\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Recommande/reso/1008p"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\medium\2k\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Recommande/reso/2k"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\medium\4k\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Recommande/reso/4k"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\medium\mods\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "TonPC/Recommande"; Flags: recursesubdirs
//optimal//
Source: "S:\SANDBOX\Github\Code-Bobykit\level\high\1008p\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Optimal/reso/1008p"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\high\2k\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Optimal/reso/2k"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\high\4k\0100F2C0115B6000.ini"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\config\custom"; Components: "TonPC/Optimal/reso/4k"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\level\high\mods\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "TonPC/Optimal"; Flags: recursesubdirs
//CONFORT//
Source: "S:\SANDBOX\Github\Code-Bobykit\confort\NintendoUI\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "confort/UI/switch"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\confort\SonyUI\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "confort/UI/sony"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\confort\XboxUI\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "confort/UI/xbox"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\confort\Camera sens\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "confort/mouse"; Flags: recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\confort\disable target dof\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "confort/noDOF"; Flags: recursesubdirs
//CHEATS//
Source: "S:\SANDBOX\Github\Code-Bobykit\Cheats\Amiibos\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000"; Components: "cheats/amiibos"; Flags: recursesubdirs
//SYSTEM//
Source: "S:\SANDBOX\Github\Code-Bobykit\ICON\icon64.ico"; DestDir: "{app}\yuzu-windows-msvc-early-access"; Flags: onlyifdoesntexist
Source: "S:\SANDBOX\Github\Code-Bobykit\Yuzu\*.*"; DestDir: "{app}\"; Components: "system/yuzu"; Flags: onlyifdoesntexist recursesubdirs
Source: "S:\SANDBOX\Github\Code-Bobykit\shader\*.*"; DestDir: "{app}\yuzu-windows-msvc-early-access\user\shader\0100f2c0115b6000"; Components: "system/shader"; Flags: onlyifdoesntexist recursesubdirs

[Icons]
Name: "{userdesktop}\Bobykit YUZU"; Filename: "{app}\yuzu-windows-msvc-early-access\yuzu.exe"; WorkingDir: "{app}\yuzu-windows-msvc-early-access"; IconFilename: "{app}\yuzu-windows-msvc-early-access\icon64.ico"
Name: "{userdesktop}\Update YUZU"; Filename: "{app}\maintenancetool.exe"; WorkingDir: "{app}"
Name: "{userstartmenu}\Bobykit YUZU\Bobykit YUZU"; Filename: "{app}\yuzu-windows-msvc-early-access\yuzu.exe"; WorkingDir: "{app}\yuzu-windows-msvc-early-access"; IconFilename: "{app}\yuzu-windows-msvc-early-access\icon64.ico"
Name: "{userstartmenu}\Bobykit YUZU\Update YUZU"; Filename: "{app}\maintenancetool.exe"; WorkingDir: "{app}"

[Code]
var
  Button: TButton;
  Button2: TButton;

procedure OpenBrowser(Url: string);
var
  ErrorCode: Integer;
begin
  ShellExec('open', Url, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;
procedure ButtonClick(Sender: TObject);
begin
  OpenBrowser('https://bobywiki.fr/Totk-FAQ');
end;
procedure Button2Click(Sender: TObject);
begin
  OpenBrowser('https://www.youtube.com/channel/UC3siKVVCA-fgufejlR5oF-Q/?sub_confirmation=1');
end;

procedure InitializeWizard;
begin
    { Set the size of the wizard dialog }
  WizardForm.Width := 750;
  WizardForm.Height := 780;

  { Welcome page }
  { Hide the labels }
  WizardForm.WelcomeLabel1.Visible := False;
  WizardForm.WelcomeLabel2.Visible := False;
  { Stretch image over whole page }
  WizardForm.WizardBitmapImage.Width :=
    WizardForm.WizardBitmapImage.Parent.Width;

  { Finished page }
  { Hide the labels }
  WizardForm.FinishedLabel.Visible := False;
  WizardForm.FinishedHeadingLabel.Visible := False;
  { Stretch image over whole page }
  WizardForm.WizardBitmapImage2.Width :=
    WizardForm.WizardBitmapImage2.Parent.Width;

  Button := TButton.Create(WizardForm);
  Button.Parent := WizardForm;
  Button.Left := ScaleX(16);
  Button.Top := WizardForm.NextButton.Top;
  Button.Width := WizardForm.NextButton.Width;
  Button.Height := WizardForm.NextButton.Height;
  Button.Caption := 'BobyWiki';
  Button.OnClick := @ButtonClick;

  Button2 := TButton.Create(WizardForm);
  Button2.Parent := WizardForm;
  Button2.Left := ScaleX(100);
  Button2.Top := WizardForm.NextButton.Top;
  Button2.Width := WizardForm.NextButton.Width;
  Button2.Height := WizardForm.NextButton.Height;
  Button2.Caption := 'Chaîne YT';
  Button2.OnClick := @Button2Click;


end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  FilesToDelete: string;
begin
  if CurStep = ssInstall then
  begin
    if IsComponentSelected('Framerate/30fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\60FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('Framerate/60fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\30FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('TonPC/exlow') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('TonPC/Minimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('TonPC/Recommande') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('TonPC/Optimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('confort/UI/switch') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\ps5');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\xbox');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('confort/UI/sony') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\blackscreenfix');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\xbox');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if IsComponentSelected('confort/UI/xbox') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\blackscreenfix');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\ps5');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if not IsComponentSelected('confort/mouse') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\camera');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if not IsComponentSelected('cheats/amiibos') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\NoLootBoxes');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
    if not IsComponentSelected('system/shader') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\shader\0100f2c0115b6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
  end;
end;

