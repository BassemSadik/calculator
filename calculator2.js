const calculator = document.querySelector("#calculator");
const keys = calculator.querySelector(".calculator_keys");

keys.addEventListener('click', e => {
 if (e.target.matches('button')) {
  const key = e.target
  const action = key.dataset.action
  if (!action) {
    console.log('number key!')
  }
  if (
    action === 'add' ||
    action === 'subtract' ||
    action === 'multiply' ||
    action === 'divide' ||
    action === 'percent' ||
    action === 'swap'
  ) {
    console.log('operator key!')
  }
  
  if (action === 'decimal' ) {
    console.log('decimal key!')
    }
  if (action === 'clear') {
    console.log('clear key!')
    }
  if (action === 'calculate') {
    console.log('equal key!')
    }
 }
})

const display = document.querySelector('.calculator_display')
keys.addEventListener('click', e => {
  if (e.target.matches('button')) {
    const key = e.target
    const action = key.dataset.action
    const keyContent = key.textContent
    const displayedNum = display.textContent
    const previousKeyType = calculator.dataset.previousKeyType
    if (!action) {
      if (displayedNum === '0') {
        display.textContent = keyContent
        }
      if (action === 'decimal') {
        display.textContent = displayedNum + '.'
      }
      if (displayedNum !== '0') {
        display.textContent = displayedNum +keyContent
        }
      if (displayedNum.length >= 11){
          display.textContent = displayedNum
          var snd11 = document.getElementById("myaudio11");  
            limit.play(); 
            
          }  
      }else {
        display.textContent = displayedNum + keyContent
      }
      if (display.textContent === "."){
        if (!displayedNum.includes('.')) {
          display.textContent = displayedNum + '.'
        }
          display.textContent = displayedNum
      }
    }
})