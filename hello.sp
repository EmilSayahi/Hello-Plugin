#pragma semicolon 1

#include <sourcemod>

public Plugin:myinfo = {
	name        = "Hello!",
	author      = "Emil Sayahi]",
	description = "Sayy hello!",
	version     = "1.0.0.0",
	url         = "http://www.emilsayahi.cf/"
};

public OnPluginStart() {
    RegConsoleCmd("sm_hello", Command_Hello, "Displays a greeting message.");
}
 
public Action:Command_Hello(client, args) {
    PrintToChat(client, "Hello!");
    return Plugin_Handled;
}
