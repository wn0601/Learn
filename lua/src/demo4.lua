--����
print("���飺")
arr={"lua","lu","l"}
for i =1,3 do
    print(arr[i])
end

--����Ͷ�ά����
print("��ά���飺")
mt={}
for i=1,10 do
    mt[i]={}
    for j=1,10 do
        mt[i][j]=j
        print("mt["..i.."]["..j.."]".."="..mt[i][j])
    end
end

--table concat����
print("��")
fruits = {"banana","orange","apple"}
--û�����ӷ�
print("���Ӻ���ַ��� ",table.concat(fruits))
-- ָ�������ַ�
print("���Ӻ���ַ��� ",table.concat(fruits,", "))
-- ָ������������ table
print("���Ӻ���ַ��� ",table.concat(fruits,", ", 2,3))
--insert
table.insert(fruits,"pear")
for k,v in ipairs(fruits) do
    print(k,v)
end
print("table����λ�ã�")
table.insert(fruits,2,"grapes")
for k,v in ipairs(fruits) do
    print(k,v)
end
print(fruits[6])
print("remove��")
table.remove(fruits)
for k,v in ipairs(fruits) do
    print(k,v)
end
print("removeλ�ã�")
table.remove(fruits,2)
for k,v in ipairs(fruits) do
    print(k,v)
end
print("sort��")
table.sort(fruits)
for k,v in ipairs(fruits) do
    print(k,v)
end
--max
print("���ֵ��")
function table_maxn(t)
    local mn=nil;
    for k,v in pairs(t) do
        if(mn==nil) then
            mn=v
        end
        if mn<v then
            mn=v
        end
    end
    return mn
end
tb={[1]=2,[2]=6,[3]=34,[26]=5}
print("tb���ֵ��", table_maxn(tb))
--print("tb���� ", #tb)

--����
print("��ȡ���ȣ�")
function table_leng(t)
    local leng=0
    for k, v in pairs(t) do
      leng=leng+1
    end
    return leng;
end
  
print(table_leng(tb))

--ģ����� require
print("ģ��Ͱ���")
require("module")
print(module.constant)
module.func3()
print("����������")
local m=require("module")
print(m.constant)
m.func3()