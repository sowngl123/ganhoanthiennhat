$(document).ready(function() {
    $(".btn-open-dialog").click(function () {
        var id =  $(this).closest("div").attr("data-id");
        $("#myModal #id").val(id);
    });
    $(".btn-send").click(function () {
        var form = {
            id: $("#myModal #id").val(),
            to:  $("#myModal #email").val(),
            body:  $("#myModal #comments").val(),
            from:  $("#myModal #sender").val()
        }
        $.ajax({
            url:"/list/send-to-friend",
            data:form,
            success: function(response){
                console.log(response)
                if(response){
                    alert("Đã gửi thành công!")
                }
                else {
                    alert("Lỗi gửi mail")
                }
            }
        })
    });
    $(".btn-star").click(function () {
        var id =  $(this).closest("div").attr("data-id");
        $.ajax({
            url:"/list/add-tofavo/"+id,
            success: function(response)
            {
                console.log(response)
                if(response){
                    alert("Đã thêm vào thành công!")
                }
                else {
                    alert("Bạn đã tích chọn sản phầm này ")
                }
            }
        })
    })
});
