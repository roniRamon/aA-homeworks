document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById("mycanvas");

  let ctx = canvas.getContext('2d');
  ctx.fillStyle = 'black';
  ctx.fillRect(10, 10, 500, 500);

  ctx.beginPath();
  ctx.arc(75, 75, 50, 0, 2* Math.PI);
  ctx.strokeStyle = 'white';
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = 'green';
  ctx.fill();



});
