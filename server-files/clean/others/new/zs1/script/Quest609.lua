
---------------------------------���� NPC------------------------------------
function NPC_QUEST_1584(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�����巣��1,��ǥ-- ������Ÿ ����NPC
req=reqNumber
if req == 1 then
	return 2,0, "������, ������ ������ �ް� �Ͱŵ� ����� ������ ���߰� ������ �ϰ�!",2,"�װ� �������̾�?"


elseif req == 2 then
	return 2,0, "���� ��� ���������� �ҷ��� ������ �ϰ� �ִٳ�! �� �𸣰ڰŵ� �켱 ��� ������ �̵����� �ϰ�.",3,"�̵�!"


elseif req == 3 then

	MoveZone(cnum,67,253) --�̺�Ʈ�� ��𽺷� �̵�



end

end

---------------------------------���� NPC------------------------------------
function NPC_QUEST_1585(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�����巣��2,��ǥ-- ��ũ��Ÿ ����NPC
req=reqNumber
if req == 1 then
	return 2,0, "������, ������ ������ �ް� �Ͱŵ� ����� ������ ���߰� ������ �ϰ�!",2,"�װ� �������̾�?"

elseif req == 2 then
	return 2,0, "���� ��� ���������� �ҷ��� ������ �ϰ� �ִٳ�! �� �𸣰ڰŵ� �켱 ��� ������ �̵����� �ϰ�.",3,"�̵�!"


elseif req == 3 then

	MoveZone(cnum,67,253) --�̺�Ʈ�� ��𽺷� �̵�



end

end

---------------------------------�������� NPC------------------------------------
function NPC_QUEST_1586(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]��������3,��ǥ--

req=reqNumber

if req == 1 then
	if GetItemCount(cnum, 8835,0) < 10 then
	return 5,0, "��, ���� �� ���̱���! @��ħ ������ȸ���� �ҷ��� ��Ƽ�� @�����Ͽ��µ�, Ÿ�̹��� ������!",111,"�̺�Ʈ ������!",2,"������ ���ư�����",3,"���⼭ �� �ϰ� �輼��?",4,"�ҷ��� ��Ƽ��?",5,"������ȸ�� ������?"

	else
	return 6,0, "��, ���� �� ���̱���! @��ħ ������ȸ���� �ҷ��� ��Ƽ�� @�����Ͽ��µ�, Ÿ�̹��� ������!",111,"�̺�Ʈ ������!",6,"ȣ�ڲ����� ��ȯ!",2,"������ ���ư�����",3,"���⼭ �� �ϰ� �輼��?",4,"�ҷ��� ��Ƽ��?"

	end

elseif req == 111 then
	return 7,0, "�ҷ��� �̺�Ʈ ���࿡ ���� ���������� �����Ͻð�.",12,"�������̴� ��� �ֳ���?",13,"����� ��� �ֳ���?",14,"���Ű��� ������ ��� �ϳ���?",15,"������� ����� �˷��ּ���.",16,"Ư���� ����? ȣ�� ����?",17,"�������� ��� ��� ���"


elseif req == 2 then

	return 3,0, "���ư� ������ �����ϰ�.",7,"������Ÿ�� �̵�",8,"��ũ��Ÿ�� �̵�"


elseif req == 3 then

	return 2,0, "�ƾ�.. @'�ҷ���'�� �����Ͽ� '������ȸ���� ������ ��Ƽ'�� �����Ϸ��� ������..@������� ���� �ٴҹ��� �������� ��ġ�� �ִµ�, ��𽺶� �׷���? ������� ���� �ȿ��� ����.. @@���డ ������ ��ƿ��� �������� �شٰ� �ߴµ�..",9,"����?����?"


elseif req == 4 then

	return 1,0, "�׷�. @�ҷ����� ��ǥ�ϴ� '�� ������' �� ���� �Ǹ��� �����Ͽ� �̿��� �鷯 ������ ���ڸ� ��� ������. @@��, �� ������ ��. ���� ���� �ڿ� �� '��������'(81.157)'�� �ִµ�, �ƹ��� ì������ �ʴ���. �ð��� �Ǹ� �� �� �����Գ�. �����Ҹ��� ����� ������ �Ǵ±�.."






elseif req == 5 then
	return 1,0, "'������ȸ' ��, �ҷ��� ��Ƽ ���ָ� �� ������, �̹��� �ű⼭ �� '��������'�� �̰����� ���ԵǾ�����. �Ǹ��迭�� ���൵ ���� �ҷ��� ��Ƽ�� ���� ��������� �츮���� ��Ƽ�ϴ°��� ���� ���� �°Ŷ� �����ϳ�~�������鼭 �ôµ� ��ȭ��(111.85) ��ó�� �ִ�����."


elseif req == 6 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "�̷� ���������� ������ �ϰ� �ٳ����~������ ������ ������?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 8837, 1)
	return 1,0, "�� ����! @@@@@@'��������3 ���� �ҷ������� 10���� �ְ� ȣ�ڲ��� 1���� �޾ҽ��ϴ�..'"
	end


elseif req == 7 then

	MoveZone(cnum, 57, 253)

elseif req == 8 then


	MoveZone(cnum, 59, 253)

elseif req == 9 then

	return 2,0, "�ҷ������� '����'�� �ϰ� �̿����� '����'�̳� ���ڸ� �����°��� �˰�����? @������� ���� ������ ���� ������ ���ɾ��� ����. ���� Ž���� �������� �־ �̷��� ������ ����. @��, ��ŵ� �̺�Ʈ �����Ұǰ�? �ƴϸ� �ʿ����?",10,"��.."

elseif req == 10 then
	return 1,0, "����Ƶ�, �׳� �޶�� ���� �� �ϰڳ�. @@'�ҷ��� ����' 10���� ���� �ָ� ȣ�ڲ����� �ְڳ�. @������� �����̳� ȣ�ڰ��ڸ� ����µ� ���ż� ��� ����ε��� �װ� ����������.. ���͸� ������ �����⵵ ������ Ȯ���� ���Ƽ� �׷���?@���� ����� �� ������ ����� �� �����ž�~"


elseif req == 12 then
	return 1,0, "'��������(81.157)' ���ʹ������� �� �� ���� ���� �ڿ� ��� ��� �ִٳ�.. @�ٷ� �� ��ó�� ã�� ����ɼ�.. @�������̴� �Ƿ����̵�� ��︮�� ���ؼ� ����ִ°� ����. @������ ����, ���Ű��ʵ� ����..@�ð��� �Ǹ� �����ֱ� �ٶ��..@��, �������̴� ������� ���Ű����� �����;��Ѵ���?@�ҽ��ؼ� �׳� ��Ź�� �� �ϴ� ����ξ��� ������� ������ �԰� ���� ���� �ɸ� ��Ź�� �Ұž�."

elseif req == 13 then
	return 1,0, "����? �ƾ�, '��������(111.85)'�� '��ȭ��'���� ���� �ٷ� ���ϰɼ�. @��ȭ�� ���� ������ ���� �ٷ� �����̸� �� ���� ���ฦ �� �� �����ɼ�. @��������� �������� �ҷ��� ������ 2��� �ҷ��ְų� ���� �����̺�Ʈ�� ���� ������ ���� ������ �����ϱ⵵ ����."

elseif req == 14 then
	return 1,0, "'���Ű��� ����(229.35)' �������̴� '����/���/�Ǽ�����' ���� ��ġ�� �ִٳ�. @������ ȥ�� ������ ������ ã�� ����ɼ�. @�װ�  �� ����(1 �ð�����) ������ �������� �������ְ� �ִٳ�. @���� �������̰� ���ϴ� ������� ���Ű��ʵ� �������ְ� ����. @������ �״� �峭�� ���ؼ� ������ �׳� �� ���� �����ž�. @�װ� �����ϴ� Ư���� ������ �ְų� �Ǹ��� ������� �������� ��������!"


elseif req == 15 then
	return 1,0, "������ ���� npc�� ��ȭ�ϴٺ��� ���� �� �ֳ�. @Ư�� npc�� ��� �ڽŰ� ���� ������ �԰ų� Ȥ�� ������� ������ ������� ������ �� �ְų� ������ �޶����ٳ�. @���� npc���� �̼��� �Ϸ��ϸ� ������ �ֱ⵵ �Ѵٳ�. @�װ��� ������ �׳� ���� �ۿ� �ִ� ���͸� ��°� �ְ���!"

elseif req == 16 then
	return 1,0, " Ư���� ������ �������̿��� ������ ����� ��� �ִ� �����̳�. �Ϲ� �ҷ��� �������� ���� �ٸ��� ������. ���������� ���� ���ϸ� '���Ű��� ����' �������̰� �����Ѵٰ� �ϳ׸�.. �׷��� ���� ������ �������� ���شٸ� ������ �� �� �ຸ�Գ�.@�׸��� ȣ�� ���ڴ� ���������� �������� �ϳ��ε�, ���� ���ۿ� �ʿ��� [['ȣ�ڲ���', '�Ҹ��� ����'�� 5����]] ��ư��� ���� �� �ִٳ�. ��, �������̿��� �����ϳ�!"

elseif req == 17 then
	return 1,0, "�켱 ������� ���� ���� ���� @[['ȣ�ڲ���', '�Ǹ��� ����', '���� ����', '�Ҹ��� ����' ��� 30����]]�̸�, �̰� ���� npc���Լ� ��ų� ���� ���Ϳ��Լ� ���� �� �ִٳ�. ��ó�� �ҷ����̴� ������ ���ٸ� ���� npc�� ��ȯ�غ��Գ�."


end

end




---------------------------------�Ƿν�Ƽ NPC------------------------------------

function NPC_QUEST_1589(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ƿν�Ƽ1 ,��ǥ--
req = reqNumber
if req == 1 then


if GetItemCount(cnum, 8835,0) < 100 then
	if GetItemCount(cnum, 8844,2) == 1 then --�Ƿν�Ƽ ���� ���� �� ��ȭ ��
	AddItemCount(cnum,8835,3)
	return 1,0, "�Ƿν�Ƽ ����! �ҷ��� ���̿���. ���� �޾ư�����~@@'�Ƿν�Ƽ1 ���Լ� �ҷ������� 3���� �޾ҽ��ϴ�.'"

	else
	AddItemCount(cnum,8835,1)
	return 1,0, "�ҷ��� ���̿���. ���� �޾ư�����~@@@@@'�Ƿν�Ƽ1 ���Լ� �ҷ������� 1���� �޾ҽ��ϴ�.'"
	end
else
return 1,0, "�ҷ������� �Ǹ��� �����ϴ°� ������....�� ���� ��������� ���ΰ��̶�? (��������)"
end

end

end






function NPC_QUEST_1597(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ƿν�Ƽ3 ,��ǥ--

req = reqNumber

	if req == 1 then



		if GetItemCount(cnum, 8835,0) < 100 then
			AddItemCount(cnum, 8835,1)
				return 1,0, "��ſ� �ҷ��� �����ð�~"
		else
		random = SetRandom(cnum,1,30)

			if random < 10 then
			return 1,0, "��..�� ���Ͱ� �ƴ϶�! @��ġȭ ��ų���� ������! @(�ٵ�ٵ�)"

			elseif random >= 10 and random < 20  then
			return 1,0, "��.. ���� �ҷ������� ������ �ؾ� @�������...��...@�� ���������� �Ƿν�Ƽ���� �Ʊ��۵����� @�ϰ��;��µ�.. �ֳı�? @...��..�������� �����̶���?"

			elseif random >= 20 and random <= 30 then
			return 1,0, "�ҷ��� ������ ����������̳� ���͵鵵 ���������� �׷��� ġ��, ȣ�ڰ��ڴ� �ﺸ '��������(81.157)'�� �� ����ϱ� �� ���̿��� �����°� ���? @�� ���ִٱ�~"
			end
		end

	end

end






function NPC_QUEST_1590(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ƿν�Ƽ2 ,��ǥ--
req = reqNumber

if req == 1 then
	if GetItemCount(cnum, 8835) >= 10 then
	return 2,0, "Ȥ�� �Ǹ��� ������ �ʿ��ϴ�? �׷� �װ� ���� ������ ��ȯ���ٰ�.",4,"��, �ʿ��ؿ�."

	else
	return 1,0, "�޸� �ҷ���~"
	end
elseif req == 4 then

	if GetRemainPocket(cnum) < 1 then
	return 1,0, "�κ��丮���� ���� ����?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 496,1)
	return 1,0, "���� ������ �ٵ��׾�~ ������~ ���δ� ���������� ���� ���ۿ� �ʿ��� ����� �ϴ±���~@@'�Ƿν�Ƽ2 ���� �ҷ������� 10���� �ְ� �Ǹ��Ǽ��� 1���� �޾ҽ��ϴ�.'"
	end

end

end




---------------------------------�������� NPC------------------------------------

function NPC_QUEST_1591(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]��������1 ,��ǥ--
req = reqNumber
if req == 1 then
	if GetItemCount(cnum, 8835,0) >= 10 then
	return 2,0, "�� �߰ſ�! @�� ������� '�Ҹ��� ����' �����϶�...'�Ҹ��� ���ʴ� ���������� ������� ���� ���ۿ� ���˴ϴ�'",5,"���� �ּ���!"

	else
	return 1,0, "....�޸� �ҷ��� ������."
	end

elseif req == 5 then
	if GetRemainPocket(cnum) < 1 then
	return 1,0, "�κ��丮���� ���� ����?"

	else
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 8838, 1)
	return 1,0, "�� ��¥�� �������� �ʾ�.. ��, ������ ���������� ���� ���ۿ� ���Ǳ� ������ .. �����ϰ� ������ ��..@@@@@'��������1 ���� �ҷ������� 10���� �ְ� �Ҹ��� ���� 1���� �޾ҽ��ϴ�."
	end


end
end


function NPC_QUEST_1592(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]��������2 ,��ǥ--
req = reqNumber
if req == 1 then
	if GetItemCount(cnum, 8841 ,2) == 1 or GetItemCount(cnum, 8848 ,2) == 1 then --NPC�� ���� ü��� Ȥ�� �ҷ��� ���� �����
	return 3,0, "��ſ� �ҷ��� ���� ������!",8,"��������2 ������!",9,"���ָӴϵ���!"

	else
	return 1,0, "��ſ� �ҷ�������~"
	end

elseif req == 8 then

if GetItemCount(cnum, 8835,0) < 500 then
	AddItemCount(cnum, 8835, 5)
	return 1,0, "���, �׷��� ���̴�? ���� ���忡 ���� ���� ������ �־���~�ʵ� �����ܴ�~@@@@@'��������2 ���Լ� �ҷ������� 5���� ȹ���Ͽ����ϴ�.'"
else
	return 1,0, "���, �׷��� ���̴�? ���� ���忡 ���� ���� ������ �־���~�ʵ� �����ܴ�~'"
end

elseif req == 9 then
	if GetItemCount(cnum, 8835,0) > 1 then
	AddItemCount(cnum, 8835, -1)
	return 1,0, "��..��? ���ָӴ�? @������ ���� ���� ���� ������µ�!"
	end

end
end




function NPC_QUEST_1598(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]��������3 ,��ǥ--
req = reqNumber

if req == 1 then

	random = SetRandom(cnum,1,3)

	if random == 1 then
	return 1,0, "������ ���� ��Ƽ� '��������'���� ���� ������ 2��� �Ҹ����� �ְ�, �ڽ��� ������ ���� ���� ������ �ش��ϴ� ����� ��ȯ�� �� �� �־�~@�� ���� �ܿ� 100���� ��Ƽ� ��ȯ������, ������ ������ 5,555���� ���� ���ȴޱ�?@�ٵ� ��� ������.."

	elseif random == 2 then
	return 1,0, "������ ���͸� ������ ���� Ȯ���� ���� �� ������ ���� ������� ���� ���� ���� ���̾�~ ������ �����̳� ȣ�ڰ��ڸ� ���� �� �ʿ��� ��� ���� ���Ϳ��Լ� ������ ������ �����ٺ��� �ݹ�����~"

	elseif random == 3 then
	return 1,0, "�ҷ��� ������ ������ ����ٱ�? �׷� ������ �ִ� ������ '��������'���� ��������~ ���� ������ 2��� �Ҹ��µ� ������ �� �־�! ��, �ø��� ������ Ŀ������ ������ Ȯ���� Ŀ���ٴ°�! ������!"

	end


end

end


---------------------------------�Ʊ��۵��� NPC------------------------------------

function NPC_QUEST_1587(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ʊ��۵���1 ,��ǥ--
req = reqNumber

if req == 1 then

if GetItemCount(cnum, 8835,0) < 100 then
	if GetItemCount(cnum,8848, 2) == 1  or GetItemCount(cnum, 8856,2) == 1 then --NPC�� ���� ü��� Ȥ�� �ҷ��� ���� �����
	AddItemCount(cnum, 8835, 3)
	return 1,0, "��, ���� ���� �����̳�! @@'�Ʊ��۵���1 ���Լ� �ҷ������� 3���� �޾ҽ��ϴ�.'"

	else
	AddItemCount(cnum, 8835, 1)
	return 1,0, "�޸� �ҷ���~@@'�Ʊ��۵���1 ���Լ� �ҷ������� 1���� �޾ҽ��ϴ�.'"
	end
else
	return 1,0, "�޸� �ҷ���~~"
end

end
end




function NPC_QUEST_1588(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ʊ��۵���2 ,��ǥ--
req = reqNumber

if req == 1 then
	if GetItemCount(cnum,8835, 0) >= 10 then
	return 2,0, "���� ������ �ʿ��ϸ� �װ� ������ �ִ� ������ ��ȯ���� �ʰڴ�?@'���� ������ ���������� ������� ���� ���ۿ� ���˴ϴ�'",10,"��, ��ȯ�ҰԿ�"

	else
	return 1,0, "�޸� �ҷ���~"
	end

elseif req == 10 then
	AddItemCount(cnum, 8835, -10)
	AddItemCount(cnum, 500,1)
	return 1,0, "��������. ������ ���� ���� ������ ���������� ���� �����ϴµ����� �̻�����ž�~@@@@@'�Ʊ��۵���2���� �ҷ������� 10���� �ְ� ���� ���� 1���� �޾ҽ��ϴ�.'"
end
end




function NPC_QUEST_1596(cnum, reqNumber) --[2011�ҷ����̺�Ʈ]�Ʊ��۵���3 ,��ǥ--
req = reqNumber

if req == 1 then

	random = SetRandom(cnum,1,4)

	if random == 1 then
	return 1,0, "�ҷ����� ��̰� ������ ���ؼ� @���� �������� Ŀ�´����̼ǵ� �߿��ϴ�ϴ�~ @������ ���� �ò������Ѱ� ���̴ϱ��~"

	elseif random == 2 then
	return 1,0, "��ſ� �ҷ��� ��������~"

	elseif random == 3 then
	return 1,0, "�ҷ��� ������ ���� �ܿ��� NPC���Ե� ���� �� �ִ�ϴ�. @��ȭ�� �� ���ų� �̺�Ʈ�� �ϸ� �������� ȹ���ϱ⵵ �ϱ���~!"

	elseif random == 4 then
	return 1,0, "�����ϴ°� ���� ���Ҵµ� �ʹ� ���Ͱ��ݾ�! @@�̷��� ��ɴ����� �ʰ���..?(������)"

	end


end

end