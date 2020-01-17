<!DOCTYPE html>
<html>
<head>
    <title>Chat App</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script>var stompClient = null; 

function connect() {
    var socket = new SockJS('/GroupProject/chat');
	stompClient = Stomp.over(socket);
    stompClient.connect({}, function(frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/output', function(output){
        	chatOutput(JSON.parse(output.body));
        });
    });
}

function disconnect() {
    stompClient.disconnect();
    setConnected(false);
    console.log("Disconnected");
}

function setConnected(connected) {
    document.getElementById('connect').disabled = connected;
    document.getElementById('disconnect').disabled = !connected;
    document.getElementById('chatBlock').style.visibility = connected ? 'visible' : 'hidden';
    document.getElementById('chatResponse').innerHTML = '';
}

function sendMssage() {
    var user = document.getElementById('user').value;
    var message = document.getElementById('message').value;
    stompClient.send("/chatApp/chat", {}, JSON.stringify({ 'user': user, 'message': message }));
    document.getElementById('message').value="";
}

function chatOutput(jsonMsg) {
    var response = document.getElementById('chatResponse');
    var p = document.createElement('p');
	message = jsonMsg.user + " ("+ jsonMsg.dateTime +"): " + jsonMsg.message;
    p.appendChild(document.createTextNode(message));
    response.appendChild(p);
} </script>
    
</head>
<body>
<h1>Chat App</h1>
<div>
    <div>
        <button id="connect" onclick="connect();">Connect to Chat Room</button>  
        <button id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button><br/><br/>
    </div>
    <div id="chatBlock" style="visibility:hidden">
        <label>User Name: </label><input type="text" id="user"/><br/><br/>
        <label>Message: </label><textarea id="message" /></textarea><br/><br/>
        <button id="sendNum" onclick="sendMssage();">Send</button>
        <p id="chatResponse"></p>
    </div>
</div>
</body>
</html> 