--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀，如after_destroy_entry_testpk
--此文件每行最大字符个数为255，若有异议，请与程序探讨

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --设置地图入口实体的编号（该编号对应于characterinfo.txt的索引）

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --创建副本管理对象，此函数在有显式入口的地图中必须调用，对于隐式入口的地图（如队伍挑战）无要调用该接口
    local EntryName = " 隋漤桕钼 鲤爨沐漕� "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    Notice("橡桁鬻囗桢: 杨钺屐 黩� 镱 觐铕滂磬蜞� ["..posx..","..posy.."] 镱�忤腭� 镱痱嚯 � 隋漤桕钼 鲤爨沐漕�.")  --通知本组服务器的所有玩家

end

function after_destroy_entry_glacierpk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("橡桁鬻囗桢: 杨钺屐 黩� 镱痱嚯 � [隋漤桕钼 鲤爨沐漕韂 桉麇�. 央邃栩� 玎 钺��怆屙��扈. ") 

end

function after_player_login_glacierpk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --取地图入口的位置信息（地图名，坐标，目标地图名）
    ChaNotice(player_name, "橡桁鬻囗桢: 杨钺屐 黩� 镱 觐铕滂磬蜞� ["..posx..","..posy.."] 镱�忤腭� 镱痱嚯 � 隋漤桕钼 鲤爨沐漕�.")

end






function check_can_enter_glacierpk( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "饮 礤 祛驽 玎轵� � 隋漤桕钼 鲤爨沐漕� 磬躅��顸 � 铗��溴." )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� 蝈�� 漕腈磬 猁螯 体溧朦 悟忄汨. " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","超过一个勇者之证")
		return 0
	end

    local Cha = TurnToCha(role)
  
	if Lv(Cha) >=65 and Lv(Cha) <=90 then
		
		return 1

	else
		SystemNotice(role, "翌朦觐 桡痤觇 � 65 镱 90 祛泱� 忸轵� � 隋漤桕钼 鲤爨沐漕�. ")
		return 0
	end
	--if HonorPoint >30000 then
		--SystemNotice ( role , "You cannot enter Chaos Icicle you have to much Honor" )
		--return 0
	--end

	--local Credit_bountypk= GetCredit(role)
	 --if Credit_bountypk < 30 then 
		--SystemNotice ( role , "You do not have enough Reputation Points" )
		--return 0
	--else
		--DelCredit(role,30)
	--end

	--if Lv(role) < 20 then
		--SystemNotice ( role , "You do not have enough Reputation Points" )
		--return 0    
	--end
	--local Has_money = check_HasMoney(role)
	--if Has_money == 1 then
		
		--return 1
		
	--else
		--SystemNotice(role,"You do not have enough Gold to enter Chaos Icicle")
		--return 0
	--end
				
end

function begin_enter_glacierpk(role, copy_mgr) 

		SystemNotice(role,"迈钿 � [隋漤桕钼 鲤爨沐漕韂") 
		MoveCity(role, "Glacier Armageddon")

end








