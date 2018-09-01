### variables ###
button_clicked = this.innerHTML
leftValue
currentvalue = document.getElementById("currentValue")
newString = currentValue + button_clicked ### add into newString ###
newnumber = parseInt(newString, 10) ### remove leading 0, make number ###

numberButtons = document.getElementsByClassName('btn')

console.log numberButtons

# Update current value and display it
updateCurrentValue = () ->
      button_clicked = this.innerHTML
      currentValue.innerHTML = button_clicked

# Add an event listener to the button to update current value when clicked
addClickListener = (btn) -> btn.addEventListener('click', updateCurrentValue)

# Loop over number buttons to add event listeners to each one on click
addClickListener btn for btn in numberButtons