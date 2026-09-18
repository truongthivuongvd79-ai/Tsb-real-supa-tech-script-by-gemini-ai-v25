local a,b,c,d=game:GetService("Players"),game:GetService("Workspace"),game:GetService("RunService"),game:GetService("CoreGui")local e=a.LocalPlayer;local f,h,i=true,false,false;local j={}local k,l,m,n=1.2,4.5,3.8,15;local o=Instance.new("ScreenGui")o.Name="TSB_CustomGUI_V25"pcall(function()o.Parent=d end)if not o.Parent then o.Parent=e:WaitForChild("PlayerGui")end;local p=Instance.new("Frame")p.Size=UDim2.new(0,200,0,320)p.Position=UDim2.new(0.05,0,0.2,0)p.BackgroundColor3=Color3.fromRGB(22,22,28)p.BorderSizePixel=0;p.Active=true;p.Draggable=true;p.Parent=o;local q=Instance.new("UICorner")q.CornerRadius=UDim.new(0,10)q.Parent=p;local r=Instance.new("UIStroke")r.Color=Color3.fromRGB(0,162,255)r.Thickness=1.5;r.Parent=p;local s=Instance.new("ImageButton")s.Size=UDim2.new(0,48,0,48)s.Position=UDim2.new(0.02,0,0.4,0)s.BackgroundColor3=Color3.fromRGB(15,15,20)s.Image="rbxassetid://13805952445"s.Visible=false;s.Active=true;s.Draggable=true;s.Parent=o;local t=Instance.new("UICorner")t.CornerRadius=UDim.new(1,0)t.Parent=s;local u=Instance.new("UIStroke")u.Color=Color3.fromRGB(0,220,255)u.Thickness=2.5;u.Parent=s;local v=Instance.new("TextLabel")v.Size=UDim2.new(0,120,0,22)v.Position=UDim2.new(0.05,0,0.02,0)v.BackgroundTransparency=1;v.Text="By Newi (V25)"v.TextColor3=Color3.fromRGB(0,220,255)v.TextXAlignment=Enum.TextXAlignment.Left;v.TextScaled=true;v.Font=Enum.Font.SourceSansBold;v.Parent=p;local w=Instance.new("TextButton")w.Size=UDim2.new(0,20,0,20)w.Position=UDim2.new(0.85,0,0.02,0)w.BackgroundColor3=Color3.fromRGB(220,50,50)w.Text="-"w.TextColor3=Color3.fromRGB(255,255,255)w.TextScaled=true;w.Font=Enum.Font.SourceSansBold;w.Parent=p;local x=Instance.new("UICorner")x.CornerRadius=UDim.new(0,4)x.Parent=w;w.MouseButton1Click:Connect(function()p.Visible=false;s.Visible=true end)s.MouseButton1Click:Connect(function()p.Visible=true;s.Visible=false end)local y=Instance.new("ScrollingFrame")y.Size=UDim2.new(0.92,0,0.88,0)y.Position=UDim2.new(0.04,0,0.09,0)y.BackgroundTransparency=1;y.BorderSizePixel=0;y.ScrollBarThickness=4;y.CanvasSize=UDim2.new(0,0,0,340)y.Parent=p;local z=Instance.new("UIListLayout")z.Parent=y;z.SortOrder=Enum.SortOrder.LayoutOrder;z.Padding=UDim.new(0,5)local function A(B,C,D)local E=Instance.new("Frame")E.Size=UDim2.new(1,0,0,24)E.BackgroundTransparency=1;E.LayoutOrder=D;E.Parent=y;local F=Instance.new("TextLabel")F.Size=UDim2.new(0.58,-4,1,0)F.BackgroundColor3=Color3.fromRGB(32,32,42)F.Text=B;F.TextColor3=Color3.fromRGB(240,240,240)F.TextScaled=true;F.Font=Enum.Font.SourceSans;F.Parent=E;local G=Instance.new("UICorner")G.CornerRadius=UDim.new(0,4)G.Parent=F;local H=Instance.new("TextBox")H.Size=UDim2.new(0.40,0,1,0)H.Position=UDim2.new(0.60,0,0,0)H.BackgroundColor3=Color3.fromRGB(15,15,20)H.Text=tostring(C)H.TextColor3=Color3.fromRGB(0,220,255)H.TextScaled=true;H.Font=Enum.Font.SourceSansBold;H.Parent=E;local I=Instance.new("UICorner")I.CornerRadius=UDim.new(0,4)I.Parent=H;return H end;local J=A("Top (0-50):",k,1)local K=A("Bottom (0-50):",l,2)local L=A("Diameter (0-100):",m,3)local M=A("Tilt (0-180):",n,4)J.FocusLost:Connect(function()local N=tonumber(J.Text)if N then k=math.clamp(N,0,50)else J.Text=tostring(k)end end)K.FocusLost:Connect(function()local N=tonumber(K.Text)if N then l=math.clamp(N,0,50)else K.Text=tostring(l)end end)L.FocusLost:Connect(function()local N=tonumber(L.Text)if N then m=math.clamp(N,0,100)else L.Text=tostring(m)end end)M.FocusLost:Connect(function()local N=tonumber(M.Text)if N then n=math.clamp(N,0,180)else M.Text=tostring(n)end end)local function O(B,P,D,Q)local R=Instance.new("TextButton")R.Size=UDim2.new(1,0,0,26)R.BackgroundColor3=P and Color3.fromRGB(40,180,90)or Color3.fromRGB(200,50,50)R.Text=B..": "..(P and"ON"or"OFF")R.TextColor3=Color3.fromRGB(255,255,255)R.TextScaled=true;R.Font=Enum.Font.SourceSansBold;R.LayoutOrder=D;R.Parent=y;local S=Instance.new("UICorner")S.CornerRadius=UDim.new(0,5)S.Parent=R;local T=P;R.MouseButton1Click:Connect(function()T=not T;R.Text=B..": "..(T and"ON"or"OFF")R.BackgroundColor3=T and Color3.fromRGB(40,180,90)or Color3.fromRGB(200,50,50)Q(T)end)return R end;

