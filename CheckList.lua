local ModuleList = require("ModuleList")

function AddTask()
    print("Welcome to the task add menu")
    print("First what would you like to name your task?:")
    UserTaskName = io.read()
    local TaskName = UserTaskName
    print(" \n Great! Adding this task now")
    
    local NewTask = {Task = TaskName, Completed = false}
    table.insert(ModuleList.AllListItems, NewTask)

    for Iterator, TaskData in ipairs(ModuleList.AllListItems) do
        print(Iterator..": "..TaskData.Task.." | Completed: "..tostring(TaskData.Completed))
    end
    print("returning to MainMenu")
    MainMenu()
end

function RemoveTask()
    print("Welcome to the Remove task menu. \n")

    print("What task would you like to remove?")
    for Iterator, TaskData in ipairs(ModuleList.AllListItems) do
        print(Iterator..": "..TaskData.Task.." | Completed: "..tostring(TaskData.Completed))
    end

    print("Just type the task by its iterator number (The number at the beginning of it (⩾﹏⩽))")
    UserRemove = io.read()

    local NumCheck = tonumber(UserRemove)
    
    if NumCheck then
        print("Yay this is valid (⩾﹏⩽)")
    else
        print("Sorry this isn't a valid number, try again going back to MainMenu")
        MainMenu()
    end

    for Iterate, TaskData in ipairs(ModuleList.AllListItems) do
        if NumCheck == Iterate then
            print(Iterate..": "..TaskData.Task.." | Completed: "..tostring(TaskData.Completed))
            print("Has been removed")
            table.remove(ModuleList.AllListItems, NumCheck)
            MainMenu()
            break
        end
    end

    print("Error number is out of range, no task was removed. Going back to MainMenu")
    MainMenu()
    
end

function MarkComplete()
    print("Welcome to the Mark Complete menu")
    
    for Iterator, TaskInfo in ipairs(ModuleList.AllListItems) do
        print(Iterator..": "..TaskInfo.Task.." | Completed: "..tostring(TaskInfo.Completed))
    end

    print("Type the number of the task you'd like to mark as complete")
    UserCompleteInput = io.read()

    NumberChoiceComplete = tonumber(UserCompleteInput)
    if NumberChoiceComplete then
        print("Valid number")
    else
        print("This is not a valid number, returning to MainMenu")
        MainMenu()
    end

    for Iterator, TaskData in ipairs(ModuleList.AllListItems) do
        if NumberChoiceComplete == Iterator then
            local task = ModuleList.AllListItems[NumberChoiceComplete]
            task.Completed = true
            MainMenu()
            break
        end
    end
    

    print("Error number is out of range, no Completed status was changed. Going back to MainMenu")
    MainMenu()
end

function ViewList()
    print("Here is a list of all your current tasks \n")

    for k, v in ipairs(ModuleList.AllListItems) do
        print(k..": "..v.Task.." | Completed: "..tostring(v.Completed))
    end

    print("Returning to MainMenu")
    MainMenu()
end

function MainMenu()
    local CurrentDate = os.date("%m-%d-%Y")
    print("\n")
    print("The current date is: "..CurrentDate)
    print("Here is your List of tasks \n")
    
    for Iterator, TaskData in ipairs(ModuleList.AllListItems) do
        print(Iterator..": "..TaskData.Task.." | Completed: "..tostring(TaskData.Completed))
    end

    print("\n Type in one of the options below to do them \n")

    for k, v in ipairs(ModuleList.Options) do
        print(v.."\n")
    end

    UserInput = io.read()

    for Key, Value in pairs(ModuleList.Options) do
        if UserInput == ModuleList.Options[1] then
            AddTask()
            break
        elseif UserInput == ModuleList.Options[2] then
            RemoveTask()
            break
        elseif UserInput == ModuleList.Options[3] then
            ViewList()
            break
        elseif UserInput == ModuleList.Options[4] then
            MarkComplete()
            break
        end

        print("Sorry not valid option")
        MainMenu()
    end
    

end

MainMenu()