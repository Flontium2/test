local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.ScreenGui.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["ZIndex"] = 0;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0.57312, -47, 0.88103, -47);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 0.2;

-- StarterGui.ScreenGui.Main.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);


-- StarterGui.ScreenGui.Main.textgui
G2L["4"] = Instance.new("TextLabel", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["TextSize"] = 20;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(219, 33, 210);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Tsuo Hub - Stats Checker Gui]];
G2L["4"]["Name"] = [[textgui]];
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.06469, 0);

-- StarterGui.ScreenGui.Main.Frame
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0, 387, 0.01, 0);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.16257, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.ScreenGui.Main.accstats
G2L["6"] = Instance.new("TextLabel", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["TextSize"] = 20;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(219, 33, 210);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Account Stats:]];
G2L["6"]["Name"] = [[accstats]];
G2L["6"]["Position"] = UDim2.new(-0.00034, 0, 0.21937, 0);

-- StarterGui.ScreenGui.Main.level
G2L["7"] = Instance.new("TextLabel", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextSize"] = 20;
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Level:]];
G2L["7"]["Name"] = [[level]];
G2L["7"]["Position"] = UDim2.new(-0.06818, 0, 0.31054, 0);

-- StarterGui.ScreenGui.Main.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["2"]);
G2L["8"]["Thickness"] = 3;
G2L["8"]["Color"] = Color3.fromRGB(213, 49, 242);

-- StarterGui.ScreenGui.Main.race
G2L["9"] = Instance.new("TextLabel", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["TextSize"] = 20;
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Race:]];
G2L["9"]["Name"] = [[race]];
G2L["9"]["Position"] = UDim2.new(-0.06818, 0, 0.41026, 0);

-- StarterGui.ScreenGui.Main.Beli
G2L["a"] = Instance.new("TextLabel", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextSize"] = 20;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Beli:]];
G2L["a"]["Name"] = [[Beli]];
G2L["a"]["Position"] = UDim2.new(-0.06818, 0, 0.50712, 0);

-- StarterGui.ScreenGui.Main.frag
G2L["b"] = Instance.new("TextLabel", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["TextSize"] = 20;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Frag:]];
G2L["b"]["Name"] = [[frag]];
G2L["b"]["Position"] = UDim2.new(-0.06818, 0, 0.61254, 0);

-- StarterGui.ScreenGui.Main.Frame
G2L["c"] = Instance.new("Frame", G2L["2"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Size"] = UDim2.new(0, 387, 0.01, 0);
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.7447, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.ScreenGui.Main.accitem
G2L["d"] = Instance.new("TextLabel", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["TextSize"] = 20;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(219, 33, 210);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Account Items:]];
G2L["d"]["Name"] = [[accitem]];
G2L["d"]["Position"] = UDim2.new(0.56473, 0, 0.21937, 0);

-- StarterGui.ScreenGui.Main.items
G2L["e"] = Instance.new("TextLabel", G2L["2"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["TextSize"] = 18;
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Items here]];
G2L["e"]["Name"] = [[items]];
G2L["e"]["Position"] = UDim2.new(0.56367, 0, 0.31054, 0);

-- StarterGui.ScreenGui.Main.gh
G2L["f"] = Instance.new("TextLabel", G2L["2"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextSize"] = 15;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[🟢 GodHuman]];
G2L["f"]["Name"] = [[gh]];
G2L["f"]["Position"] = UDim2.new(0.1387, 0, 0.84258, 0);

-- StarterGui.ScreenGui.Main.cdk
G2L["10"] = Instance.new("TextLabel", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextSize"] = 15;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[🟢 Cursel Dual Katana]];
G2L["10"]["Name"] = [[cdk]];
G2L["10"]["Position"] = UDim2.new(0.43493, 0, 0.84258, 0);

-- StarterGui.ScreenGui.Main.helm
G2L["11"] = Instance.new("TextLabel", G2L["2"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextSize"] = 15;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[🟢 Valkyrie Helm]];
G2L["11"]["Name"] = [[helm]];
G2L["11"]["Position"] = UDim2.new(0.7089, 0, 0.84258, 0);

-- StarterGui.ScreenGui.Main.sg
G2L["12"] = Instance.new("TextLabel", G2L["2"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextSize"] = 15;
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[🟢Soul Guitar]];
G2L["12"]["Name"] = [[sg]];
G2L["12"]["Position"] = UDim2.new(0.1373, 0, 0.93389, 0);

-- StarterGui.ScreenGui.Main.mirror
G2L["13"] = Instance.new("TextLabel", G2L["2"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextSize"] = 15;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[🟢 Mirror Fractal]];
G2L["13"]["Name"] = [[mirror]];
G2L["13"]["Position"] = UDim2.new(0.39243, 0, 0.93389, 0);

-- StarterGui.ScreenGui.Main.shadowHolder
G2L["14"] = Instance.new("Frame", G2L["2"]);
G2L["14"]["ZIndex"] = -1;
G2L["14"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["Name"] = [[shadowHolder]];
G2L["14"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Main.shadowHolder.umbraShadow
G2L["15"] = Instance.new("ImageLabel", G2L["14"]);
G2L["15"]["ZIndex"] = -1;
G2L["15"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["15"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["15"]["ImageTransparency"] = 0.86;
G2L["15"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["15"]["Image"] = [[rbxassetid://1316045217]];
G2L["15"]["Size"] = UDim2.new(1, 10, 1, 10);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Name"] = [[umbraShadow]];
G2L["15"]["Position"] = UDim2.new(0.5, 0, 0.5, 6);

-- StarterGui.ScreenGui.Main.shadowHolder.penumbraShadow
G2L["16"] = Instance.new("ImageLabel", G2L["14"]);
G2L["16"]["ZIndex"] = -1;
G2L["16"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["16"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["16"]["ImageTransparency"] = 0.88;
G2L["16"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Image"] = [[rbxassetid://1316045217]];
G2L["16"]["Size"] = UDim2.new(1, 10, 1, 10);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Name"] = [[penumbraShadow]];
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 6);

-- StarterGui.ScreenGui.Main.shadowHolder.ambientShadow
G2L["17"] = Instance.new("ImageLabel", G2L["14"]);
G2L["17"]["ZIndex"] = -1;
G2L["17"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["17"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["17"]["ImageTransparency"] = 0.88;
G2L["17"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17"]["Image"] = [[rbxassetid://1316045217]];
G2L["17"]["Size"] = UDim2.new(1, 10, 1, 10);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[ambientShadow]];
G2L["17"]["Position"] = UDim2.new(0.5, 0, 0.5, 6);


return G2L["1"], require;