O("Supa Tech",f,5,function(U)f=U end)
O("Client Aim",i,6,function(U)i=U end)
O("Headless / Korblox",h,7,function(U)h=U end)

local V=Instance.new("TextButton")V.Size=UDim2.new(1,0,0,26)V.BackgroundColor3=Color3.fromRGB(150,50,200)V.Text="Test Pillar"V.TextColor3=Color3.fromRGB(255,255,255)V.TextScaled=true;V.Font=Enum.Font.SourceSansBold;V.LayoutOrder=8;V.Parent=y;local W=Instance.new("UICorner")W.CornerRadius=UDim.new(0,5)W.Parent=V;V.MouseButton1Click:Connect(function()if not e.Character then return end;local X=e.Character:FindFirstChild("HumanoidRootPart")if not X then return end;local Y=math.max(0.1,k+l)local Z=math.max(0.1,m)local _=Instance.new("Part")_.Name="TSB_TestPillar"_.Shape=Enum.PartType.Cylinder;_.Size=Vector3.new(Y,Z,Z)_.Anchored=true;_.CanCollide=true;_.Transparency=0.35;_.BrickColor=BrickColor.new("Bright red")_.Material=Enum.Material.Neon;_.CFrame=X.CFrame*CFrame.Angles(math.rad(n),0,0)*CFrame.Angles(0,0,math.rad(90))_.Parent=b;task.delay(0.5,function()if _ and _.Parent then _:Destroy()end end)end)local function a0(a1)if not f or not a1 or j[a1]then return end;local Y=math.max(0.1,k+l)local Z=math.max(0.1,m)local _=Instance.new("Part")_.Name="TSB_CustomTorsoPillar"_.Shape=Enum.PartType.Cylinder;_.Size=Vector3.new(Y,Z,Z)_.Anchored=true;_.CanCollide=true;_.Transparency=0.35;_.BrickColor=BrickColor.new("Bright red")_.Material=Enum.Material.Neon;_.CustomPhysicalProperties=PhysicalProperties.new(100,100,0,100,100)_.Parent=b;j[a1]=_;local a2;a2=c.RenderStepped:Connect(function()if not f or not _ or not _.Parent then if _ and _.Parent then _:Destroy()end;j[a1]=nil;if a2 then a2:Disconnect()end;return end;if a1 and a1.Parent and e.Character then local a3=e.Character;local a4=a3:FindFirstChild("HumanoidRootPart")or a3:FindFirstChild("Torso")local a5=a1.Position;local a6=CFrame.new(a5)if a4 and(a5-a4.Position).Magnitude>0.1 then a6=CFrame.lookAt(a5,Vector3.new(a4.Position.X,a5.Y,a4.Position.Z))end;_.CFrame=a6*CFrame.Angles(math.rad(n),0,0)*CFrame.Angles(0,0,math.rad(90))else if _ and _.Parent then _:Destroy()end;j[a1]=nil;if a2 then a2:Disconnect()end end end)task.delay(0.5,function()if a2 then a2:Disconnect()end;if _ and _.Parent then _:Destroy()end;j[a1]=nil end)end;local function a7(a8,a9)if a9.PlatformStand then return true end;if a8:FindFirstChild("Ragdoll")or a8:FindFirstChild("Knockback")or a8:FindFirstChild("Stun")then return true end;for aa,ab in ipairs(a8:GetChildren())do if ab:IsA("ValueBase")and string.find(string.lower(ab.Name),"ragdoll")then return true end end;return false end;c.RenderStepped:Connect(function()if not f then return end;for aa,ac in ipairs(b:GetDescendants())do if ac:IsA("Humanoid")and ac.Parent~=e.Character then local a8=ac.Parent;local ad=a8:FindFirstChild("HumanoidRootPart")or a8:FindFirstChild("Torso")or a8:FindFirstChild("UpperTorso")if ad and a7(a8,ac)then a0(ad)end end end end)c.RenderStepped:Connect(function()if not i or not e.Character then return end;local X=e.Character:FindFirstChild("HumanoidRootPart")if not X then return end;local ae,af=nil,120;for aa,ac in ipairs(b:GetDescendants())do if ac:IsA("Humanoid")and ac.Parent~=e.Character and ac.Health>0 then local a8=ac.Parent;local ad=a8:FindFirstChild("HumanoidRootPart")or a8:FindFirstChild("Torso")if ad then local ag=(ad.Position-X.Position).Magnitude;if ag<af then af=ag;ae=ad end end end end;if ae then X.CFrame=CFrame.lookAt(X.Position,Vector3.new(ae.Position.X,X.Position.Y,ae.Position.Z))end end)

