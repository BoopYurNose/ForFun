ModuleList = {
    AllListItems = {
        {Task = "Meditate 3 minutes", Completed = false},
        {Task = "gym", Completed = false},
        {Task = "code 6 hours", Completed = false},
        {Task = "Journal", Completed = false},
        {Task = "Draw 1 hour", Completed = false},
    }, -- Every List item you input --[[Figure out how to have an existing string key with a string attached (the task) and a bolean value assigned to it]]

    --[[Instead of hardcoding each List item to a table of either complete or incomplete I'll assign a bolean value of false
    to each List item indicating that it's not complete. When it's complete the bolean value will be changed to true
    NOTE: Make it so you can actually add items to the module list then test the functionality of printing it in the main menu
    ]]
    Options = {"AddTask", "RemoveTask", "ViewList", "MarkComplete",}
}

return ModuleList
