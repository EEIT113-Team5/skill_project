var MyPoint = "/DemoWS";
var host = window.location.host;
// console.log(host);
var path = window.location.pathname;

var webCtx = path.substring(0, path.indexOf('/', 1));
// console.log(webCtx);

var statusOutput = document.getElementById("statusOutput");
var webSocket;
// 新加

//
function connect_skill(sendUser, sendTo) {
	var endPointURL = "ws://" + window.location.host + webCtx + MyPoint + "/"
			+ sendUser+ "/"+sendTo;
	
	document.getElementById("catalog").style.display = 'none';
	document.getElementById("catalog").style.display = 'block';
	output = document.getElementById("output");

	// create a websocket
	console.log(sendUser);
	console.log(sendTo);
	console.log(endPointURL);
	webSocket = new WebSocket(endPointURL);
	console.log("conn");
	webSocket.onopen = function(event) {
		onOpen(event)
	};

	webSocket.onmessage = function(event) {
		onMessage(event)
	};

	webSocket.onclose = function(event) {
		onClose(event)
	};
	webSocket.onerror = function(event) {
		onError(event)
	};
	// 监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
	window.onbeforeunload = function() {
		webSocket.close();
	}
}


function onOpen(evt) { // 連線時觸發
	
	console.log("open");
}
function onMessage(evt) { // 收到訊息時觸發
	console.log("mess");
	writeToScreen(evt.data);
	$(cardbody).scrollTop(99999);
	// websocket.close();
}
function onClose(evt) { // 關閉連線時時觸發
// writeToScreen("DISCONNECTED");
}

function onError(evt) {
	writeToScreen('<span style="color: red;">ERROR:</span> ' + evt.data);
}

function sendMessage_skill(sendUser, sendTo, sendUser2, sendTo2, pic1) {
	var inputMessage = document.getElementById("textmssg");
	var message = inputMessage.value.trim();
	
	if (message === "") {
		inputMessage.value = "";
		inputMessage.focus();
	} else {
		var inputMessage = document.getElementById("textmssg");
		var message = inputMessage.value.trim();
		console.log(sendUser2);
		var jsonMsg = {
			"sendUser" : sendUser,
			"toUser" : sendTo,
			"sendUserNo" : sendUser2,
			"toUserNo" : sendTo2,
			"message" : message,
			"pic" : pic1
		}
		console.log(jsonMsg);
		webSocket.send(JSON.stringify(jsonMsg)); // !!!! 送留言到endpoint

		inputMessage.value = "";
		$(cardbody).scrollTop(999);
		inputMessage.focus();
	}
}

//

//
function disconnect() {
	webSocket.close();
}

var cardbody = document.getElementById("cardbody");
function writeToScreen(message) {
	console.log(message)
	if (message.indexOf("count:") != -1) {
		if (message.split(":")[1] == 1) {
			$("#on").css("display", "none");
			$("#off").css("display", "inline");
			message = "<p style='background-color:#ddd' class='rounded-lg text-center text-secondary py-2'>對方已離線<br></p>";
		} else {
			$("#on").css("display", "inline");
			$("#off").css("display", "none");
			message = "<p style='background-color:#ddd' class='rounded-lg text-center text-secondary py-2'>對方正在線上<br></p>";
		}
	}
	cardbody.innerHTML += message;

}
// window.addEventListener("load", init, false);
