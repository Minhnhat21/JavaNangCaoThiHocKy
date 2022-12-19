$(document).ready(function () {
    $(".result-group").hide();
    $("#console-rank").hide();
    $("#btn-reload").click(function(){
        location.reload(true);
    });

});

function searchStudentByName() {
    $(".error").empty()
    $('#p-h4').empty()
    $(".error").hide()
    $(".result-group").hide();
    $.ajax({
        type: "GET",
        url: "api/search?key=" + $("#search-content").val(),
        dataType: 'json',

        success: function (response) {
			console.log(response)
            getRank(response.citizenIdentity);
            let isPass = '';
            if(response.pass) {
				isPass = "Đậu";
			} else isPass = "Trượt"
            let str = '';
                str += "<tr>";
                str += "<td>" + response.citizenIdentity + "</td>";
                str += "<td>" + response.fullName + "</td>";
                str += "<td>" + response.totalScore + "</td>";
               	str += "<td>" + isPass + "</td>";
                str += "</tr>";
            $('.result-group').show();
            $('#body-data').html(str);
        },
        error: function (e) {
            $('.error').show();
            $('.error').append("Không tìm thấy căn cước công dân này, vui lòng nhập lại");
        }

    })
}
function getRank(citizenId) {
    $.ajax({
        type: "GET",
        url: 'api/rank?key=' + citizenId,
        dataType: 'json',
        success: function(data){
            let str = data;
            $('#p-h4').append(str);
        }
    })
}

function login() {
  
    $('#btn_login').on('click', function (e) {      
      
         $.ajax({
            type: "GET",
            url: '/login/register?username=' + $('#usernameInput').val()+ '&password=' + $('#floatingPassword').val(),
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