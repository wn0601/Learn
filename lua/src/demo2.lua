--���ƽṹ���
--if���
--[[
if conditons then
    then_part
end]]--
print("if:")
if 1<2 then
    a=1+2
    print(a)
end

--[[if conditons then
    then_part
else
    else_part
end]]--
print("if-else:")
if a<2 then
    b=a
    print(b)
else
    b=a-2
    print(b)
end

--[[if conditons then
    then_part
elseif condition then
    elseif_part
else
    else_part
end]]--
print("if-elseif-else:")
if a<2 then
    b=a
elseif b >2 then
    c=a+b
    print(c)
else
    c=2+1
    print(c)
end

--while���
--[[while condition do
    statements;
end]]--
print("while:")
while c<5 do
    print(c)
    c=c+1
end

--repeat-untile���
--[[repeat
    statement;
until conditions;]]--
print("repeat-until:")
repeat
    c=c+1
    print(c)
until c>10

--forѭ��
--[[for var=exp1,exp2,exp3 do
    loop-part
end]]--
print("for����������")
for i=6,c,1 do
    print(i)
end

print("for����������")
for j=9,c do
    print(j)
end

--����forֻ��ʹ����������table
--ipairsһ��������飬pairsһ������������
print("����for:")
tb1 = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}
for k,v in pairs(tb1) do
	print("a[" .. k .. "]" .. " = " .. v) 
end

revDays={}
for n,v in ipairs(tb1) do 
	revDays[v] = n
end
x = "Sun" 
print(revDays[x])

print("function:")
--����
--�෵��ֵ(find����ƥ�䴮��ʼ�ͽ�����λ��)
s,e=string.find("hello lua users","lua")
print(s,e)

function maximum(a)
    local mi=1
    local m=a[mi]
    for i,val in ipairs(a) do
        if val>m then
            mi=i
            m=val
        end
    end
    return m,mi
end
print(maximum({8,10,23,12,5}))

print("�ɱ������")
function add(...)
    local s=0
    for i,v in ipairs{...} do
        s=s+v
    end
    return s
end
print(add(1,2,3,4,5))

print("ƽ��ֵ��")
function ave(...)
    local a={...}
    local s=0
    for i,v in ipairs(a) do
        s=s+v
    end
    return s/#a
end
print(ave(1,2,3,4,5))

print("select:")
function aver(...)
    local s=0
    for i,v in ipairs{...} do
        s=s+v
    end
    return s/select("#",...)
end
print(aver(1,2,3,4,5))

print("select��Σ�")
do
    function foo(...)
        for i =1,select('#', ...) do
            local arg = select(i,...);
            print("arg",arg);
        end
    end
    foo(1,2,3,4)
end