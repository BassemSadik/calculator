### variables ###
key = e.target
action = key.dataset.action

calculator = document.querySelector(‘.calculator’)
keys = calculator.querySelector(‘.btn’)

### recognize button press ###
keys.addEventListener ‘click’, e ->
 if e.target.matches(‘button’) 
 if not action
  console.log 'number key!'

 if action is 'add' or action is 'subtract' or action is 'multiply' or action is 'divide'
  console.log 'operator key!'

if action is 'decimal'
  console.log 'decimal key!'

if action is 'clear'
  console.log 'clear key!'

if action is calculate'
  console.log 'equal key!'