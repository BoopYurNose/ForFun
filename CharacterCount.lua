-- I made this quickly so I could count how many characters are in a dialog without having to do that manually (BTW this counts all characters including spaces)
function DialogCounter(Dialog)
    print("Total Characters is: "..#Dialog)
    for i = 1, #Dialog do
        print(i..string.sub(Dialog, 1, i))
    end
end



print("Type in your Dialog or whatever the fuck text you have")
DialogInput = io.read()

DialogCounter(DialogInput)