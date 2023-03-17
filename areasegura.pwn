//stock

stock IsPlayerInRC(playerid)
{
	new Float:x,Float:y,Float:z;
    GetPlayerPos(playerid, x, y, z);
    if((x >= 1082.962 && y >= -1389.729 && x <= 1235.075 && y <= -1298.931))
	{
	    return 1;
	}
	if((x >= 1071.198120 && y >= 1522.371948 && x <= 1183.198120 && y <= -1424.371948))
	{
	    return 1;
	}
	if((x >= 1440.428 && y >= -1737.13 && x <= 1524.091 && y <= -1598.959))
	{
	    return 1;
	}
	if((x >= 1136.3937 && y >= -1760.5394 && x <= 1085.0909 && y <= -1838.2732))
	{
	    return 1;
	}
	if((x >= 1131.7567 && y >= -1286.0685 && x <= 1336.8644 && y <= -1413.9995))
	{
	    return 1;
	}
	if((x >= 2166.77 && y >= -1377.886 && x <= 2258.038 && y <= -1306.826))//IGREJA
	{
	    return 1;
	}
	if((x >= 444.711791 && y >= -1669.256591 && x <= 514.711791 && y <= -1599.256591))
	{
	    return 1;
	}
	if((x >= 1074.013427 && y >= -1519.011962 && x <= 1186.013427 && y <= -1421.011962))
	{
	    return 1;
	}
	if((x >= 1638.426391 && y >= 1282.795654 && x <= 1736.386840 && y <= 1607.104003))
	{
	    return 1;
	}
	if((x >= 1336.6572 && y >= -1415.5084 && x <= 1271.3146 && y <= -1350.7875))
	{
	    return 1;
	}
	return 0;
}

//Public onplayergivedamage
	 new Float:stringvida;
	 new Float:stringcolete;
	 GetPlayerHealth(playerid, stringvida);
	 GetPlayerArmour(playerid, stringcolete);
	 new Float:stringvida2;
	 new Float:stringcolete2;
	 GetPlayerHealth(damagedid, stringvida2);
	 GetPlayerArmour(damagedid, stringcolete2);


	 if(IsPlayerInRC(playerid))
	 {
	    Controle(playerid, 0);
	    SetTimerEx("LiberarEnforcer", 3000, false, "i", playerid);
	    ShowPlayerDialog(playerid, 999, DIALOG_STYLE_MSGBOX, " ", "{FF6347}Anti-DM: {aaacae}Você não pode causar danos em jogadores próximos a área do Spawn Civil ou Prefeitura!\n\n{818689}Você foi congelado por 3 segundos.", "Fechar", #);
	    SetPlayerArmour(damagedid, stringcolete2);
		SetPlayerHealth(damagedid, stringvida2);
		return 1;
	 }

//callback

CallBack::LiberarEnforcer(playerid)
{
    if(IsPlayerConnected(playerid))
    {
        TogglePlayerControllable(playerid, 1);
    }
}
