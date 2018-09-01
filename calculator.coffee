### variables ###
button_clicked = this.innerHTML
currentvalue = document.getElementById("currentValue")
newString = currentValue + button_clicked ### add into newString ###
newnumber = parseInt(newString, 10) ### remove leading 0, make number ###

numberButtons = document.getElementsByClassName('btn')

console.log numberButtons

# Update current value and display it
updateCurrentValue = () ->
      button_clicked = this.innerHTML
      currentValue.innerHTML = button_clicked

addClickListener = (btn) -> btn.addEventListener('click', updateCurrentValue)

addClickListener btn for btn in numberButtons


### button clicked ###
# $(".btn").onclick -> console.log "you clicked: ", button_clicked
# $(".item-header").html(button_clicked)

# $(".btn2").click(event) ->
# console.log "you clicked: ", button_clicked
# $(".item-header").html(button_clicked)

# $(".btn3").click(event) ->
# console.log "you clicked: ", button_clicked
# $(".item-header").html(button_clicked)

###########################################################
