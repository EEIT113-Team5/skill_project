<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<style>
.timepicker {
	z-index: 1151 !important;
}
.required{
	color:red;
}
</style>
<script>
	function typeChange() {
		if ($("#type").val() == "frequency") {
			$("#frequency").attr("style",
					"visibility:visible;background-color: #D2E9FF")
			$("#fixed").attr("style", "display:none;background-color: #D2E9FF")
		} else {
			$("#frequency").attr("style",
					"display:none;background-color: #D2E9FF")
			$("#fixed").attr("style",
					"visibility:visible;background-color: #D2E9FF")
		}
	}
	function freqChange() {
		if ($("#freqSel").val() == "month") {
			$("#dayInput").attr("style",
					"visibility:visible;background-color: #D2E9FF")
		} else {
			$("#dayInput").attr("style",
					"display:none;background-color: #D2E9FF")
		}
	}
	function intypeChange() {
		if ($("#intype").val() == "frequency") {
			$("#infrequency").attr("style",
					"visibility:visible;background-color: #D2E9FF")
			$("#infixed").attr("style", "display:none;background-color: #D2E9FF")
		} else {
			$("#infrequency").attr("style",
					"display:none;background-color: #D2E9FF")
			$("#infixed").attr("style",
					"visibility:visible;background-color: #D2E9FF")
		}
	}
	function infreqChange() {
		if ($("#infreqSel").val() == "month") {
			$("#indayInput").attr("style",
					"visibility:visible;background-color: #D2E9FF")
		} else {
			$("#indayInput").attr("style",
					"display:none;background-color: #D2E9FF")
		}
	}

	function closeModal(type) {
		if (type === 'C') {
			$("#insertErr").text("");
		}
		if (type === 'U') {
			$("#editErr").text("");
		}
	}
	function collectionGroupDelConfirm() {
		let collectGNo = $("#delText").data("collectgno");
		document.forms[0].action = "<c:url value='UpdateCollections?cmd=DEL&collectGNo="
				+ collectGNo + "' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
	function gNameEditComfrimBtn() {
		let editName = $("#editText").data("editname");
		let collectGNo = $("#editText").data("collectgno");
		console.log(editName);
		console.log(collectGNo);
		document.forms[0].action = "<c:url value='UpdateCollections?cmd=MOD&groupNameText="
				+ editName + "&collectGNo=" + collectGNo + "' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
	function delDetailConfirm() {
		let collectNo = $("#delDetailText").data("collectno");
		console.log(collectNo);
		document.forms[0].action = "<c:url value='UpdateCollections?cmd=dDEL&collectNo="
				+ collectNo + "' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
	function editDetailConfirm() {
		let collectNo = $("#editDetailSel").data("collectno");
		let collectGNo = $("#editDetailSel").data("collectgno");
		let newCollectGNo = $(":selected").val();
		if (newCollectGNo == collectGNo) {
			$("#editErr").text("未修改類別");
		} else {
			document.forms[0].action = "<c:url value='changeCollectionGroup?newCollectGNo="
					+ newCollectGNo + "&collectNo=" + collectNo + "' />";
			document.forms[0].method = "POST";
			document.forms[0].submit();
		}
	}
	function editJobConfirm() {
		let jobNo = $("#jobNo").val();
		let cronGroup = $("#cronGroup").val();
		let cronName = $("#cronName").val();
		let status = $("#status").val();
		let time = $("#timepicker").val();
		
		document.forms[0].action = "<c:url value='updateJob?jobNo="+ jobNo + "&cronGroup=" + cronGroup + "&cronName=" + cronName +"&status=" + status + "&cronExpression="+time+"' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
	
	function insertJobConfirm() {
		let cronGroup = $("#incronGroup").val();
		let cronName = $("#incronName").val();
		let status = $("#instatus").val();
		let time = $("#intimepicker").val();
		
		document.forms[0].action = "<c:url value='insertJob?cronGroup=" + cronGroup + "&cronName=" + cronName +"&status=" + status + "&cronExpression="+time+"' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
	
	function delScheduleConfirm(){
		jobNo = $("#deljobNo").val();
		document.forms[0].action = "<c:url value='delJob?jobNo="+ jobNo + "' />";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
</script>
</head>
<!-- 新增類別modal -->
<div class="modal fade" id="insertModal" tabindex="-1" role="dialog"
	aria-labelledby="insertModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="insertModalLabel">新增類別</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<input type="text" id="insertText" placeholder="請輸入要新增的類別名稱"
					class='form-control'> <span id="insertErr"
					style="color: red"></span>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					onclick="closeModal('C')">取消</button>
				<button type="button" class="btn btn-primary"
					onclick="collectionGroupNew()">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 刪除類別modal -->
<div class="modal fade" id="delModal" tabindex="-1" role="dialog"
	aria-labelledby="delModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="delModalLabel">刪除類別</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p id="delText"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary"
					onclick="collectionGroupDelConfirm()">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 編輯類別modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog"
	aria-labelledby="editModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="editModalLabel">編輯類別</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p id="editText"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal"
					id="editalert">確認</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="editCancel" style="display: none;">取消</button>
				<button type="button" class="btn btn-primary" id="editConfirm"
					onclick="gNameEditComfrimBtn()" style="display: none;">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 刪除明細modal -->
<div class="modal fade" id="delDetailModal" tabindex="-1" role="dialog"
	aria-labelledby="delDetailModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="delDetailModalLabel">刪除明細</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p id="delDetailText"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary"
					onclick="delDetailConfirm()">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 編輯明細modal -->
<div class="modal fade" id="editDetailModal" tabindex="-1" role="dialog"
	aria-labelledby="editDetailModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="editDetailModalLabel">編輯明細</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<label>請選擇類別</label> <select class="btn btn-light searchbar"
					style="width: 400px" id="editDetailSel">
					<c:forEach var="groupList" items="${collectionGroupsMap}">
						<option value="${groupList.key}">${groupList.value}</option>
					</c:forEach>
				</select><br> <span id="editErr" style="color: red"></span>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					onclick="closeModal('U')">取消</button>
				<button type="button" class="btn btn-primary"
					onclick="editDetailConfirm()">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 結果訊息modal -->
<div class="modal fade bd-example-modal-sm" id="alertModal"
	tabindex="-1" role="dialog" aria-labelledby="alertModalLabel">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="alertModalLabel">執行結果</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<p id="alertText"></p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">確認</button>
			</div>
		</div>
	</div>
</div>
<!-- 編輯排程modal -->
<div class="modal fade" id="editScheduleModal" tabindex="-1"
	role="dialog" aria-labelledby="editScheduleLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="editScheduleLabel">排程設定</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<input type="hidden" id="jobNo" name="jobNo">
					<table>
						<tbody>
							<tr>
								<th style="width: 100px"></th>
								<th style="width: 300px"></th>
							</tr>
							<tr>
								<td>排程群組<span class="required">*</span>：</td>
								<td><input type="text" class="form-control" id="cronGroup"
									name="cronGroup"></td>
							</tr>
							<tr>
								<td>排程名稱<span class="required">*</span>：</td>
								<td><input type="text" class="form-control" id="cronName"
									name="cronName" readonly></td>
							</tr>
							<tr>
								<td>啟動時間<span class="required">*</span>：</td>
								<td></td>
							</tr>
							<tr style="background-color: #D2E9FF">
								<td>類型</td>
								<td><select class="btn btn-light searchbar" id="type"
									onchange="typeChange()">
										<option value="frequency">時間</option>
										<option value="fixed">頻率</option>
								</select></td>
								<td>
							</tr>
							<tr id="frequency" style="background-color: #D2E9FF">
								<td>週期</td>
								<td class="form-inline"><select
									class="btn btn-light searchbar" id="freqSel"
									onchange="freqChange()">
										<option value="day">每日</option>
										<option value="month">每月</option>
								</select>
									<div id="dayInput" style="display: none">
										<input type="text" class="form-control" style="width: 40px">
										&ensp;日&ensp;
									</div> <input type="text" id="timepicker" name="timepicker"
									class="form-control timepicker" style="width: 130px"></td>
							</tr>
							<tr id="fixed" style="display: none; background-color: #D2E9FF">
								<td>週期</td>
								<td class="form-inline">&ensp;每&ensp; <input type="text"
									id="fixed-hour" class="form-control" style="width: 30px">&ensp;時&ensp;
									<input type="text" id="fixed-min" class="form-control"
									style="width: 30px">&ensp;分&ensp; <input type="text"
									id="fixed-sec" class="form-control" style="width: 30px">&ensp;秒
								</td>
								<td></td>
							</tr>
							<tr>
								<td>狀態<span class="required">*</span>：</td>
								<td><select id="status" class="btn btn-light searchbar">
										<option value="1">啟動</option>
										<option value="0">關閉</option>
								</select></td>
							</tr>
						</tbody>
					</table>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							onclick="closeModal('U')">取消</button>
						<button type="button" class="btn btn-primary"
							onclick="editJobConfirm()">確認</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- 新增排程modal -->
<div class="modal fade" id="insertScheduleModal" tabindex="-1" role="dialog"
	aria-labelledby="insertScheduleModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="insertScheduleModalLabel">新增排程</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<table>
						<tbody>
							<tr>
								<th style="width: 100px"></th>
								<th style="width: 300px"></th>
							</tr>
							<tr>
								<td>排程群組<span class="required">*</span>：</td>
								<td><input type="text" class="form-control" id="incronGroup"
									name="cronGroup"></td>
							</tr>
							<tr>
								<td>排程名稱<span class="required">*</span>：</td>
								<td>
								<select name="incronName" id="incronName" class="btn btn-light searchbar">
									<option>活動通知信</option>
									<option>貼文下架通知信</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>啟動時間<span class="required">*</span>：</td>
								<td></td>
							</tr>
							<tr style="background-color: #D2E9FF">
								<td>類型</td>
								<td><select class="btn btn-light searchbar" id="intype"
									onchange="intypeChange()">
										<option value="frequency">時間</option>
										<option value="fixed">頻率</option>
								</select></td>
								<td>
							</tr>
							<tr id="infrequency" style="background-color: #D2E9FF">
								<td>週期</td>
								<td class="form-inline"><select
									class="btn btn-light searchbar" id="infreqSel"
									onchange="infreqChange()">
										<option value="day">每日</option>
										<option value="month">每月</option>
								</select>
									<div id="indayInput" style="display: none">
										<input type="text" class="form-control" style="width: 40px">
										&ensp;日&ensp;
									</div> <input type="text" id="intimepicker" name="intimepicker"
									class="form-control timepicker" style="width: 130px"></td>
							</tr>
							<tr id="infixed" style="display: none; background-color: #D2E9FF">
								<td>週期</td>
								<td class="form-inline">&ensp;每&ensp; <input type="text"
									id="infixed-hour" class="form-control" style="width: 30px">&ensp;時&ensp;
									<input type="text" id="infixed-min" class="form-control"
									style="width: 30px">&ensp;分&ensp; <input type="text"
									id="infixed-sec" class="form-control" style="width: 30px">&ensp;秒
								</td>
								<td></td>
							</tr>
							<tr>
								<td>狀態<span class="required">*</span>：</td>
								<td><select id="instatus" class="btn btn-light searchbar">
										<option value="1">啟動</option>
										<option value="0">關閉</option>
								</select></td>
							</tr>
						</tbody>
					</table>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-primary"
							onclick="insertJobConfirm()">確認</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- 刪除排程modal -->
<div class="modal fade" id="delScheduleModal" tabindex="-1" role="dialog"
	aria-labelledby="delScheduleModalLabel">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="delScheduleModalLabel">刪除排程</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<input type="hidden" id="deljobNo" name="deljobNo">
				<p id="delScheduleText">確認刪除？</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary" onclick="delScheduleConfirm()">確認</button>
			</div>
		</div>
	</div>
</div>