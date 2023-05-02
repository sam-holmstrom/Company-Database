INSERT INTO performers values (0001, "Eilysha", "Paypal", "@eilysha1234", "juggling, dragonstaff, fans, princess", 5555551234,  "222 ridge ln", "Dayton", "OH");
INSERT INTO performers values (0002, "Chloe", "Paypal", "@chloe5678", "fire, ropedart, poi, fans", 5551112233, "2525 6th st", "Coon Rapids", "MN");
INSERT INTO performers values (0003, "Sam", "Paypal", "@sam112233", "fire hoop, LED Hoop, fans", 5551234567, "7713 broadway st", "Minneapolis", "MN");
INSERT INTO performers values (0004, "Leroy", "Venmo", "leroy321", "staff, burlesque, fans, princess", 5559998877, "88 7th ave s", "St Paul", "MN");
INSERT INTO performers values (0005, "Marie", "Venmo", "marie0001", "stiltwalker, fire, lyra, fans", 5554443322, "3385 7th st N", "Dayton", "OH");

INSERT INTO inventory values (001, 0005, "aerial", "aerial rig and lyra");
INSERT INTO inventory values (002, 0001, "LED", "LED dragon staff");
INSERT INTO inventory values (003, 0002, "fire", "Fire crown");
INSERT INTO inventory values (004, 0003, "LED", "double LED hoops");
INSERT INTO inventory values (005, 0004, "LED", "LED fans x3");

INSERT INTO client_table  values (00001, "Jessica Seaborn", 5557654321,  "123 Harkwin", "St Paul" ,"MN");
INSERT INTO client_table  values (00002, "Holly Quinn", 5554444321,  "111 washingtonave", "St Paul"  ,"MN");
INSERT INTO client_table  values (00003, "Eric Border", 5551114321,  "325 9th st w", "Dayton" ,"OH");
INSERT INTO client_table  values (00004, "Amy Smith", 5554442525,  "2121 3rd ave S", "Cincinatti" , "OH");
INSERT INTO client_table  values (00005, "Liam Distal ", 5557654321,  "123 rainbow st", "St Paul" ,"MN");

INSERT INTO event_table values (00001, 00001, "123 rainbow st", "st paul" ,"MN", 900, 900, "fire", "family reunion", '2023-02-05 18:00:00');
INSERT INTO event_table  values (0002, 00002, "222 19th st w", "st paul" ,"MN", 1800, 1800, "fire, LED", "corporate party", '2023-04-04 21:00:00' );
INSERT INTO event_table  values (00003, 00003, "76 spencer st", "Dayton" ,"OH", 300, 100, "princess party", "7 y/o girl birthday", '2023-09-022 14:00:00' );
INSERT INTO event_table  values (00004, 00004, "3283 university ave", "Cincinatti" ,"OH", 1200, 400, "fire", "halloween party", '2023-10-30 18:00:00' );
INSERT INTO event_table  values (00005, 00002, "12 N 34th ave", "st paul" ,"MN", 900, 000, "fire", "christmas party", '2023-12-22 20:00:00' );

INSERT INTO event_staffing values (00001, 0002, 450, TRUE);
INSERT INTO event_staffing values (00001, 0003, 400, TRUE);
INSERT INTO event_staffing values (00002, 0002, 600, TRUE);
INSERT INTO event_staffing values (00002, 0003, 550, TRUE);
INSERT INTO event_staffing values (00002, 0004, 550, TRUE);
INSERT INTO event_staffing values (00003, 0001, 150, FALSE);
INSERT INTO event_staffing values (00003, 0005, 125, FALSE);
INSERT INTO event_staffing values (00004, 0001, 600, FALSE);
INSERT INTO event_staffing values (00004, 0005, 500, FALSE);

