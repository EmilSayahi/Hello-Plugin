#pragma semicolon 1

#include <sourcemod>

public Plugin:myinfo = {
	name        = "Hello!",
	author      = "Emil Sayahi (Gamer1207)",
	description = "Says Hello!",
	version     = "1.0.0.0",
	url         = "http://www.emilsayahi.tk/"
};

public OnPluginStart() {
    RegConsoleCmd("sm_hello", Command_Hello, "Displays a greeting message.");
}
 
public Action:Command_Hello(client, args) {
    PrintToChat(client, "Hello!");
    return Plugin_Handled;
}
