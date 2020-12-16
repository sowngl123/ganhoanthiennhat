<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Send to friend</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
<%--                    <label>Sender Email: </label>--%>
                    <input hidden id="sender" class="form-control" value="travelixpoly@gmail.com">
                </div>
                <div class="form-group">
                    <label>Nhập email người nhận: </label>
                    <input id="email" class="form-control">
                </div>
                <div class="form-group">
                    <label>Lời nhắn: </label>
                    <textarea type="text" id="comments" class="form-control" rows="15"></textarea>
                </div>
                <input hidden type="text" id="id">
            </div>
            <div class="modal-footer">
                <button class="btn btn-default btn-send" >Send</button>
                <button class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>