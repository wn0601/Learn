Person = {age = 0}
function Person:new(o, a)
    o = o or {}
    setmetatable(o, self)
    self.__index = self;
    a = a or 0
    self.age = a;
    return o;
end

function Person:say()
    print("age = ", self.age);
end

--��������
p1 = Person:new(nil, 10)

p1.age = 11;

p1:say();

--�̳�
Student = Person:new()
function Student:new(o, side)
    o = o or Person:new(o, side)
    setmetatable(o, self)
    self.__index = self;
    return o
end

function Student:say()
    print("ѧ������ = ", self.age)
    Person:say()
end

s1 = Student:new(nil, 10);
s1:say()