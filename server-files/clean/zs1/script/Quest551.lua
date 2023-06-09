 function NPC_QUEST_1057(cnum,reqNumber) -- 산타할아버지

req = reqNumber

	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --처음 대화시
			return 2,0,"아이고! 이놈의 루돌프 녀석은 대체 어디로 간 거람.아! 자네 혹시 빨간 코의 사슴을 보지 못했나? ",10,"아뇨."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) == 1 and GetSwitchCount(cnum, 580) < 1  then
			return 3,0,"자네 혹시 루돌프는 찾았나?",12,"네..어디냐 하면..",13,"아뇨! 찾지 못했어요."

		else
			return 1,0,"누군가에게 행운이 담긴 메시지를 들으면 크리스마스 트리로 가보게나. 자네에게 행운을 줄 걸세."
		end



	elseif req == 10 then
			return 2,0,"도대체 어디로 간 거지? 빨리 착한 아이들 에게 선물을 전달 해야 하는데 말이야… 자네 혹시 루돌프를 보게 된다면 이야기 좀 해주게  ",11,"네. "


	elseif req == 11 then
			AddSwitchCount(cnum, 578, 1) -- 루돌프이벤트 시작 스위치
			return 1,0,"보답으로 자네에게 좋은 정보를 알려 주지. 내가 올해에는 선물을 직접 찾아가 주지 못할 것 같아 마을에 커다란 트리를 세워 선물을 줄 거라네. 자네가 착한일을 했다면 누군가에게 증표를 받아 그 트리에서 선물을 받을 수 있을 거라네. "



	elseif req == 12 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@산타에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- 참 잘했어요 도장
				AddSwitchCount(cnum, 579, 1) -- 산타 보상 스위치
				return 1,0,"허.. 그놈이 거기 숨어 있었단 말이지? 이놈을 그냥!!@흠흠.. 정말 고맙네. 보답으로 이것을 주지."


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"허.. 그놈이 거기 숨어 있었단 말이지? 이놈을 그냥!!@흠흠.. 정말 고맙네. 보답으로 이것을 주지."

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				AddSwitchCount(cnum, 579, 1)
				return 1,0,"허.. 그놈이 거기 숨어 있었단 말이지? 이놈을 그냥!!@흠흠.. 정말 고맙네. 보답으로 이것을 주지."

			else
				return 1,0,"오류 2"

			end
		end


	elseif req == 13 then
			AddSwitchCount(cnum, 580, 1) -- 루돌프 보상 스위치
			return 1,0,"아직 못 찾았나? 이놈을 어디 가야 찾을겐지.."

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1058(cnum,reqNumber) -- 루돌프

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 578) < 1 then --처음 대화시
			return 1,0,"...."

		elseif GetSwitchCount(cnum, 578) == 1 and GetSwitchCount(cnum, 579) < 1 then
			return 2,0,"앗! 깜짝이야. 할아버지인 줄 알았어요.",12,"산타할아버지가 널 찾고 있어."

		elseif GetSwitchCount(cnum, 579) == 2 then
			return 1,0,"이 배신자!"

		elseif GetSwitchCount(cnum, 580) == 1 then
			return 2,0,"혹시 제가 있는 곳을 알려 주었나요?",14,"알려주지 않았어."

		elseif GetSwitchCount(cnum, 580) == 2 then
			return 1,0,"정말 고마워요!"

		else
			return 1,0,"정말 부탁 드려요."

		end


	elseif req == 12 then
		return 2,0,"헉! 안되요. 제발 절 봤다고 하지 말아주세요.매일 같이 일만 부려먹고 일 못한다고 구박하는 나쁜 사람이에요.",13,"음.. 생각 해 보고.."


	elseif req == 13 then
		AddSwitchCount(cnum, 579, 1) -- 산타 보상 스위치
		return 1,0,"정말 부탁드려요."


	elseif req == 14 then

		if GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@루돌프에게서 헨치를 받기위해선 [헨치 인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if GetHeroLv(cnum, 1) < 41 then
				AddHench(cnum,938,1) -- 루돌프 lv40
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"저를 숨겨 주셨군요! 정말 고마워요. 당신이라면 제 동료가 될 충분한 자격이 있어요. 너무 고마워요!"

			elseif GetHeroLv(cnum, 1) < 61 then
				AddHench(cnum,939,1) -- 루돌프 lv60
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"저를 숨겨 주셨군요! 정말 고마워요. 당신이라면 제 동료가 될 충분한 자격이 있어요. 너무 고마워요!"

			elseif GetHeroLv(cnum, 1) < 81 then
				AddHench(cnum,940,1) -- 루돌프 lv80
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"저를 숨겨 주셨군요! 정말 고마워요. 당신이라면 제 동료가 될 충분한 자격이 있어요. 너무 고마워요!"

			elseif GetHeroLv(cnum, 1) < 101 then
				AddHench(cnum,941,1) -- 루돌프 lv100
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"저를 숨겨 주셨군요! 정말 고마워요. 당신이라면 제 동료가 될 충분한 자격이 있어요. 너무 고마워요!"

			elseif GetHeroLv(cnum, 1) < 176 then
				AddHench(cnum,942,1) -- 루돌프 lv120
				AddSwitchCount(cnum, 580, 1)
				return 1,0,"저를 숨겨 주셨군요! 정말 고마워요. 당신이라면 제 동료가 될 충분한 자격이 있어요. 너무 고마워요!"

			else
				return 1,0,"오류 2"
			end
		end

	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1059(cnum,reqNumber) -- 트리

req = reqNumber
random = SetRandom(cnum,0,100)

	if req == 1 then
		return 4,0,"도장을 선물로 교환 하시겠습니까?",10,"[참 잘했어요] 도장 교환.",20,"[잘했어요] 도장 교환.",30,"[조금 잘했어요] 도장 교환."


	elseif req == 10 then

		if GetItemCount(cnum, 8600, 0) < 1 then --참 잘했어요 도장
			return 1,0,"[참 잘했어요]도장이 부족 합니다."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 헨치를 받기위해선 [헨치 인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 3 then
			random = SetRandom(cnum,0,100)
				if random <= 15 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,70,1) -- 보상 아이템
					return 1,0,"[트리]에서 [ 행운의 넥클리스 ]를 얻었습니다."

				elseif random >= 16 and random <= 32 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,71,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  엔트링  ]을 얻었습니다."

				elseif random >= 33 and random <= 45 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,72,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  마나 암릿  ]을 얻었습니다."

				elseif random >= 46 and random <= 60 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,73,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  죠브 글러브  ]를 얻었습니다."

				elseif random >= 61 and random <= 73 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,74,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  신속의 부츠  ]를 얻었습니다."

				elseif random >= 74 and random <= 86 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,75,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  위자드 헬멧  ]을 얻었습니다."

				elseif random >= 87 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,76,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  미스릴 아머  ]를 얻었습니다."

				end

			elseif random >= 4 and random <= 90 then
			random = SetRandom(cnum,0,100)
				if random <= 50 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,8603,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  산타의 HP샘물  ]을 얻었습니다."

				elseif random >= 51 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddItemCount(cnum,8604,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  산타의 MP샘물  ]을 얻었습니다."
				end

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddHench(cnum,372,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  페어리 드래곤  ]을 얻었습니다."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddHench(cnum,717,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  치치  ]을 얻었습니다."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddHench(cnum,722,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  앵앵  ]을 얻었습니다."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddHench(cnum,727,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  미르  ]을 얻었습니다."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8600,-1) -- 참 잘했어요 도장 삭제
					AddHench(cnum,732,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  니놈  ]을 얻었습니다."
				end

			else
				return 1,0,"오류 2"
			end
		end


	elseif req == 20 then

		if GetItemCount(cnum, 8601, 0) < 1 then --잘했어요 도장
			return 1,0,"[잘했어요]도장이 부족 합니다."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 헨치를 받기위해선 [헨치 인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 1 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,8603,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  산타의 HP샘물  ]를 얻었습니다."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,8604,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  산타의 MP샘물  ]를 얻었습니다."

			elseif random >= 4 and random <= 18 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,1186,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  눈사람 변신갑옷  ]를 얻었습니다."

			elseif random >= 19 and random <= 33 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,1185,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  루돌프 변신갑옷  ]를 얻었습니다."

			elseif random >= 34 and random <= 48 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,8589,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  핑크구름  ]를 얻었습니다."

			elseif random >= 49 and random <= 90 then
				AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
				AddItemCount(cnum,8591,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  검정구름  ]를 얻었습니다."

			elseif random >= 91 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
					AddHench(cnum,282,1) -- 보상 헨치�
					return 1,0,"[트리]에서 [  윙스톰레이셔  ]를 얻었습니다."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
					AddHench(cnum,715,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  치치  ]을 얻었습니다."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
					AddHench(cnum,720,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  앵앵  ]을 얻었습니다."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
					AddHench(cnum,725,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  미르  ]을 얻었습니다."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8601,-1) -- 잘했어요 도장 삭제
					AddHench(cnum,730,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  니놈  ]을 얻었습니다."
				end


			else
				return 1,0,"오류 2"
			end
		end



	elseif req == 30 then

		if GetItemCount(cnum, 8602, 0) < 1 then --조금 잘했어요 도장
			return 1,0,"[조금 잘했어요]도장이 부족 합니다."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		elseif GetEmptyHenchPocket(cnum, 1) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@트리에게서 헨치를 받기위해선 [헨치 인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 1 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제�
				AddItemCount(cnum,1186,1) -- 보상 아이템
				return 1,0,"[트리에서 [  눈사람 변신갑옷  ]를 얻었습니다."

			elseif random >= 2 and random <= 3 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
				AddItemCount(cnum,1185,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  루돌프 변신갑옷  ]를 얻었습니다."

			elseif random >= 4 and random <= 23 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
				AddItemCount(cnum,8058,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  눈사람 변신아이템  ]를 얻었습니다."

			elseif random >= 24 and random <= 43 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
				AddItemCount(cnum,8057,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  루돌프 변신아이템  ]를 얻었습니다."

			elseif random >= 44 and random <= 63 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
				AddItemCount(cnum,8059,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  트리 변신아이템  ]를 얻었습니다."

			elseif random >= 64 and random <= 93 then
				AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
				AddItemCount(cnum,8590,1) -- 보상 아이템
				return 1,0,"[트리]에서 [  하얀구름  ]를 얻었습니다."

			elseif random >= 94 and random <= 100 then
			random = SetRandom(cnum,0,100)
				if random <= 1 then
					AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
					AddHench(cnum,278,1) -- 보상 아이템
					return 1,0,"[트리]에서 [  뿔콩  ]를 얻었습니다."

				elseif random >= 2 and random <= 25 then
					AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
					AddHench(cnum,713,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  치치  ]을 얻었습니다."

				elseif random >= 26 and random <= 50 then
					AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
					AddHench(cnum,718,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  앵앵  ]을 얻었습니다."

				elseif random >= 51 and random <= 75 then
					AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
					AddHench(cnum,723,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  미르  ]을 얻었습니다."

				elseif random >= 76 and random <= 100 then
					AddItemCount(cnum,8602,-1) -- 조금 잘했어요 도장 삭제
					AddHench(cnum,728,1) -- 보상 헨치
					return 1,0,"[트리]에서 [  니놈  ]을 얻었습니다."
				end



			else
				return 1,0,"오류 2"
			end

		end
	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1060(cnum,reqNumber) -- 심심한 노인

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 581) < 1 then --처음 대화시
			return 2,0,"밸러로구만.. 자네 내 이야기 좀 들어 주겠나?",10,"네."

		elseif GetSwitchCount(cnum, 581) == 1 then
			return 1,0,"자네 또 보는군! 자주 인사 하며 지내세."

		else
			return 1,0,"오류1"
		end

	elseif req == 10 then
		return 3,0,"자넨 크리스마스가 어떤 날인지 아는가? 크리스 마스는 말이야 한 명의 선인으로부터 시작 되었다네. 누구냐고? 바로 세인트 니콜라스 라는 성인이지.",20,"그렇군요",100,"지겨워요"

	elseif req == 11 then
		return 3,0,"아 그래 그렇군. 그런데 그 분은 무척이나 자선심이 많았어. 남 몰래 어려운 이웃을 돕고 항상 자신 보다 주변을 두루 살폈던 분이지.",21,"그렇군요",100,"지겨워요"

	elseif req == 12 then
		return 3,0,"그렇지! 그런데 저기 광장에 있는 산타는 32대 산타 클로스 라네. 괴팍하긴 하지만 그 분의 피를 이어서 그런진 몰라도 아이들을 무척 좋아하지.",22,"그렇군요",100,"지겨워요"

	elseif req == 13 then
		return 3,0,"음.. 맞아 잠시 다른 말을 했구만. 여하튼 세인트 니콜라스 그 분은 그런 모습으로 모든 인간들에겐 숭배를 받았고 마침내 그 분을 추종하는 사람들이 나타나 산타클로스가 탄생 하게 된거지.",14,"그렇군요",100,"지겨워요"

	elseif req == 14 then
		return 3,0,"산타클로스는 착한 일을 하는 아이들에게 선물을 주기로도 유명하지. 왜 그런 줄 아는가? 바로 초대 산타클로스 님이 불쌍한 소녀 셋이 몹시 가난 하여 팔려가려 할 때 몰래 돈 주머니를 던져 주어 아이들을 구해 주었다네.",23,"그렇군요",100,"지겨워요"

	elseif req == 15 then
		return 3,0,"그래! 하여간 그건 하나에 불과 하고 무척이나 많은 선행을 베푸신 분이지. 음.. 숫자로 따지면 2000번은 되려나?? 아니군.. 거기에 한 두 배는 될 걸세..",24,"그렇군요",100,"지겨워요"



	elseif req == 20 then
		return 4,0,"음.. 내가 어디까지 말했었지? ",11,"세인트 니콜라스라스 라고.",200,"니콜라스 케이지라고…",200,"산타 클로스 라고.."

	elseif req == 21 then
		return 4,0,"음.. 내가 어디까지 말했었지? ",200,"자존심이 무척 강했다고...",12,"자선심이 무척 강했다고..",200,"자만심이 무척 강했다고.."

	elseif req == 22 then
		return 4,0,"음.. 내가 어디까지 말했었지? ",200,"35대 산타 클로스 얘기요.. ",13,"32대 산타 클로스 얘기요..",200,"23대 산타 클로스 얘기요.."

	elseif req == 23 then
		return 4,0,"음.. 내가 어디까지 말했었지? ",15,"돈주머니를 던져 주셨다고..",200,"돌맹이를 던졌다고..",200,"온몸을 던졌다고.."

	elseif req == 24 then
		return 4,0,"아이구.. 이놈의 머리야.. 나이가 많으니 금방 까먹네.내가 몇 번이라 그랬지?",200,"2000",200,"3000",50,"4000"




	elseif req == 50 then
		random = SetRandom(cnum,0,100)

		if GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@심심한 노인에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 1 then
				AddItemCount(cnum,8600,1) -- 참 잘했어요 도장
				AddSwitchCount(cnum, 581, 1) -- 심심한노인 보상 스위치
				return 1,0,"그렇지! 자넨 정말 사람 말을 귀 기울일 줄 아는 사람이구만! 오랜만에 이리 즐거운 시간을 보낸 거 같네. 이 증표를 받게나. 좋은 일이 생길 게야. "


			elseif random >= 2 and random <= 17 then
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				AddSwitchCount(cnum, 581, 1) -- 심심한노인 보상 스위치
				return 1,0,"그렇지! 자넨 정말 사람 말을 귀 기울일 줄 아는 사람이구만! 오랜만에 이리 즐거운 시간을 보낸 거 같네. 이 증표를 받게나. 좋은 일이 생길 게야. "

			elseif random >= 18 and random <= 100 then
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				AddSwitchCount(cnum, 581, 1) -- 심심한노인 보상 스위치
				return 1,0,"그렇지! 자넨 정말 사람 말을 귀 기울일 줄 아는 사람이구만! 오랜만에 이리 즐거운 시간을 보낸 거 같네. 이 증표를 받게나. 좋은 일이 생길 게야. "

			else
				return 1,0,"오류 2"

			end
		end



	elseif req == 100 then
		return 1,0,"자넨 예의가 없구만!!"


	elseif req == 200 then
		return 2,0,"나는 그런말을 한적이 없는데? 다시 이야기 해주겠네",10,"네.."

	end
