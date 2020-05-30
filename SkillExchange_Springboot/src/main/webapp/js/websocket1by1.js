var MyPoint = "/DemoWS";
var host = window.location.host;
// console.log(host);
var path = window.location.pathname;
// console.log(path);
var webCtx = path.substring(0, path.indexOf('/', 1));
// console.log(webCtx);



var statusOutput = document.getElementById("statusOutput");
var webSocket;

function connect_skill(sendUser,sendTo) {
	var endPointURL = "ws://" + window.location.host + webCtx + MyPoint+"/"+sendUser;
	document.getElementById("catalog").style.display = 'block';
	output = document.getElementById("output");
	// create a websocket
	console.log(sendUser);
	console.log(endPointURL);
	webSocket = new WebSocket(endPointURL);

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
	
	
}
function onMessage(evt) { // 收到訊息時觸發
	writeToScreen(evt.data);
	// websocket.close();
}
function onClose(evt) { // 關閉連線時時觸發
// writeToScreen("DISCONNECTED");
}

function onError(evt) {
	writeToScreen('<span style="color: red;">ERROR:</span> ' + evt.data);
}

function sendMessage_skill(sendUser,sendTo,pic1) {
	var inputMessage = document.getElementById("textmssg");
	var message = inputMessage.value.trim();

	
	if (message === "") {
		inputMessage.value = "";
		inputMessage.focus();
	} else {
		var inputMessage = document.getElementById("textmssg");
		var message = inputMessage.value.trim();

		var jsonMsg = {
			"sendUser" : sendUser,
			"toUser" : sendTo,
			"message" : message,
			"pic" : pic1
		}
		console.log(jsonMsg);
		webSocket.send(JSON.stringify(jsonMsg)); // !!!! 送留言到endpoint

		inputMessage.value = "";
		inputMessage.focus();
	}
}

function disconnect() {
	webSocket.close();
}

var cardbody = document.getElementById("cardbody");
function writeToScreen(message) {
	console.log(message)
	if(message.indexOf("count:")!=-1){
		if(message.split(":")[1]==1){
			$("#on").css("display","none");
			 $("#off").css("display","inline");
			message="<p style='background-color:#ddd' class='rounded-lg text-center text-secondary py-2'>對方已離線<br></p>";
		} else {
			$("#on").css("display","inline");
			 $("#off").css("display","none");
			message="<p style='background-color:#ddd' class='rounded-lg text-center text-secondary py-2'>對方正在線上<br></p>";
		}
	}
	cardbody.innerHTML += message;
	
}
// window.addEventListener("load", init, false);
