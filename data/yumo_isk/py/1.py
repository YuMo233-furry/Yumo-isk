#变量
i = 0
i += 1

# 打开文件并写入内容
with open('yumo_cmp/functions/1.mcfunction', 'w') as file:
    file.write('Hello, World!'+'\n')
    file.write('\n')
    file.write('Hello, World!'+str(i))

#循环
for __count in range(20):
    pass


#创建文件夹
#引用
import os
#创建文件夹
os.makedirs('yumo_cmp/functions/1', exist_ok=True)

os.mkdir('yumo_cmp/functions/1')