end


---------------------------------------------------------------------------------------------------------------------------------


 function NPC_QUEST_1061(cnum,reqNumber) -- 구세군 아저씨

req = reqNumber
random = SetRandom(cnum,0,100)



	if req == 1 then
		return 6,0,"불우 이웃을 도웁시다.",10,"1000GP 기부",20,"10000GP 기부",30,"100000GP 기부",40,"1000000GP 기부",100,"10000000GP 기부"


	elseif req == 10 then

		if GetMoney(cnum) < 1000 then
			return 1,0,"돈이 모자르지 않습니까?"

		else
			AddMoney(cnum, -1000)
			return 1,0,"고맙습니다."
		end

	elseif req == 20 then

		if GetMoney(cnum) < 10000 then
			return 1,0,"돈이 모자르지 않습니까?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@구세군 아저씨에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 95 then
				AddMoney(cnum, -10000)
				return 1,0,"고맙습니다."


			elseif random >= 96 and random <= 100 then
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				AddMoney(cnum, -10000) -- 10000원 삭제
				return 1,0,"고맙습니다. 착한 마음을 갖고 있군요. "

			else
				return 1,0,"오류 1"
			end
		end

	elseif req == 30 then

		if GetMoney(cnum) < 100000 then
			return 1,0,"돈이 모자르지 않습니까?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@구세군 아저씨에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 70 then
				AddMoney(cnum, -100000)
				return 1,0,"고맙습니다."


			elseif random >= 71 and random <= 98 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				return 1,0,"고맙습니다. 착한 마음을 갖고 있군요. "

			elseif random >= 99 and random <= 100 then
				AddMoney(cnum, -100000)
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				return 1,0,"정말 고맙습니다. 복 받으실 거에요!"

			else
				return 1,0,"오류 1"
			end
		end


	elseif req == 40 then

		if GetMoney(cnum) < 1000000 then
			return 1,0,"돈이 모자르지 않습니까?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@구세군 아저씨에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 20 then
				AddNPCSwitchCount(cnum, 590,1)
				AddMoney(cnum, -1000000)
				return 1,0,"고맙습니다."


			elseif random >= 21 and random <= 95 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				return 1,0,"고맙습니다. 착한 마음을 갖고 있군요. "

			elseif random >= 96 and random <= 100 then
				AddMoney(cnum, -1000000)
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				return 1,0,"정말 고맙습니다. 복 받으실 거에요!"

			else
				return 1,0,"오류 1"
			end
		end


	elseif req == 100 then
		return 2,0,"정말 이렇게 큰 돈을 기부 하시는 겁니까??",50,"네~"

	elseif req == 50 then

		if GetMoney(cnum) < 10000000 then
			return 1,0,"돈이 모자르지 않습니까?"

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@구세군 아저씨에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 75 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				return 1,0,"고맙습니다. 착한 마음을 갖고 있군요. "

			elseif random >= 76 and random <= 97 then
				AddMoney(cnum, -10000000)
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				return 1,0,"정말 고맙습니다. 복 받으실 거에요! "

			elseif random >= 98 and random <= 100 then
				AddMoney(cnum, -10000000)
				AddNPCSwitchCount(cnum, 585, 1)
				AddItemCount(cnum,8600,1) -- 참 잘했어요 도장
				return 1,0,"허억.. 이렇게나 많이! 정말 복 받으실 겁니다."

			end
		end
	end
