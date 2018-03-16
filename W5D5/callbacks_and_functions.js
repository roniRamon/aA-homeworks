function simpleTimeout(){
  window.setTimeout( () => {
  alert("HAMMERTIME");
  }, 5000);
}

function hammerTime(time){
  window.setTimeout(() => {
    alert(`${time} is hammerTime!`);
  }, time);
}
