print("�ַ���������")
--string.upper()ת��д
print(string.upper("HeRioc"))

--string.lower()תСд
print(string.lower("HeRioc"))

--string.len(arg)����
print(string.len("wn"))

--string.gsub(mainString,findString,replaceString) --���ַ������滻 ������ԭ�����͸���
print(string.gsub("inserter","er","ft"))

--string.reverse(arg)�ַ�����ת
print(string.reverse("hello"))

--string.format(...)�൱��c����sprintf�ĸ�ʽ�����ַ���
year = 2021; month = 8; date = 5;
print(string.format("����:%02d/%02d/%03d", date, month, year))
print(string.format("%.4f",1/3))

--string.rep(string,n)str��n������
print(string.rep("wn",4))

--..���ӷ�
print("a".."b")

--string.char()����������ת��Ϊ�ַ�
print(string.char(97))

--string.byte()�ַ�ת��Ϊ����
print(string.byte("lua"))--����ʣ��1
print(string.byte("lua", 3))

--string.match()Ѱ���ַ����ҵ����
print(string.match("20210811", "3", 1))
print(string.match("20210811", "11", 5))

--tonumber
print(tonumber("a", 16)) --��ʮ�����Ƶ�aתΪ10����