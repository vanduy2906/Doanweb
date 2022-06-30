var user = document.querySelector('#user');
user.addEventListener('keyup', function(){
   var u_times = document.querySelector('.u_times');
   var u_check = document.querySelector('.u_check');
   if(user.value.length == 0 || user.value.length < 6 || user.value.length > 50){
       user.style.border = '1px solid red';
       u_times.style.display = 'block';
       u_check.style.display = 'none';
       return false;
   } else {
       user.style.border = '1px solid green';
       u_times.style.display = 'none';
       u_check.style.display = 'block';
       return true;
   }
})

var pass = document.querySelector('#pass');
pass.addEventListener('keyup', function(){
   var p_times = document.querySelector('.p_times');
   var p_check = document.querySelector('.p_check');
   if(pass.value.length == 0 || pass.value.length < 8 || pass.value.length > 30){
       pass.style.border = '1px solid red';
       p_times.style.display = 'block';
       p_check.style.display = 'none';
       return false;
   } else {
       pass.style.border = '1px solid green';
       p_times.style.display = 'none';
       p_check.style.display = 'block';
       return true;
   }
})

// check email
function checkEmail() { 
    var email = document.getElementById('#user'); 
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
    if (!filter.test(user.value)) {  
             return false; 
    }
    else{ 
             return true; 
    } 
} 
function validate() {
    if (  checkEmail() == 0 ) {
        document.getElementById('error').innerHTML = 'Xin vui lòng nhập E-mail.\nExample@gmail.com ';
        return false;
    } else if (pass.value == 0 || pass.value.length < 8 || pass.value.length > 30 ){
        document.getElementById('error').innerHTML = 'Xin vui lòng nhập Password !';
        return false;
    } else {
        return true ;
    }
}
