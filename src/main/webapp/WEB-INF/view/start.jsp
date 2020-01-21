<!DOCTYPE html>
<html>
    <head>
        <title>Chat App</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        <style>
            body{
                background-color:rgb(218, 214, 214);
                border: solid black;
            }
        </style>
        <script>var stompClient = null;

            function connect() {
                var socket = new SockJS('/GroupProject/chat');
                stompClient = Stomp.over(socket);
                stompClient.connect({}, function (frame) {
                    setConnected(true);
                    console.log('Connected: ' + frame);
                    stompClient.subscribe('/topic/output', function (output) {
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
                stompClient.send("/chatApp/chat", {}, JSON.stringify({'user': user, 'message': message}));
                document.getElementById('message').value = "";
            }

            function chatOutput(jsonMsg) {
                var response = document.getElementById('chatResponse');
                var p = document.createElement('p');
                message = jsonMsg.user + " (" + jsonMsg.dateTime + "): " + jsonMsg.message;
                p.appendChild(document.createTextNode(message));
                response.appendChild(p);
            }
            $(document).keypress(function (e) {
                if (e.which === 13) {
                    sendMssage;
                    e.preventDefault();
                    
                }
            });
        </script>

    </head>
    <body id="body">
        <div class="container-flex text-left col-md-10 offset-md-1">
            <h1>Welcome to our chatroom</h1>
            <div>
                <div>
                    <button class="btn btn-success" id="connect" onclick="connect();">Connect to Chat Room</button>
                    <button class="btn btn-danger" id="disconnect" disabled="disabled" onclick="disconnect();">Disconnect</button><br /><br />
                </div>
                <div id="chatBlock" style="visibility:hidden">
                    <input placeholder="Username" type="text" id="user" /><br /><br />
                    <textarea placeholder="Type your message" id="message"
                              style='width:400px;height:200px' /></textarea><br /><br />
                    <button id="sendNum" onclick="sendMssage();">Send</button>
                    <div style="width:80%;height:450px;border: 1px solid black;background-color:dimgrey;">
                        <p id="chatResponse" style="color:skyblue"></p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html> 