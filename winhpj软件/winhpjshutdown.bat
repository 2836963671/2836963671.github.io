
@echo off

shutdown -a

cls

set /a aaa = 0 

set /a guanji = 0

:memu

echo           =========================����������==========================

echo    1:���ö�ʱ 2:�鿴�Ѵ��������� 3:ɾ������ 4:����ʱ�ػ����֣�5:ȡ������ʱ�ػ�            

echo           ==============================================================

if %aaa% NEQ 0 (

echo              =====================ִ�������======================== 

)

if %aaa% == 0 (

goto aa6

) else (

goto aa7

)


:aa1 

set /p var=�����붨ʱ�ػ���ʱ��ʱ��(��ʽ10:08)

at %var% shutdown -f -s -t 10

echo  �ؼ���ʾ�����óɹ���%var% ʱ�ػ�

goto aa6


:aa2

echo �����ǵ������Ѵ���������:       

if %guanji% NEQ 0 (echo ����ʱ��������: %guanji%�ֺ�ػ�) else at

goto aa6


:aa3

echo �����ǵ������Ѵ���������:                                                                            

if %guanji% NEQ 0 (echo ����ʱ��������: %guanji%�ֺ�ػ�) else at

set /P var2="������Ҫɾ��������id:"

at %var2% /delete

echo  �ؼ���ʾ������id %var2% ɾ���ɹ�

goto aa6


:aa4

set /P var3=���ٷ��Ӻ�ػ�:

set /a var4 = %var3% * 60

shutdown -f -s -t %var4%

set /a guanji = var3

echo  �ؼ���ʾ��ϵͳ����%var3%�ֺ�ػ���Ҫȡ������������ 5

goto aa6


:aa5 

if %guanji% NEQ 0 (

echo �ؼ���ʾ������ʱ�ػ�������ȡ��

shutdown -a

set /a guanji = 0

) else (

echo �ؼ���ʾ��û�е���ʱ�ػ�����

)

goto aa6


:aa6

if %aaa% NEQ 0 echo              =====================ִ�������======================== 

set /a aaa = 1


set /P var5=" ��������һ��������س�:"

cls

goto memu


:aa7

if %var5%==1 goto aa1 

if %var5%==2 goto aa2 

if %var5%==3 goto aa3 

if %var5%==4 goto aa4 

if %var5%==5 goto aa5

goto aa6
