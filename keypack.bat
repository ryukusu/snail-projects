echo "я вам помогу вам поставить сертификаты"


echo "со старого набора"
certmgr.exe -del -c PNK_sert_2012.cer -s -r CurrentUser Root
certmgr.exe -del -c PNK_sert_2012.cer -s -r localMachine Root
certmgr.exe -del -c CA_2010.crt -s -r CurrentUser Root
certmgr.exe -del -c CA_FSS_RF_2011.cer -s -r CurrentUser Root
certmgr.exe -del -c CA_FSS_RF_2012.cer -s -r CurrentUser Root
certmgr.exe -del -c CA_PFR_2010.cer -s -r CurrentUser Root
certmgr.exe -del -c FNS_Russia.cer -s -r CurrentUser Root
certmgr.exe -del -c GPR_FNS.cer -s -r CurrentUser Root
certmgr.exe -del -c pf.cer -s -r CurrentUser Root
certmgr.exe -del -c root_pf.cer -s -r CurrentUser Root

echo "со старого набора, часть вторая"
certmgr.exe -del -c CA_2010.crt -s -r localMachine Root
certmgr.exe -del -c CA_FSS_RF_2011.cer  -s -r localMachine Root
certmgr.exe -del -c CA_FSS_RF_2012.cer  -s -r localMachine Root
certmgr.exe -del -c CA_PFR_2010.cer -s -r localMachine Root
certmgr.exe -del -c FNS_Russia.cer -s -r localMachine Root
certmgr.exe -del -c GPR_FNS.cer -s -r localMachine Root
certmgr.exe -del -c pf.cer -s -r localMachine Root
certmgr.exe -del -c root_pf.cer -s -r localMachine Root


echo "ни"

certmgr.exe -del -c nise.cer -s -r CurrentUser Root
certmgr.exe -del -c nise.cer -s -r localMachine Root
certmgr.exe -add -c nise.cer -s -r CurrentUser Root
certmgr.exe -add -c nise.cer -s -r localMachine Root

echo "это на всякий случай. есть подозрение, что это сертификата не хватало"

certmgr.exe -del -c nicsert-1.cer -s -r CurrentUser Root
certmgr.exe -del -c nicsert-1.cer -s -r localMachine Root
certmgr.exe -add -c nicsert-1.cer -s -r CurrentUser Root
certmgr.exe -add -c nicsert-1.cer -s -r localMachine Root


echo "статистика"

certmgr.exe -del -c kontora2.cer -s -r localMachine Root 
certmgr.exe -del -c kontora2.cer -s -r CurrentUser Root 

certmgr.exe -add -c kontora3.cer -s -r localMachine Root 
certmgr.exe -add -c kontora3.cer -s -r CurrentUser Root 

certmgr.exe -add -c kontora3-5.cer -s -r localMachine Root 
certmgr.exe -add -c kontora3-5.cer -s -r CurrentUser Root 

echo "и ещё раз для надёжности"

certmgr.exe -add -c kontora3.cer -s -r localMachine Root 
certmgr.exe -add -c kontora3.cer -s -r CurrentUser Root 

certmgr.exe -add -c kontora3-5.cer -s -r localMachine Root 
certmgr.exe -add -c kontora3-5.cer -s -r CurrentUser Root 

echo "новый корневой уц пнк"

certmgr.exe -add -c utse_pnk_2013.cer -s -r localMachine Root 
certmgr.exe -add -c utse_pnk_2013.cer -s -r CurrentUser Root 

echo "new fss"

certmgr.exe -add -c hq_fss.cer -s -r localMachine Root 
certmgr.exe -add -c hq_fss.cer -s -r CurrentUser Root 
certmgr.exe -add -c eFSS.cer -s -r localMachine AddressBook

certmgr.exe -add -c opfr_korn.cer -s -r localMachine Root 
certmgr.exe -add -c opfr_korn.cer -s -r CurrentUser Root 

certmgr.exe -add -c pf_korn.cer -s -r localMachine Root 
certmgr.exe -add -c pf_korn.cer -s -r CurrentUser Root 

echo "ретро-сертификат для пф"

certmgr.exe -add -c opf09.cer -s -r localMachine Root 
certmgr.exe -add -c opf09.cer -s -r CurrentUser Root 
certmgr.exe -add -c pfrf09.cer -s -r localMachine Root 
certmgr.exe -add -c pfrf09.cer -s -r CurrentUser Root 

echo "новый шаблон"

certmgr.exe -add -c имя.cer -s -r localMachine Root 
certmgr.exe -add -c имя.cer -s -r CurrentUser Root 


OIDs.reg

echo "я вам помог вам поставить сертификаты"
