--��һ��lua����
print("lua:")
print("Hello World!")

--i��һ���ֲ�����
print("local:")
local i=1

--name��һ���ֲ�����
print("ȫ�ֱ���:")
name="wn"

--���������
print("��������壺")
local age,height=18,170
sex,work="��","��"
print(age)
print(height)
print(sex)
print(work)

--���������
print("�����������")
print(1+2)
print(1-2)
print(1*2)
print(1/2)
print(2^2)

--�Ƚ������
print("�Ƚ��������")
print(1<2)
print(1>2)
print(1<=2)
print(1>=2)
print(1==2)
print(1~=2)

--[[--�߼������(ֻ��false �� nilΪfalse)
--a and b aΪfalse,����a,���򷵻�b
--a or b aΪtrue,����a,���򷵻�b]]--
print("�߼��������")
print(1 and 2)
print(nil and 2)
print(1 or 2)
print(nil or 2)
--print(1 not 2)
--print(0 not 2)
print(2 > 1 and 12)
print(2 < 1 or 12)

--lua����λ�������x=a?b:c��
--a and b or c
print("��λ�������")
print(1 and 2 or 3)
print(nil and 2 or 3)

--�����
print("����飺")
do
    print("hello")
end

--table
--table["age"] <==>table.age
print("table:")
table["son"]={name="wn",sex="��"}
print(table.son.name)

table1={
    10,--table[1]=10
    [100]=40,
    lewis={
        age=18,
        gender="male",
    },
    20,--[2]=20
}
print(table1[2])

--����
print("������")
function sum(v1,v2)
    return v1+v2
end
print(sum(4,4))

mul = function(s1,s2)
    return s1*s2
end
print(mul(2,2))

--���к��������ı�
le={
    age=18,
    w=function(self,message)
        self.age=self.age+1;
        print(self.age..message)
    end
}
print(le.age)
le.w(le,"�ϰ�")
le:w("�ϰ�")

--type
print("�������ͣ�")
print(type("Hello world"))
print(type(1))
print(type(2.56))
print(type(true))
print(type(nil))
print(type(print))

print("table:")
--tableĬ���Ǵ�1��ʼ��
local tb = {"wn","play","game"}
for k,v in pairs(tb) do
    print(k,v)
end

print("������")
--����
function say(n)
    print(n)
end
say1=say
say1(10)

print("������Ϊ������")
--����������Ϊ��������
function test(t1, fun)
    for k,v in pairs(t1) do
        print(fun(k,v))
    end
end
tab = {"a","b"}
test(tab,
function(key,val)
    return key.."="..val
end
);