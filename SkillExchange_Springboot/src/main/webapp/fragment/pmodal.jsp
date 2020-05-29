<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<script>
    
</script>
</head>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog"
	aria-labelledby="editModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="editModalLabel">請輸入想要推播的內容</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				 <input type="text" id="insertTitle" placeholder="請輸入要推播的主題名稱" class='form-control mb-3'>
				 <textarea  id="insertText" placeholder="請輸入要推播的內容" class='form-control'></textarea>
			</div>
			<div class="modal-footer">
<!-- 				<button type="button" class="btn btn-primary" data-dismiss="modal" -->
<!-- 					id="editalert">確認</button> -->
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="editCancel">取消</button>
				<button type="button" class="btn btn-primary" id="editConfirm" data-dismiss="modal"
					onclick="sendMessage()">確認</button>
			</div>
		</div>
	</div>
</div>
<script src="js/promotion.js"></script>
