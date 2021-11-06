--以只读方式打开文件
file = io.open("demo1.lua", "r")
io.input(file)
print(io.read())
io.close(file)

-- 以附加的方式打开只写文件
file1 = io.open("lua.txt", "a")
io.output(file1)
io.write("--I/O简单模式测试")
io.close(file1)