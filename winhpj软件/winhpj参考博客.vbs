Do While True
 dim f,txtfile

 Set f = CreateObject("Scripting.FileSystemObject")
 set txtfile = f.opentextfile("D:\web\barcodeprinter\BACKUP\"&date&".txt",8,True) 

 '==== �ж�7��ǰ��log �ļ��Ƿ���ڣ�������ɾ����
If f.FileExists("D:\web\barcodeprinter\BACKUP\"&date-5&".txt") Then
    f.DeleteFile("D:\web\barcodeprinter\BACKUP\"&date-5&".txt")
 end if
 '==== 

 txtfile.writeline("========= ʵʱ���ݿ�ʼ:  "&date&" "&time&"==========")
 txtfile.writeline(" ")
     Call backupfile(f,txtfile)
     WScript.Sleep 10000

 txtfile.writeline("========= ʵʱ���ݽ���:  "&date&" "&time&"==========")
 txtfile.writeline("")

 set f =nothing
 set txtfile=nothing

 Loop

 '------------------------------------ ʵʱ���ݹ��� -----------------------------------
sub backupfile(f,txtfile)
 Dim Path,fso,net
 num=1
 do while num<10

 if num=1 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="BACKUP\barcodeprinter31.mdb"
 end if

 if num=2 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="BACKUP\barcodeprinter32.mdb"
 end if

 if num=3 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="BACKUP\barcodeprinter33.mdb"
 end if

 if num=4 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="BACKUP\barcodeprinter34.mdb"
 end if

 if num=5 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\qjcf_no1"
 target_path="BACKUP\barcodeprinter35.mdb"
 end if

 if num=6 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ������٣�BarCodePrinter��"
target_path="BACKUP\barcodeprinter36.mdb"
 end if

 if num=7 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ������٣�BarCodePrinter��"
target_path="BACKUP\barcodeprinter37.mdb"
 end if

 if num=8 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="BACKUP\barcodeprinter38.mdb"
 end if

 if num=9 then 
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ������٣�BarCodePrinter��"
target_path="BACKUP\barcodeprinter39.mdb"
 end if

 '
 ip="10.97.1.3"&num
 source_path="\\"&ip&"\��Ʒ�������"
target_path="D:\WEB\barcodeprinter\BACKUP\barcodeprinter3"&num&".mdb"  


 '------------ ping ����,����ͨping="T"; -------------------
Set FileSys   =   CreateObject("Scripting.FileSystemObject")
 Set WShShell   =  CreateObject("WScript.Shell")    
 RetCode   =   WShShell.Run("ping " &IP , 0, True )  

 if   RetCode   =   0   Then  ' ping ����ͨ��
ping="T"
 else
 ping="F"
 end if 
   
 set filesys  = nothing
 set wshshell = nothing

 '------------ ping ���� ------------------------------------

if ping="T" then 

 On Error Resume Next '������ʾ,ִ����һ��
Path="X:"
 Set fso = CreateObject("Scripting.FileSystemObject")
 Set net = CreateObject("WScript.Network")

 If Not fso.DriveExists(fso.GetDriveName(Path)) Then
 net.MapNetworkDrive Path,source_path,False,"xcopy","xcopy"
 End If

 Set file = fso.GetFile(Path&"\barcodeprinter.mdb") 
 file.Copy(target_path)    

 net.RemoveNetworkDrive Path,True 

 If Err.Number<>0 Then
 txtfile.writeline("---  "&ip&"   ����ʧ��! "&date&" "&time)
 else
 txtfile.writeline("---  "&ip&"   ���ݳɹ�! "&date&" "&time&"--- OK!")
 end if

 else
 txtfile.writeline("---  "&ip&"   ���粻ͨ! "&date&" "&time)
 end if


 set fso=nothing
 set net=nothing

 num=num+1
 loop

 end sub