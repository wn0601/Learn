--��ֻ����ʽ���ļ�
file = io.open("demo1.lua", "r")
io.input(file)
print(io.read())
io.close(file)

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file1 = io.open("lua.txt", "a")
io.output(file1)
io.write("--I/O��ģʽ����")
io.close(file1)