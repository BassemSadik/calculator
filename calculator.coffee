### variables ###
number_clicked = this.innerHTML
operand = null
currentvalue = document.getElementById("currentValue")
newString = currentValue + number_clicked ### add into newString ###
newnumber = parseInt(newString, 10) ### remove leading 0, make number ###

# Operators
plus = '+'
minus = '-'
times = 'x'
divide = '/'
modulus = '%'
equals = '='
operator = null

# Buttons with numbers in them
numberButtons = document.getElementsByClassName('btn')

# Update current value and display it
updateCurrentValue = () ->
      number_clicked = this.innerHTML
      # When first number is clicked
      if operator is null and operand is null then currentValue.innerHTML = number_clicked

      # When an operator is clicked and no previous current value is stored
      if operand is null and operator isnt null
      then operand = number_clicked
      else
            operand = eval(operand + operator + number_clicked)
            currentValue.innerHTML = operand


# Add an event listener to the button to update current value when clicked
addClickListener = (btn) -> btn.addEventListener('click', updateCurrentValue)

# Loop over number buttons to add event listeners to each one on click
addClickListener btn for btn in numberButtons