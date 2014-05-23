echo "я вам помогу поставить сертификаты для алкоголиков"


echo "корневые для фсрара"

echo "удаление старых и новых сертификатов"

certmgr.exe -del -c center-inform08.cer -s -r localMachine Root 
certmgr.exe -del -c center-inform08.cer -s -r CurrentUser Root 
certmgr.exe -del -c CentrInform.cer -s -r localMachine Root 
certmgr.exe -del -c CentrInform.cer -s -r CurrentUser Root 
certmgr.exe -del -c ci_2013.cer -s -r localMachine Root 
certmgr.exe -del -c ci_2013.cer -s -r CurrentUser Root 
certmgr.exe -del -c CentrInformEf.cer -s -r localMachine Root 
certmgr.exe -del -c CentrInformEf.cer -s -r CurrentUser Root 
certmgr.exe -del -c CentrInformSPB.cer -s -r localMachine Root 
certmgr.exe -del -c CentrInformSPB.cer -s -r CurrentUser Root 
certmgr.exe -del -c utse_fsrar.crt -s -r CurrentUser Root
certmgr.exe -del -c utse_fsrar.crt -s -r localMachine Root
certmgr.exe -del -c ci_2014.01.cer -s -r CurrentUser Root
certmgr.exe -del -c ci_2014.01.cer -s -r localMachine Root
certmgr.exe -del -c cief_2014.01.cer -s -r CurrentUser Root
certmgr.exe -del -c cief_2014.01.cer -s -r localMachine Root

echo "установка новых сертификатов"

certmgr.exe -add -c utse_fsrar.crt -s -r CurrentUser Root
certmgr.exe -add -c utse_fsrar.crt -s -r localMachine Root

certmgr.exe -add -c ci_2014.01.cer -s -r CurrentUser Root
certmgr.exe -add -c ci_2014.01.cer -s -r localMachine Root

certmgr.exe -add -c cief_2014.02.cer -s -r CurrentUser Root
certmgr.exe -add -c cief_2014.02.cer -s -r localMachine Root

echo "закончили с корневыми. приступаем к другим пользователям" 

certmgr.exe -add -c rusalko_5d14.cer -s -r CurrentUser AddressBook

echo "я вам помог оставить сертификаты для алкоголиков"

done.vbs
