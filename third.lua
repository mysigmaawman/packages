local data = game:GetService("DataStoreService"):GetDataStore("Storedscript")


local func = [[return function (context,string:string,times:number) 
  return string,times 
end]]
local stored = data:SetAsync("Storedscript",func) 
local datastore = game:GetService("DataStoreService"):GetDataStore("StoredScript2")

local func2 = [[return {
	Name = "No";
	Description = "Yes";
	Args = {
		{
			Type = "string";
			Name = "String";
			Description = "Yes";
		},
		{
			Type = "number";
			Name = "Times";
			Description = "Yes";
		}
	}
}]]
local setstored = datastore:SetAsync("StoredScript2",func)

local getstored = data:GetAsync("Storedscript")
local getstored2 = data:GetAsync("StoredScript2")

local first = Instance.new("ModuleScript")
first.Name = "FromGithub"
first.Parent = game.ServerScriptService.CustomCommands
first.Source = getstored

local sec = Instance.new("ModuleScript")
sec.Name = "FromGithubServer"
sec.Parent = game.ServerScriptService.CustomCommands
sec.Source = getstored2


