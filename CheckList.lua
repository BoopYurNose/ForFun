local ModuleList = require("ModuleList")

function MainMenu()
    local CurrentDate = os.date("%m-%d-%Y")
    print("The current date is: "..CurrentDate)
    
    for Task, Completed in pairs(ModuleList.AllListItems) do
        
        print(Task.." "..tostring(Completed))

    end

    print("\n Type in one of the options below to do them \n")
end

MainMenu()