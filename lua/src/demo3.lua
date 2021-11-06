print("字符串操作：")
--string.upper()转大写
print(string.upper("HeRioc"))

--string.lower()转小写
print(string.lower("HeRioc"))

--string.len(arg)长度
print(string.len("wn"))

--string.gsub(mainString,findString,replaceString) --在字符串中替换 返回中原函数和个数
print(string.gsub("inserter","er","ft"))

--string.reverse(arg)字符串反转
print(string.reverse("hello"))

--string.format(...)相当于c语言sprintf的格式化的字符串
year = 2021; month = 8; date = 5;
print(string.format("日期:%02d/%02d/%03d", date, month, year))
print(string.format("%.4f",1/3))

--string.rep(string,n)str的n个拷贝
print(string.rep("wn",4))

--..链接符
print("a".."b")

--string.char()将整型数字转换为字符
print(string.char(97))

--string.byte()字符转换为数字
print(string.byte("lua"))--后面剩了1
print(string.byte("lua", 3))

--string.match()寻找字符串找到输出
print(string.match("20210811", "3", 1))
print(string.match("20210811", "11", 5))

--tonumber
print(tonumber("a", 16)) --把十六进制的a转为10进制