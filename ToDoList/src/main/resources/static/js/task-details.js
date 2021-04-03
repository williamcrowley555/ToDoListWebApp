$(document).ready(function(){
   	$("#binhLuan").show();
   	$("#tblBangBinhLuan").show();
  	$("#nhacNho").hide();
   	$("#tblBangNhacNho").hide();

    scrollToBottomBangBinhLuan();
    clearInputValue();
});

$("#buttonBinhLuan").on("click",function(){
    $("#binhLuan").show();
    $("#tblBangBinhLuan").show();
    $("#nhacNho").hide();
    $("#tblBangNhacNho").hide();
    scrollToBottomBangBinhLuan();
});

$("#buttonNhacNho").on("click", function(){
   	$("#binhLuan").hide();
   	$("#tblBangBinhLuan").hide();
   	$("#nhacNho").show();
   	$("#tblBangNhacNho").show();
    scrollToBottomBangNhacNho();
});

$("#binhLuan").on("keydown", function(e){
   	if(e.which==13)
   	{
   		var binhLuan = document.getElementById("binhLuan").value;
   		scrollToBottomBangBinhLuan();
        $('#commentForm').submit();
        return false;
   	}
});

$("#nhacNho").on("keydown", function(e){
   	if(e.which==13)
   	{
   		var nhacNho = document.getElementById("nhacNho").value;
   		scrollToBottomBangNhacNho();
        $('#reminderForm').submit();
        return false;
   	}
});

function getToday()
{
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();
    today = dd + '-' + mm + '-' + yyyy;
    return today;
}

function scrollToBottomBangBinhLuan()
{
    var scrollBottomTblBangBinhLuan = Math.max($('#tblBangBinhLuan').height() - $('#divTbl').height(), 0);
    $('#divTbl').scrollTop(scrollBottomTblBangBinhLuan);
}

function scrollToBottomBangNhacNho()
{
    var scrollBottomTblBangNhacNho = Math.max($('#tblBangNhacNho').height() - $('#divTbl').height(), 0);
    $('#divTbl').scrollTop(scrollBottomTblBangNhacNho);
}

function clearInputValue()
{
    $("#nhacNho").val('');
    $("#binhLuan").val('');
}