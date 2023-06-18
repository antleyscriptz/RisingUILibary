-- Services --
local players = game:GetService("Players")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local coreGui = game:GetService("CoreGui")

-- vars
local viewport = workspace.CurrentCamera.ViewportSize


local Libary = {}
Libary.Tree = {};

function Libary:validate(defaults, options)
	for i,v in pairs(defaults) do
		if  options[i] == nil then
			options[i] = v
		end
	end
	return options
end

function Libary:new(options)
	options = Libary:validate({
		name = "Rising UI Libary"	
	}, options or {}) -- if a name is not set, this will be set
	
	-- Main UI
	do
		-- StarterGui.MyLibary
		Libary.Tree["1"] = Instance.new("ScreenGui", runService:IsStudio() and players.LocalPlayer:WaitForChild("PlayerGui") or coreGui);
		Libary.Tree["1"]["Name"] = [[MyLibary]];
		Libary.Tree["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
		Libary.Tree["1"]["IgnoreGuiInset"] = true

		-- StarterGui.MyLibary.Main
		Libary.Tree["2"] = Instance.new("Frame", Libary.Tree["1"]);
		Libary.Tree["2"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
		Libary.Tree["2"]["AnchorPoint"] = Vector2.new(0, 0);
		Libary.Tree["2"]["Size"] = UDim2.new(0, 400, 0, 300);
		Libary.Tree["2"]["Position"] = UDim2.fromOffset((viewport.X/2) - Libary.Tree["2"].Size.X.Offset /2, (viewport.Y/2) - Libary.Tree["2"].Size.Y.Offset + Libary.Tree["2"].Size.Y.Offset /2);
		Libary.Tree["2"]["Name"] = [[Main]];

		-- StarterGui.MyLibary.Main.UICorner
		Libary.Tree["3"] = Instance.new("UICorner", Libary.Tree["2"]);
		Libary.Tree["3"]["CornerRadius"] = UDim.new(0, 3);

		-- StarterGui.MyLibary.Main.Topbar
		Libary.Tree["4"] = Instance.new("Frame", Libary.Tree["2"]);
		Libary.Tree["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		Libary.Tree["4"]["Size"] = UDim2.new(0, 400, 0, 25);
		Libary.Tree["4"]["Name"] = [[Topbar]];

		-- StarterGui.MyLibary.Main.Topbar.UICorner
		Libary.Tree["5"] = Instance.new("UICorner", Libary.Tree["4"]);
		Libary.Tree["5"]["CornerRadius"] = UDim.new(0, 4);

		-- StarterGui.MyLibary.Main.Topbar.Title
		Libary.Tree["6"] = Instance.new("TextLabel", Libary.Tree["4"]);
		Libary.Tree["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		Libary.Tree["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		Libary.Tree["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		Libary.Tree["6"]["TextSize"] = 14;
		Libary.Tree["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		Libary.Tree["6"]["Size"] = UDim2.new(0, 80, 0, 24);
		Libary.Tree["6"]["Text"] = options["name"];
		Libary.Tree["6"]["Name"] = options["name"];
		Libary.Tree["6"]["BackgroundTransparency"] = 1;

		-- StarterGui.MyLibary.Main.Topbar.Title.UIPadding
		Libary.Tree["7"] = Instance.new("UIPadding", Libary.Tree["6"]);
		Libary.Tree["7"]["PaddingRight"] = UDim.new(0, 8);
		Libary.Tree["7"]["PaddingLeft"] = UDim.new(0, 4);

		-- StarterGui.MyLibary.Main.Topbar.close
		Libary.Tree["8"] = Instance.new("ImageButton", Libary.Tree["4"]);
		Libary.Tree["8"]["ZIndex"] = 2;
		Libary.Tree["8"]["Image"] = [[rbxassetid://3926305904]];
		Libary.Tree["8"]["ImageRectSize"] = Vector2.new(24, 24);
		Libary.Tree["8"]["Size"] = UDim2.new(0, 24, 0, 24);
		Libary.Tree["8"]["Name"] = [[close]];
		Libary.Tree["8"]["ImageRectOffset"] = Vector2.new(284, 4);
		Libary.Tree["8"]["Position"] = UDim2.new(0.9399999976158142, 0, -0.019999999552965164, 0);
		Libary.Tree["8"]["BackgroundTransparency"] = 1;
	end 
	
	-- Button AKA Navaigtion
end

Libary:new {
	name = "test"
}
