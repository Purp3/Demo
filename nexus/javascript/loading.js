const loadingactive = document.querySelector('.loading');
const containeractive = document.querySelector('.container');
window.onload = function(){
    setTimeout(aftertime, 3000)
 };
 
 function aftertime() { 
    loadingactive.classList.toggle('active');
    containeractive.classList.toggle('active');
}