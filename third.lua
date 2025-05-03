local data = game:GetService("DataStoreService"):GetDataStore("Storedscript")


local func = "return function (context,string:string,times:number) return string,times end"
local stored = data:SetAsync("Storedscript",func) 
local getstored = data:GetAsync("Storedscript")
print(getstored)
