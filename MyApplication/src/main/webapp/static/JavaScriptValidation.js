function validation(){
    var user=document.getElementById('user').value;
    var password=document.getElementById('password').value;
    var cpass=document.getElementById('cpass').value;
    var mobile=document.getElementById('mobile').value;
    var email=document.getElementById('email').value;

    

    if(user==""){
        document.getElementById('Username').innerHTML=" ** Please fill the username field";
        return false;
    }

    if((user.length <= 2 ) || (user.length >20 )){
        document.getElementById('Username').innerHTML=" ** length must be between 2 to 20 ";
        return false;
    }
    if(!isNaN(user)){
        document.getElementById('Username').innerHTML=" ** only characters are allowed";
        return false;
    }
    
    //-----------------------------------------------------------------------------------
    
    if(password==""){
        document.getElementById('Password1').innerHTML=" ** Please fill the password field";
        return false;
    }

    if((password.length<=5) || (password.length>20)){
        document.getElementById('Password1').innerHTML=" ** Password size must be between 5 to 20";
        return false;
    }


    //--------------------------------------------------------------------------------------
    
    if(cpass==""){
        document.getElementById('cpass1').innerHTML=" ** Please fill the  confirm password field";
        return false;
    }



    if(password!=cpass){
        document.getElementById('cpass1').innerHTML=" ** Password not matched";
        return false;
    }
    //-------------------------------------------------------------------------------------
    
    if(mobile==""){
        document.getElementById('mobile1').innerHTML=" ** Please fill the mobile field";
        return false;
    }

    if(isNaN(mobile)){
        document.getElementById('mobile1').innerHTML=" ** insert only numbers";
        return false;
    }

    if(mobile.length!=10){
        document.getElementById('mobile1').innerHTML=" ** Mobile should be 10 Digit ";
        return false;
    }
    //-------------------------------------------------------------------------------------
    if(email==""){
        document.getElementById('email1').innerHTML=" ** Please fill the emial field";
        return false;
    }

    if(email.indexOf('@')<= 0){
        document.getElementById('email1').innerHTML=" ** @ postion is wrong";
        return false;
    }
    if((email.charAt(email.length-4)!='.') &&(email.charAt(email.length-3)!='.')){
        document.getElementById('email1').innerHTML=" ** . Position is invalid";
        return false;
    }
    //--------------------------------------------------------------------------------------  
}
