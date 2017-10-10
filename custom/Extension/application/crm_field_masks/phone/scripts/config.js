
$.ajax({
    url:"/index.php?entryPoint=AsteriskController&action=operatorConfig",
    cache: false,
    type: "GET",
    success: function(data){
        var a = JSON.parse(data);
        console.log(a['extension']);

        var user = {
            //  User Name
            "User" : a['extension'],
            //  Password
            "Pass" : a['ext_password'],
            //  Auth Realm
            "Realm"   : a['ws_server'],
            // Display Name
            "Display" : "993333",
            // WebSocket URL
            "WSServer"  : "ws://192.168.2.93:8088/ws"
        };


    }

});


