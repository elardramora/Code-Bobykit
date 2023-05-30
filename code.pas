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
    end
    else if IsComponentSelected('Framerate/60fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\30FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/exlow') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Minimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Recommande') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Optimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('confort/UI/switch') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\ps5');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\xbox');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('confort/UI/sony') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\blackscreenfix');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\xbox');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('confort/UI/xbox') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\blackscreenfix');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\ps5');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if not IsComponentSelected('confort/mouse') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\camera');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if not IsComponentSelected('cheats/amiibos') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\NoLootBoxes');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if not IsComponentSelected('system/shader') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\shader\0100f2c0115b6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
  end;
end;
    













procedure CurStepChanged(CurStep: TSetupStep);
var
  FilesToDelete: string;
begin
  if CurStep = ssInstall then
  begin
    if IsComponentSelected('Framerate/30fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\60fpsCutscenes');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);

      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\60FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('Framerate/60fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\30FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
  end;
end;







------------------------------------------------------------------------------------------------------------------------------------------
[Tasks]
Name: Remove30fpsFiles; Description: "Remove files from Framerate/30fps"; Components: "Framerate/30fps"; Check: Remove30fpsFilesCheck
Name: Remove60fpsFiles; Description: "Remove files from Framerate/60fps"; Components: "Framerate/60fps"; Check: Remove60fpsFilesCheck
//
Name: RemoveallFilesForExlow; Description: "supprimer fichier pour TonPC/exlow"; Components: "TonPC/exlow"; Check: RemoveallFilesForExlowCheck
Name: RemoveallFilesForExlow2; Description: "supprimer fichier pour TonPC/exlow2"; Components: "TonPC/exlow"; Check: RemoveallFilesForExlowCheck2
Name: RemoveallFilesForExlow3; Description: "supprimer fichier pour TonPC/exlow3"; Components: "TonPC/exlow"; Check: RemoveallFilesForExlowCheck3
//
Name: RemoveallFilesForLow; Description: "supprimer fichier pour TonPC/Minimal"; Components: "TonPC/Minimal"; Check: RemoveallFilesForLowCheck
Name: RemoveallFilesForLow2; Description: "supprimer fichier pour TonPC/Minimal2"; Components: "TonPC/Minimal"; Check: RemoveallFilesForLowCheck2
Name: RemoveallFilesForLow3; Description: "supprimer fichier pour TonPC/Minimal3"; Components: "TonPC/Minimal"; Check: RemoveallFilesForLowCheck3
//
Name: RemoveallFilesForMedium; Description: "supprimer fichier pour TonPC/Recommande"; Components: "TonPC/Recommande"; Check: RemoveallFilesForMediumCheck
Name: RemoveallFilesForMedium2; Description: "supprimer fichier pour TonPC/Recommande"; Components: "TonPC/Recommande"; Check: RemoveallFilesForMediumCheck2
Name: RemoveallFilesForMedium3; Description: "supprimer fichier pour TonPC/Recommande"; Components: "TonPC/Recommande"; Check: RemoveallFilesForMediumCheck3
//
Name: RemoveallFilesForHigh; Description: "supprimer fichier pour TonPC/Optimal"; Components: "TonPC/Recommande"; Check: RemoveallFilesForHighCheck
Name: RemoveallFilesForHigh2; Description: "supprimer fichier pour TonPC/Optimal"; Components: "TonPC/Recommande"; Check: RemoveallFilesForHighCheck2
Name: RemoveallFilesForHigh3; Description: "supprimer fichier pour TonPC/Optimal"; Components: "TonPC/Recommande"; Check: RemoveallFilesForHighCheck3

//FRAMERATE
function Remove30fpsFilesCheck(): Boolean;
begin
  Result := IsComponentSelected('Framerate/60fps') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\30FPS'));
end;
function Remove60fpsFilesCheck(): Boolean;
begin
  Result := IsComponentSelected('Framerate/30fps') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\60FPS'));
end;
//EXLOW
function RemoveallFilesForExlowCheck(): Boolean;
begin
  Result := IsComponentSelected('TonPC/exlow') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\low.txt'));
end;
function RemoveallFilesForExlowCheck2(): Boolean;
begin
  Result := IsComponentSelected('TonPC/exlow') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\medium.txt'));
end;
function RemoveallFilesForExlowCheck3(): Boolean;
begin
  Result := IsComponentSelected('TonPC/exlow') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\high.txt'));
end;
//LOW
function RemoveallFilesForLowCheck(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Minimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\high.txt'));
end;
function RemoveallFilesForLowCheck2(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Minimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\exlow.txt'));
end;
function RemoveallFilesForLowCheck3(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Minimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\medium.txt'));
end;
//MEDIUM
function RemoveallFilesForMediumCheck(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Recommande') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\exlow.txt'));
end;
function RemoveallFilesForMediumCheck2(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Recommande') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\low.txt'));
end;
function RemoveallFilesForMediumCheck3(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Recommande') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\high.txt'));
end;
//HIGH
function RemoveallFilesForHighCheck(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Optimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\exlow.txt'));
end;
function RemoveallFilesForHighCheck2(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Optimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\low.txt'));
end;
function RemoveallFilesForHighCheck3(): Boolean;
begin
  Result := IsComponentSelected('TonPC/Optimal') and DirExists(ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\medium.txt'));
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
    end
    else if IsComponentSelected('Framerate/60fps') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000\30FPS');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/exlow') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Minimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Recommande') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end
    else if IsComponentSelected('TonPC/Optimal') then
    begin
      FilesToDelete := ExpandConstant('{app}\yuzu-windows-msvc-early-access\user\load\0100F2C0115B6000');
      if DirExists(FilesToDelete) then
        DelTree(FilesToDelete, True, True, True);
    end;
  end;
end;







