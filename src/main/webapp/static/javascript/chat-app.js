var stompClient = null; 

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
} 