local handle = game.Workspace:FindFirstChild('Handle', true).Parent
local payload = {
	[1] = 'Accessory',
	[2] = handle,
	[3] = true,
	[4] = game,
	[5] = '',
	[6] = ''
}
local remote = game:GetService("ReplicatedStorage").ModuleScript.ToolModule.RemoteEvent

game:GetService('RunService').RenderStepped:Connect(function()
	payload[3] = not payload[3]
	remote:FireServer(unpack(payload))
end)
