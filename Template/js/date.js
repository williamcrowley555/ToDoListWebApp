function DateCheck()
    {
      var StartDate= document.getElementById('txtStartDate').value;
      var EndDate= document.getElementById('txtEndDate').value;
      var eDate = new Date(EndDate);
      var sDate = new Date(StartDate);
      if(StartDate!= '' && StartDate!= '' && sDate> eDate)
        {
        alert("Ngày kết thúc phải lớn hơn ngày bắt đầu");
        return false;
        }
    }