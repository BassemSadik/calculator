### variables ###
button_clicked = this.innerHTML
currentvalue = document.getElementById("currentvalue").innerHTML
newstring = currentValue + button_clicked ### add into newString ###
newnumber = parseInt(newString, 10) ### remove leading 0, make number ###
currentvalue = getcurrentvalue()

### button clicked ###
$(".btn").click(event) ->
console.log "you clicked: ", button_clicked
$(".item-header").html(button_clicked)

$(".btn2").click(event) ->
console.log "you clicked: ", button_clicked
$(".item-header").html(button_clicked)

$(".btn3").click(event) ->
console.log "you clicked: ", button_clicked
$(".item-header").html(button_clicked)

###########################################################

getcurrentvalue() ->
     currentvalue = parseInt(currentValue, 10)
     currentvalue

clearcurrentvalue(event) ->
     $("#clear").click(event)
     console.log 'calling clearcurrentvalue... currentvalue is 0'
     $("#currentValue").html(0)
     getCurrentValue()

   clearCurrentValue(event)

   clickButton(event) ->
     $(".btn").click(event)
    console.log "1. you clicked: ", button_clicked
    console.log '1. typeof button_clicked is: ', typeof button_clicked
   if $(this).hasClass"num"
         console.log '2. ${button_clicked} is a num class!'
         currentValue = currentValue.toString()
         console.log '2. replace currentValue with newnumber: ', newnumber
         $("#currentValue").html(newnumber)
    
     $(".btn2").click(event)
    console.log "1. you clicked: ", button_clicked
    console.log '1. typeof button_clicked is: ', typeof button_clicked
   if $(this).hasClass"num"
         console.log '2. ${button_clicked} is a num class!'
         currentvalue = currentvalue.toString()
         console.log '2. replace currentValue with newNumber: ', newnumber
         $("#currentvalue").html(newnumber)
    
     $(".btn3").click(event)
    console.log "1. you clicked: ", button_clicked
    console.log '1. typeof button_clicked is: ', typeof button_clicked
   if $(this).hasClass"num"
         console.log '2. ${button_clicked} is a num class!'
         currentvalue = currentValue.toString()
         console.log '2. replace currentvalue with newnumber: ', newnumber
         $("#currentvalue").html(newnumber)

    button_clicked
   clickButton(event)
