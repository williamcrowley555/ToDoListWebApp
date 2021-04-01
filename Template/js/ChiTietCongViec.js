$(document).ready(function(){
   	$("#binhLuan").show();
   	$("#tblBangBinhLuan").show();
  	$("#nhacNho").hide();
   	$("#tblBangNhacNho").hide();
});
$("#buttonBinhLuan").on("click",function(){
    $("#binhLuan").show();
    $("#tblBangBinhLuan").show();
    $("#nhacNho").hide();
    $("#tblBangNhacNho").hide();
   });
$("#buttonNhacNho").on("click", function(){
   	$("#binhLuan").hide();
   	$("#tblBangBinhLuan").hide();
   	$("#nhacNho").show();
   	$("#tblBangNhacNho").show();
});
$("#binhLuan").on("keydown", function(e){
   	if(e.which==13)
   	{
   		var binhLuan = document.getElementById("binhLuan").value;
   		$("#tblBangBinhLuan").append('<tr> <td> <div class="d-flex flex-column comment-section"> <div class="bg-white p-2"> <div class="d-flex flex-row user-info"><img class="rounded-circle" src="img/HaMinhKhoi.jpg" width="40"> <div class="d-flex flex-column justify-content-start ml-2"><span class="d-block font-weight-bold name">Hà Minh Khôi</span><span class="date text-black-50">2020-04-01</span></div> </div> <div class="mt-2"> <p class="text-gray-900">'+ binhLuan +'</div> </div> </div> </td> </tr>');
   	}
});
$("#nhacNho").on("keydown", function(e){
   	if(e.which==13)
   	{
   		var nhacNho = document.getElementById("nhacNho").value;
   		$("#tblBangNhacNho").append('<tr> <td> <div class="d-flex flex-column comment-section"> <div class="bg-white p-2"> <div class="d-flex flex-row user-info"><img class="rounded-circle" src="img/HaMinhKhoi.jpg" width="40"> <div class="d-flex flex-column justify-content-start ml-2"><span class="d-block font-weight-bold name">Hà Minh Khôi</span><span class="date text-black-50">2020-04-01</span></div> </div> <div class="mt-2"> <p class="text-gray-900">'+ nhacNho +'</div> </div> </div> </td> </tr>');
   	}
});