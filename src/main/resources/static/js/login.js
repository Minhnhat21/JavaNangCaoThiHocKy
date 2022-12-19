$(document).ready(function () {

});

function login() {
  
    $('#btn-login').on('click', function (e) {      
        /* let myURL = "localhost:8081/login/signin?username="+ $('#username_input').val() 
            	+ "&password=" + $('#password_input').val();*/
         $.ajax({
            type: "GET",
            url: '/login/signin?username=' + $('#username_input').val()+ '&password=' + $('#password_input').val(),
            dataType: 'json',

            success: function(respone) {
                console.log(respone)    
            },
            error: function (error) {
            	console.log(error);
            	alert("Loi roi ban oi");
        	}
        });      
	})
};
