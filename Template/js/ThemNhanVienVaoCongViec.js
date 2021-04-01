$("#tblDanhSachNhanVienThamGia").on('click', '.delete', function() {
	$(this).closest('tr').find('.delete').html("Thêm");
	$(this).closest('tr').find('.delete').toggleClass("delete add btn-danger btn-success");
	// var id = $(this).closest('tr').find('.id').html();			
	// $("input[value='"+$.trim(id)+"']").prop("checked",false);
	var currow = $(this).closest('tr').html();
	$("#tblDanhSachNhanVien").append("<tr>" + currow + "</tr>");
	$(this).closest('tr').remove();
});

$("#tblDanhSachNhanVien").on('click', '.add', function() {
	$(this).closest('tr').find('.add').html("Xóa");
	$(this).closest('tr').find('.add').toggleClass("add delete btn-success btn-danger");
	// var id = $(this).closest('tr').find('.id').html();
	// $("input[value='"+$.trim(id)+"']").prop("checked",true);
	// $(this).closest('a').attr("href",id); (Khong duoc xoa dong nay)
    var currow = $(this).closest('tr').html();
    $("#tblDanhSachNhanVienThamGia").append("<tr>" + currow + "</tr>");
    $(this).closest('tr').remove();
});