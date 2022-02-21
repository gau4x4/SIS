function formValidation()  
{  
  var uid = document.registration.username;  
  var passid = document.registration.mobile;  
  var uname = document.registration.newpassword;  
  var uadd = document.registration.repeatnewpassword;  
  var ucountry = document.registration.country;  
  var uzip = document.registration.zip;  
  var uemail = document.registration.email;  
  var umsex = document.registration.msex;  
  var ufsex = document.registration.fsex; 

  if(userid_validation(uid,5,12))  
  {  
   if(passid_validation(passid,10,10)&&allLetter(passid))  
    {  
     if(passid_validation1(uname,7,12))  
      {  
       if(passid_validation12(uadd,7,12)&&passid_validation123(uadd,uname))  
        {   
         if(countryselect(ucountry))  
           {  
            if(allnumeric(uzip))  
             {  
              if(ValidateEmail(uemail))  
               {  
                if(validsex(umsex,ufsex))  
                 {  
                 }  
               }   
             }  
           }   
        }  
      }  
    }  
  }  
return false;  
}  

    function userid_validation(uid,mx,my)  
     {  
     var uid_len = uid.value.length;  
      if (uid_len == 0 || uid_len >= my || uid_len < mx)  
       {  
        alert("USERNAME MUST BE ENTERED/LENGTH BETWEEN "+mx+" TO "+my);  
        uid.focus();  
        return false;  
       }  
      return true;  
     }  

     function passid_validation(passid,mx,my)  
     {  
      var passid_len = passid.value.length;  
       if (passid_len == 0 ||passid_len > my || passid_len < mx)  
        {  
        alert("MOBILE NUMBER SHOULD NOT BE EMPTY / LENGTH SHOULD BE "+mx);  
        passid.focus();  
        return false;  
        }  
return true;  
}  
function passid_validation1(passid,mx,my)  
     {  
      var passid_len = passid.value.length;  
       if (passid_len == 0 ||passid_len > my || passid_len < mx)  
        {  
        alert("NEW PASSWORD SHOULD NOT BE EMPTY / LENGTH SHOULD BE 7-12");  
        passid.focus();  
        return false;  
        }  
return true;  
}  
function passid_validation12(passid,mx,my)  
     {  
      var passid_len = passid.value.length;  
       if (passid_len == 0 ||passid_len > my || passid_len < mx)  
        {  
        alert("NEW PASSWORD SHOULD NOT BE EMPTY / LENGTH SHOULD BE 7-12");  
        passid.focus();  
        return false;  
        }  
return true;  
}  
function passid_validation123(passid,passid1)  
     {  
      var passid_len = passid.value.length;  
       if (passid.value!=passid1.value)  
        {  
        alert("PASSWORD DO NOT MATCH");  
        passid.focus();  
        return false;  
        }  
return true;  
}  

function allLetter(uname)  
{   
var letters = /^[0-9]+$/;  
if(uname.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('PASSWORD MUST HAVE NUMBERS ONLY');  
uname.focus();  
return false;  
}  
}  

function alphanumeric(uadd)  
{   
var letters = /^[0-9a-zA-Z]+$/;  
if(uadd.value.match(letters))  
{  
return true;  
}  
else  
{  
alert('User address must have alphanumeric characters only');  
uadd.focus();  
return false;  
}  
}  

function countryselect(ucountry)  
{  
if(ucountry.value == "Default")  
{  
alert('Select your country from the list');  
ucountry.focus();  
return false;  
}  
else  
{  
return true;  
}  
}  



function allnumeric(uzip)  
{   
var numbers = /^[0-9]+$/;  
if(uzip.value.match(numbers))  
{  
return true;  
}  
else  
{  
alert('ZIP code must have numeric characters only');  
uzip.focus();  
return false;  
}  
}  



function ValidateEmail(uemail)  
{  
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(uemail.value.match(mailformat))  
{  
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
uemail.focus();  
return false;  
}  
}  

function validsex(umsex,ufsex)  
{  
x=0;  
  
if(umsex.checked)   
{  
x++;  
} if(ufsex.checked)  
{  
x++;   
}  
if(x==0)  
{  
alert('Select Male/Female');  
umsex.focus();  
return false;  
}  
else  
{  
alert('Form Successfully Submitted');  
window.location.reload()  
return true;}  
}  