local function applyKorbloxDirect(char, enable)
    local rLeg = char:FindFirstChild("Right Leg")
    if not rLeg then return end

    local charMesh = char:FindFirstChild("TSB_Korblox_CMesh")
    if enable then
        rLeg.Transparency = 0
        
        -- Dọn dẹp CharacterMesh cũ nếu có
        for _, v in ipairs(char:GetChildren()) do
            if v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.RightLeg and v ~= charMesh then
                v:Destroy()
            end
        end

        if not charMesh then
            charMesh = Instance.new("CharacterMesh")
            charMesh.Name = "TSB_Korblox_CMesh"
            charMesh.BodyPart = Enum.BodyPart.RightLeg
            charMesh.MeshId = "90294209"
            charMesh.OverlayTextureId = "90282992"
            charMesh.Parent = char
        end
    else
        if charMesh then
            charMesh:Destroy()
        end
    end
end

c.RenderStepped:Connect(function()
    local a3 = e.Character
    if a3 then
        if a3:FindFirstChild("Head") then
            local ah = a3.Head
            if h then
                if ah.Transparency ~= 1 then
                    ah.Transparency = 1
                    if ah:FindFirstChildOfClass("Decal") then
                        ah:FindFirstChildOfClass("Decal").Transparency = 1
                    end
                end
            else
                if ah.Transparency == 1 then
                    ah.Transparency = 0
                    if ah:FindFirstChildOfClass("Decal") then
                        ah:FindFirstChildOfClass("Decal").Transparency = 0
                    end
                end
            end
        end
        applyKorbloxDirect(a3, h)
    end
end)
