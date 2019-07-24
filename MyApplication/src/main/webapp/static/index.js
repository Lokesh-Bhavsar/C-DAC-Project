function validation(){
    var email=document.getElementById('email').value;
    var password=document.getElementById('password').value;

    if(email==""){
        alert("Please fill the emial field");
        // document.getElementById('email').innerHTML=" ** Please fill the emial field";
        return false;
    }

    if(email.indexOf('@')<= 0){
       alert("in email @ is not there or its postion is wrong");
        // document.getElementById('email').innerHTML=" ** @ postion is wrong";
        return false;
    }
    if((email.charAt(email.length-4)!='.') &&(email.charAt(email.length-3)!='.')){
        alert("in email . is not there or its Position is invalid");
        // document.getElementById('email').innerHTML=" ** . Position is invalid";
        return false;
    }
//-------------------------------------------------------------------------------------
         
    if(password==""){
       alert("Please fill the password field");
        // document.getElementById('password1').innerHTML=" ** Please fill the password field";
        return false;
    }

    if((password.length<=5) || (password.length>20)){
       alert("Password size must be between 5 to 20");
        // document.getElementById('password1').innerHTML=" ** Password size must be between 5 to 20";
        return false;
    }


}