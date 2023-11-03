#D:\Andestech\AndeSight_RDS_v511\cygwin\bin\bash.exe
export PATH=/cygdrive/d/Andestech/AndeSight_RDS_v511/toolchains/nds32le-elf-mculib-v5/bin:$PATH
export PATH=/cygdrive/d/Andestech/AndeSight_RDS_v511/utils/:$PATH
make clean
make


#

#./riscv32-unknown-elf-gdb -ex "target remote localhost:1111"
# AndeSight_RDS_v511\toolchains\nds32le-elf-mculib-v5\bin\.Andesgdbinit  set verbose on

# info all-registers将会卡死

# 0x80001eae
# monitor reset halt无效
# info program
# list-thread-groups将会卡死

# break *0x80001ea0
# monitor targets

# x/10wx 0x80001234 //查看内存地址 0x80001234 处的前 10 个 32 位整数（十六进制格式）：

# Reset with SMU
# set *(int *)0xF0100014 = 60
# set *(int *)0xF0100014 = 0x3C