end



---------------------------------------------------------------------------------------------------------------------------------



 function NPC_QUEST_1062(cnum,reqNumber) -- 보조 산타

req = reqNumber


	if req == 1 then
		if GetSwitchCount(cnum, 582) < 1 then -- 보조 산타 처음 대화시
			return 2,0,"밸러님 제발 부탁이 있어요!",10,"무슨 일인데?"

		elseif GetSwitchCount(cnum, 582) == 1 then
			return 2,0,"[선물 박스 100개]와 [포장지 100개]는 모아 오셨나요?",40,"여기.."

		elseif GetSwitchCount(cnum, 582) > 1 then
			return 2,0,"혹시 [선물 박스 100개]와 [포장지 100개]를 더 가져 오셨나요?",40,"여기.."

		elseif GetSwitchCount(cnum, 582) < 11 then
			return 1,0,"정말 고마웠어요. 이제 선물을 충분히 만들 수 있어요."

		else
			return 1,0,"오류1"
		end

	elseif req == 10 then
		return 2,0,"악마계열 몬스터 녀석들이 인간과 엘프로 변신을 해서는 저의 선물 포장 도구를 훔쳐갔지 뭐에요. 녀석들이 갖고 간 [선물 박스] 와 [포장지] 를 각각 100개 씩  찾아 주세요!",11,"알았어."


	elseif req == 11 then
		AddSwitchCount(cnum, 582, 1)
		return 1,0,"정말 고마워요!"



	elseif req == 40 then

	random = SetRandom(cnum,0,100)

		if GetItemCount(cnum, 8595, 0) < 100 or GetItemCount(cnum, 8596, 0) < 100  then -- 선물상자/리본끈
			return 1,0,"거짓말 하지 마세요."

		elseif GetRemainPocket(cnum) < 1 then
			return 1,0,"[인벤토리]가 가득찼습니다.@보조 산타에게서 아이템을 받기위해선 [인벤토리]가 최소한 1칸 이상 있어야 합니다."

		else
			if random <= 1 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- 선물박스 삭제
				AddItemCount(cnum,8596,-100) -- 포장지 삭제
				AddItemCount(cnum,8600,1) -- 참 잘했어요 도장
				return 1,0,"정말 고마워요! 덕분에 급한 선물상자는 만들 수 있을 것 같아요. 이 도장이 당신에게 행운을 줄 거에요!"

			elseif random >= 2 and random <= 17 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- 선물박스 삭제
				AddItemCount(cnum,8596,-100) -- 포장지 삭제
				AddItemCount(cnum,8601,1) -- 잘했어요 도장
				return 1,0,"정말 고마워요! 덕분에 급한 선물상자는 만들 수 있을 것 같아요. 이 도장이 당신에게 행운을 줄 거에요!"

			elseif random >= 18 and random <= 100 then
				AddSwitchCount(cnum, 582, 1)
				AddItemCount(cnum,8595,-100) -- 선물박스 삭제
				AddItemCount(cnum,8596,-100) -- 포장지 삭제
				AddItemCount(cnum,8602,1) -- 조금 잘했어요 도장
				return 1,0,"정말 고마워요! 덕분에 급한 선물상자는 만들 수 있을 것 같아요. 이 도장이 당신에게 행운을 줄 거에요!"

			else
				return 1,0,"오류 1"
			end
		end
	end
end



