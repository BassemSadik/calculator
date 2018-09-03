### variables ###
number_clicked = this.innerHTML
operand = null
currentvalue = document.getElementById("currentValue")
newString = currentValue + number_clicked ### add into newString ###
newnumber = parseInt(newString, 10) ### remove leading 0, make number ###

# Operators
operators = {
      '+': true,
      '-': true,
      'x': true,
      '/': true,
      '%': true,
      '=': true,
      isOperator: (sign) -> operators[sign]
}
operator = null
secondOperand = null

# Buttons with numbers in them
numberButtons = document.getElementsByClassName('btn')
# Buttons with operators in them
operatorButtons = document.getElementsByClassName('operator')

# Update current value and display it
updateCurrentValue = () ->
      button_clicked = this.innerHTML

      # Check if button clicked is an operator
      isOperator = operators.isOperator(button_clicked)
      if isOperator then operator = button_clicked else operator = null

      # if this isn't the first number pressed set secondOperand
      if operand isnt null then secondOperand = button_clicked


      # When first number is clicked update display with that number
      if operator is null and operand is null
            currentValue.innerHTML = button_clicked
            operand = button_clicked

      # When an operator is clicked and no previous current value is stored
      if operand is null and operator isnt null
            operand = eval('0' + operator)
            
      if operand isnt null and operator isnt null
            operand = eval(operand + operator + secondOperand)
      else
            operand = eval(operand + operator + button_clicked)
            currentValue.innerHTML = operand


# Add an event listener to the button to update current value when clicked
addClickListener = (btn) -> btn.addEventListener('click', updateCurrentValue)

# Loop over number buttons to add event listeners to each one on click
addClickListener btn for btn in numberButtons

# Loop over operator buttons to add event listeners to each one on click
addClickListener btn for btn in operatorButtons