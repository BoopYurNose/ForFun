ModuleList = {
    AllListItems = {Test = false}, -- Every List item you input

    --[[Instead of hardcoding each List item to a table of either complete or incomplete I'll assign a bolean value of false
    to each List item indicating that it's not complete. When it's complete the bolean value will be changed to true

    ]]
    Options = {"AddTask", "RemoveTask", "ViewList"}
}

return ModuleList