local hmmm={["idle"]=function(Sine)return {
	["RootJoint"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)),
	["Neck"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)),
	["Left Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)),
	["Right Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)),
	["Left Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(10), math.rad(0)),
	["Right Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(-10), math.rad(0))}
end,
["run"]=function(Sine)
	return {
	["RootJoint"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Neck"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Left Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Right Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Left Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
		["Right Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))}
end,
["jump"]=function(Sine)return {
	["RootJoint"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Neck"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Left Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Right Shoulder"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Left Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
	["Right Hip"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))}
end
}
local RunService=game:GetService('RunService');
local tablee={};
for i,v in owner.Character:GetDescendants() do 
	if v:IsA('Motor6D') then 
		tablee[v.Name]=v.C0;
	end;
end;
if owner.Character:FindFirstChild('Animator',true) then 
	owner.Character:FindFirstChild('Animator',true):Destroy()
end
local egg=1;
RunService.Heartbeat:Connect(function()
	local troll;
	local RootPart=owner.Character.HumanoidRootPart;
	if math.abs((RootPart.Velocity*Vector3.new(0,1,0)).Magnitude)>1 then 
		troll="jump"
	elseif math.abs((RootPart.Velocity*Vector3.new(1,0,1)).Magnitude)>1 then 
		troll="run"
	else 
		troll="idle"
	end;
	table.foreach(hmmm[troll](egg),function(funny,moment)
		owner.Character:FindFirstChild(funny,true).C0=owner.Character:FindFirstChild(funny,true).C0:Lerp(tablee[funny]*moment,0.3)
	end)
	egg=egg+1;
end)