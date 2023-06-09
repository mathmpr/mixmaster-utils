function NPC_QUEST_981(cnum, reqNumber)

	req = reqNumber
	Type = GetHeroLv(cnum)

	if req == 1 then
  		if GetSwitchCount(cnum, 458) < 1 then --> 퀘스트를 끝낸적이 없는지 검사
	   		if GetSwitchCount(cnum, 457) < 1 then --> 퀘스트를 시작안한 것이 맞는 지 검사
			    	if Type > 109 then  --> 히어로 레벨이 110 이상인지 검사
			     		return 2,0,"오랜만에 사람을 보니 반갑네!! 무슨일로 왔는가?? 혹시 이 곳을 들어가려거든 꿈 깨게!",2,"여기가 어딘데요??"
	    			else --> 히어로 레벨이 110 미만 일때
	     				return 1,0,"자네같은 어린아이와 대화할 시간이 없네!! 헛튼 생각하고 있다면 집어 치우게나..."
		    		end
   			else --> 퀘스틀 이미 수락 했을 때
			    	if GetItemCount(cnum, 8260, 0) > 0 and GetItemCount(cnum, 8261, 0) > 0 and GetItemCount(cnum, 8262, 0) > 0 and GetItemCount(cnum, 8263, 0) > 0 then  --> 퀘스트 아이템을 가지고 있는지 검사
			     		return 3,0,"잃어버린 지도조각은 구해왔는가??", 9,"여기 있습니다.", 12,"아니요. 조금만 기다리세요!"
	    			else
     					return 1,0,"자네 또 무슨 볼일이 남아 있는가?? 혹시 지도라는 단어를 모르는겐가?!"
	       			end


   			end
   		else	
			return 3,0,"몰래 몰래 들어가게!! 가서 하나 건지면 나도 좀 주게나~",15,"Lv.110~Lv.130 비밀의통로 진입",16,"Lv.130~Lv.175 비밀의통로 진입"
                 
	 	end

		elseif req == 2 then
			return 3,0,"혹시 자네 시난의 유적지에 숨겨진 통로가 있다는 사실을 들어봤는가?",3,"아니요.",7,"안 들어도 될 거 같네요."

		elseif req == 3 then
			return 2,0,"시난의 유적지에는 예전부터 어마어마한 유물이 숨겨져 있는 곳으로 갈 수 있는 길이 있었다네. 바로 이곳이지. 헌데 30년 전 시난의 비밀통로를 그려놓은 지도를 잃어버렸다는군... 지도가 없어서 그 동안  이 곳을 통해 들어간 자들이 모두 빠져나오질 못했다네. 그래서 마지리타의 국왕이 날 이곳으로 보내 지도를 찾기 전까지 아무도 들여보내지 말라는 임무를 주셨지.",4,"그럼 이 곳은 폐쇄되었나요?"

 		elseif req == 4 then
			return 3,0,"그 후 아무도 들어가지 못하게 되었지만 나도 이곳에 오래 있다보니 숨겨진 보물이 탐나기는 하는군... 하지만 지도가 없으니 그림에 떡일 뿐이지...",5,"지도를 어디서 구하면 되나요?",7,"무서워요. 저 이만 가볼께요."

  		elseif req == 5 then
			return 2,0,"지도 말인가? 그걸 자네가 구할 수는 있겠는가?",8,"저 이래뵈도 좀 합니다."

		elseif req == 6 then
			return 2,0,"그럼 잃어버린 지도 조각 4개를 가지고 나에게 오게나~! 내 그럼 좋은 정보와 앞으로 비밀통로를 마음 껏 이동할 수 있는 권한을 주겠네!!",24,"갔다올께요~!!"

		elseif req == 7 then
     			return 1,0,"내 입만 아픈 꼴이 됐군... 생각 있으면 다시 오게나!!"

      		elseif req == 8 then
			return 3,0,"하하! 자신감이 넘치는군~ 좋아! 그렇다면 내 정보 하나를 알려주지! 지도 조각을 봤다는 사람들이 있네.",18,"어디에 있나요!?",17,"아저씨 참 귀도 얇네요..."

  		elseif req == 9 then
     			return 2,0,"허허! 자네 참 대단하구먼!! 정말 구해올줄은 꿈에도 몰랐네. 아까 약속한 데로 이곳을 언제든지 찾아오게, 특별히 자넨 통과를 시켜주지. 대신 국왕님에게는 비밀로 해야 한다는걸 잊지 말게나!",10,"감사합니다. 근데 위험하지 않을까요?"

		elseif req == 10 then
 			return 2,0,"참 자네에게 말해줄 것이 있네.시난의 비밀통로로 들어가게 되면 입구에 좀 쎈 아이들이 있지... 그 몬스터들을 피할려면 변신 좀 해야할껄세. 그 녀석들을 때려 잡을 수 있다면야 안해도 될 지 모르겠나만 꼭! 참고하게나... 다 자네를 위해서라네!",11,"감사합니다! 꼭 참고할께요!"

  		elseif req == 11 then
     			AddSwitchCount(cnum, 458, 1) --> 퀘스트 종료
  			EndQuest(cnum, 149) --> 퀘스트 제거   			
			AddItemCount(cnum, 8260, -1)
     			AddItemCount(cnum, 8261, -1)
     			AddItemCount(cnum, 8262, -1)
     			AddItemCount(cnum, 8263, -1)  --> 지도 아이템 뺏기
     			AddMoney(cnum,5000)
			AddHeroExp(Cnum, 20000)  --> 퀘스트 완료 경험치 보상
     		return 1,0,"행운을 빌겠네~!!"

  		elseif req == 12 then
     			return 3,0,"자네 나를 끝내 실망시키는구려~ 다른 아이템으로 날 속이려들지 말고 빨리 빨리 구해오게~ 나도 자네 덕에 팔자한번 피면 서로 좋은거 아니겠나?? 하하하!!",13,"같이 한 번 팔자 펴보죠~!! 갔다올께요!!",14,"아저씨 팔자는 스스로 피세요~"

		elseif req == 13 then
     			return 0

		elseif req == 14 then
     			return 1,0,"좀 펴주라~!!"

		elseif req == 17 then
     			return 2,0,"그럴수도 있겠군...",18,"저도 한번 속는셈치죠 뭐~ 알려주세요!"

		elseif req == 18 then
     			return 2,0,"이 곳을 지나갔던 사람들의 말로는 시난의유적지 입구에 있는 몬스터들이 지도 조각을 가지고 있다는 얘기를 전해 들었지. 하지만 내 실력으로는 저들을 이길 수가 없네.. 자네는 꽤 쌔 보이는데? 혹시 가서 지도를 구해다 줄 수 있겠나!? 그렇다면 내가 특별히 인심써보겠네!",19,"무슨 인심이요?"

		elseif req == 19 then
     			return 2,0,"자네가 지도를 구해오면, 뭐 유적지 비밀통로로 들여보내는 걸 한번 생각해보겠네..흠!",20,"정말요?? 지도만 구해오면 되나요?"

		elseif req == 20 then
     			return 2,0,"내가 이 곳에 오래 있다보니 자금사정이 않좋아서.. 뭐 큰걸 바라는건 아니고, 그래도... 보물이 있는 곳인데 입장료 정도는 받아야하지 않겠나!? 하하! 참 멋쩍구만~",21,"아저씨 신났네요~ 얼만데요??"

		elseif req == 21 then
     			return 2,0,"허험! 역시 말솜씨가 보통이 아니군.. 그래서 말일세... 뭐 들어가게 해주는 조건으로 5000GP 정도는 받아야하지 않겠나?@흠... 자네 혹시 그만한 돈도 없나?",22,"껌값도 안되죠~"

		elseif req == 22 then
     			return 2,0,"자네 부자인걸?? 하긴 내 제안이 들어가서 얻는 보물에 비하면 나쁘진 않지! 하하!",23,"그 돈 받고 부자되세요~"

		elseif req == 23 then
     			return 2,0,"자네 보기와 다르게 털털하군!! 바깥 일을 하다보면 원래 다 이런거네! 자네가 인심 좀 쓰게~ 하하",6,"그럼 지도 조각을 구해오면 되는거죠?"
 		
		elseif req == 24 then
				AddSwitchCount(cnum, 457, 1) --> 퀘스트 수락
				StartQuest(cnum, 149) --> 퀘스트 등록

		elseif req == 15 then
			if GetMoney(cnum) > 4999 then--> 5000GP 검사  
        			if Type > 109 and Type < 131 then
					AddMoney(cnum,-5000)
					MoveZone(cnum,181,254) --> 110~130 비밀통로 이동

	 				else
     						return 1,0,"여기는 자네와 어울리지 않아~"
				     	end
			else
				return 1,0,"자네 빈손으로 왔구만~ 혹시 보물을 팔아서 혼자 어디다 숨겨놓는건 아닌겐가!? 입장료 5000GP정도는 들고다녀야지 왜그러나... 아마추어처럼~"
			end
  		elseif req == 16 then
			if GetMoney(cnum) > 4999 then--> 5000GP 검사
				if Type > 129 and Type < 176 then
					AddMoney(cnum,-5000)
					MoveZone(cnum,182,254) --> 130~160 비밀통로 이동
     				else
     					return 1,0,"여기는 자네와 어울리지 않아~"
				end
			else
				return 1,0,"자네 빈손으로 왔구만~ 혹시 보물을 팔아서 혼자 어디다 숨겨놓는건 아닌겐가!? 입장료 5000GP정도는 들고다녀야지 왜그러나... 아마추어처럼~"
			end
  		else
   			return 0
	end

end

