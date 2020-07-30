--2019 7월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 --insert into cafe_ACCOUNTS values(20190701,460000,55000,15000,30,(select reservefund_starttime from cafe_reservefund),(select reservefund_endtime from cafe_reservefund) ,(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); -- 다른방식 코드
 insert into cafe_ACCOUNTS values(20190701,460000,450000,10000,78,TO_DATE('07-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-01-2019 23:12','MM-DD-YYYY HH24:MI') ,(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190702,410000,410000,0,68,TO_DATE('07-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-02-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190703,360000,325000,35000,64,TO_DATE('07-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190704,400000,395500,4500,74,TO_DATE('07-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190705,440000,400000,40000,76,TO_DATE('07-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190706,500000,485000,15000,112,TO_DATE('07-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190707,320000,265000,55000,84,TO_DATE('07-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190708,300000,280000,20000,62,TO_DATE('07-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190709,340000,326000,14000,79,TO_DATE('07-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190710,440000,435000,5000,94,TO_DATE('07-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190711,300000,268000,32000,86,TO_DATE('07-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190712,420000,420000,0,72,TO_DATE('07-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190713,470000,455000,15000,107,TO_DATE('07-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190714,420000,365000,55000,67,TO_DATE('07-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190715,430000,395000,35000,86,TO_DATE('07-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); 


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190716,500000,495000,5000,79,TO_DATE('07-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); 


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190717,350000,345000,5000,109,TO_DATE('07-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190718,310000,295000,15000,105,TO_DATE('07-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190719,400000,385000,15000,86,TO_DATE('07-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); 


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190720,310000,295000,15000,98,TO_DATE('07-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); 


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190721,400000,385000,15000,64,TO_DATE('07-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190722,310000,295000,15000,99,TO_DATE('07-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190723,400000,385000,15000,68,TO_DATE('07-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190724,450000,435000,15000,69,TO_DATE('07-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190725,390000,375000,15000,89,TO_DATE('07-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190726,360000,345000,15000,95,TO_DATE('07-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190727,360000,345000,15000,83,TO_DATE('07-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190728,390000,375000,15000,60,TO_DATE('07-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190729,410000,395000,15000,101,TO_DATE('07-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190730,390000,375000,15000,109,TO_DATE('07-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-31-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
insert into cafe_ACCOUNTS values(20190731,500000,485000,15000,78, TO_DATE('07-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-31-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2019 8월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190801,460000,445000,15000,109, TO_DATE('08-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190802,360000,345000,15000,87, TO_DATE('08-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190803,410000,395000,15000,95, TO_DATE('08-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190804,470000,455000,15000,103, TO_DATE('08-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190805,300000,285000,15000,63, TO_DATE('08-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190806,430000,415000,15000,109, TO_DATE('08-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190807,460000,445000,15000,87, TO_DATE('08-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190808,440000,425000,15000,100, TO_DATE('08-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190809,300000,285000,15000,101, TO_DATE('08-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190810,380000,365000,15000,88, TO_DATE('08-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190811,410000,395000,15000,61, TO_DATE('08-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190812,410000,395000,15000,78, TO_DATE('08-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190813,340000,325000,15000,61, TO_DATE('08-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190814,360000,345000,15000,87, TO_DATE('08-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190815,380000,365000,15000,79, TO_DATE('08-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190816,330000,315000,15000,73, TO_DATE('08-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190817,380000,365000,15000,69, TO_DATE('08-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190818,400000,385000,15000,92, TO_DATE('08-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190819,500000,485000,15000,85, TO_DATE('08-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190820,340000,325000,15000,89, TO_DATE('08-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('08-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190821,430000,415000,15000,63, TO_DATE('08-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190822,480000,465000,15000,104, TO_DATE('08-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190823,410000,395000,15000,86, TO_DATE('08-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190824,310000,295000,15000,84, TO_DATE('08-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190825,300000,285000,15000,95, TO_DATE('08-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('08-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190826,320000,55000,15000,83, TO_DATE('08-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('08-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190827,430000,55000,15000,84, TO_DATE('08-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190828,360000,55000,15000,79, TO_DATE('08-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('08-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190829,330000,55000,15000,78, TO_DATE('08-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('08-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190830,410000,55000,15000,72, TO_DATE('08-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('08-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('08-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-31-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190831,430000,55000,15000,73, TO_DATE('08-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('08-31-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));

 

--2019 9월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190901,430000,55000,15000,70, TO_DATE('09-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts)); 
  
  
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190902,450000,55000,15000,89, TO_DATE('09-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-02-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190903,380000,55000,15000,98, TO_DATE('09-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190904,430000,55000,15000,84, TO_DATE('09-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190905,500000,55000,15000,77, TO_DATE('09-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190906,480000,55000,15000,99, TO_DATE('09-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190907,450000,55000,15000,61, TO_DATE('09-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190908,350000,55000,15000,97, TO_DATE('09-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190909,500000,55000,15000,86, TO_DATE('09-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190910,490000,55000,15000,103, TO_DATE('09-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190911,340000,55000,15000,90, TO_DATE('09-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190912,440000,55000,15000,69, TO_DATE('09-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190913,470000,55000,15000,94, TO_DATE('09-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190914,430000,55000,15000,108, TO_DATE('09-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190915,430000,55000,15000,90, TO_DATE('09-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190916,360000,55000,15000,83, TO_DATE('09-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190917,300000,55000,15000,100, TO_DATE('09-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190918,400000,55000,15000,72, TO_DATE('09-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190919,410000,55000,15000,60, TO_DATE('09-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190920,320000,55000,15000,72, TO_DATE('09-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('09-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190921,410000,55000,15000,100, TO_DATE('09-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190922,440000,55000,15000,70, TO_DATE('09-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190923,360000,55000,15000,95, TO_DATE('09-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190924,480000,55000,15000,97, TO_DATE('09-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190925,450000,55000,15000,72, TO_DATE('09-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('09-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190926,320000,55000,15000,62, TO_DATE('09-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('09-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190927,500000,55000,15000,67, TO_DATE('09-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('09-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190928,320000,55000,15000,63, TO_DATE('09-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('09-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190929,480000,55000,15000,84, TO_DATE('09-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('09-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('09-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20190930,500000,55000,15000,80, TO_DATE('09-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('09-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2019 10월--
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191001,440000,55000,15000,81, TO_DATE('10-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191002,340000,55000,15000,84, TO_DATE('10-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-02-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191003,460000,55000,15000,94, TO_DATE('10-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191004,470000,55000,15000,99, TO_DATE('10-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191005,320000,55000,15000,72, TO_DATE('10-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191006,360000,55000,15000,78, TO_DATE('10-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191007,440000,55000,15000,78, TO_DATE('10-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191008,370000,55000,15000,95, TO_DATE('10-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191009,390000,55000,15000,109, TO_DATE('10-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191010,310000,55000,15000,64, TO_DATE('10-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191011,450000,55000,15000,91, TO_DATE('10-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191012,380000,55000,15000,65, TO_DATE('10-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191013,420000,55000,15000,64, TO_DATE('10-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191014,410000,55000,15000,91, TO_DATE('10-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191015,470000,55000,15000,94, TO_DATE('10-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191016,390000,55000,15000,98, TO_DATE('10-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191017,420000,55000,15000,77, TO_DATE('10-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191018,310000,55000,15000,88, TO_DATE('10-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191019,370000,55000,15000,77, TO_DATE('10-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191020,450000,55000,15000,88, TO_DATE('10-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('10-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191021,300000,55000,15000,109, TO_DATE('10-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191022,440000,55000,15000,84, TO_DATE('10-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191023,370000,55000,15000,104, TO_DATE('10-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191024,330000,55000,15000, 99, TO_DATE('10-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191025,400000,55000,15000,64, TO_DATE('10-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('10-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191026,300000,55000,15000,76, TO_DATE('10-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('10-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191027,490000,55000,15000,81, TO_DATE('10-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191028,320000,55000,15000,108, TO_DATE('10-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('10-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191029,400000,55000,15000,99, TO_DATE('10-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('10-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191030,460000,55000,15000,83, TO_DATE('10-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('10-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('10-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-31-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191031,300000,55000,15000,79, TO_DATE('10-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('10-31-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


--2019 11월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191101,470000,55000,15000,104, TO_DATE('11-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191102,380000,55000,15000,63, TO_DATE('11-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-02-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191103,380000,55000,15000,92, TO_DATE('11-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191104,400000,55000,15000,93, TO_DATE('11-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191105,380000,55000,15000,72, TO_DATE('11-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191106,330000,55000,15000,75, TO_DATE('11-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191107,340000,55000,15000,78, TO_DATE('11-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191108,350000,55000,15000,63, TO_DATE('11-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191109,360000,55000,15000,81, TO_DATE('11-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191110,480000,55000,15000,60, TO_DATE('11-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191111,440000,55000,15000,109, TO_DATE('11-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191112,310000,55000,15000,104, TO_DATE('11-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191113,330000,55000,15000,97, TO_DATE('11-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191114,440000,55000,15000,105, TO_DATE('11-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191115,380000,55000,15000,70, TO_DATE('11-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191116,300000,55000,15000,72, TO_DATE('11-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191117,390000,55000,15000,91, TO_DATE('11-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191118,340000,55000,15000,107, TO_DATE('11-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191119,300000,55000,15000,106, TO_DATE('11-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191120,420000,55000,15000,109, TO_DATE('11-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('11-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191121,350000,55000,15000,98, TO_DATE('11-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191122,380000,55000,15000,102, TO_DATE('11-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191123,370000,55000,15000,91, TO_DATE('11-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191124,320000,55000,15000,70, TO_DATE('11-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191125,390000,55000,15000,95, TO_DATE('11-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('11-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191126,370000,55000,15000,67, TO_DATE('11-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('11-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191127,370000,55000,15000,86, TO_DATE('11-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('11-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191128,310000,55000,15000,74, TO_DATE('11-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('11-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191129,350000,55000,15000,96, TO_DATE('11-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('11-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('11-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191130,380000,55000,15000,62, TO_DATE('11-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('11-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2019 12월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-01-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191201,360000,55000,15000,76, TO_DATE('12-01-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-01-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-02-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191202,350000,55000,15000,64, TO_DATE('12-02-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-02-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-03-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191203,440000,55000,15000,107, TO_DATE('12-03-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-03-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-04-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191204,500000,55000,15000,103, TO_DATE('12-04-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-04-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-05-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191205,310000,55000,15000,60, TO_DATE('12-05-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-05-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-06-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191206,420000,55000,15000,85, TO_DATE('12-06-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-06-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-07-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191207,320000,55000,15000,107, TO_DATE('12-07-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-07-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-08-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191208,460000,55000,15000,66, TO_DATE('12-08-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-08-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-09-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191209,480000,55000,15000,82, TO_DATE('12-09-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-09-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-10-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191210,370000,55000,15000,101, TO_DATE('12-10-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-10-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-11-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191211,490000,55000,15000,85, TO_DATE('12-11-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-11-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-12-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191212,460000,55000,15000,87, TO_DATE('12-12-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-12-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-13-2019 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191213,440000,55000,15000,103, TO_DATE('12-13-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-13-2019 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-14-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191214,330000,55000,15000,86, TO_DATE('12-14-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-14-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-15-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191215,390000,55000,15000,70, TO_DATE('12-15-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-15-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-16-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191216,320000,55000,15000,94, TO_DATE('12-16-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-16-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-17-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191217,310000,55000,15000,62, TO_DATE('12-17-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-17-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-18-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191218,380000,55000,15000,78, TO_DATE('12-18-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-18-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-19-2019 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191219,470000,55000,15000,74, TO_DATE('12-19-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-19-2019 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-20-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191220,420000,55000,15000,82, TO_DATE('12-20-2019 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('12-20-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-21-2019 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191221,310000,55000,15000,62, TO_DATE('12-21-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-21-2019 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-22-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191222,490000,55000,15000,90, TO_DATE('12-22-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-22-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-23-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191223,390000,55000,15000,72, TO_DATE('12-23-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-23-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-24-2019 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191224,360000,55000,15000,67, TO_DATE('12-24-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-24-2019 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-25-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191225,490000,55000,15000,80, TO_DATE('12-25-2019 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('12-25-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-26-2019 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191226,370000,55000,15000,78, TO_DATE('12-26-2019 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('12-26-2019 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-27-2019 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191227,470000,55000,15000,106, TO_DATE('12-27-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-27-2019 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-28-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191228,340000,55000,15000,99, TO_DATE('12-28-2019 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('12-28-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-29-2019 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191229,310000,55000,15000,83, TO_DATE('12-29-2019 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('12-29-2019 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-30-2019 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191230,450000,55000,15000,73, TO_DATE('12-30-2019 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('12-30-2019 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('12-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-31-2019 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20191231,450000,55000,15000,110, TO_DATE('12-31-2019 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('12-31-2019 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2020 1월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200101,340000,55000,15000,65, TO_DATE('01-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200102,350000,55000,15000,71, TO_DATE('01-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('01-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200103,430000,55000,15000,104, TO_DATE('01-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('01-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200104,400000,55000,15000,60, TO_DATE('01-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200105,370000,55000,15000,108, TO_DATE('01-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200106,500000,55000,15000,77, TO_DATE('01-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('01-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200107,350000,55000,15000,110, TO_DATE('01-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('01-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200108,360000,55000,15000,76, TO_DATE('01-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200109,490000,55000,15000,90, TO_DATE('01-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200110,390000,55000,15000,60, TO_DATE('01-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200111,360000,55000,15000,98, TO_DATE('01-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200112,370000,55000,15000,60, TO_DATE('01-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200113,300000,55000,15000,73, TO_DATE('01-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200114,420000,55000,15000,80, TO_DATE('01-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('01-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200115,390000,55000,15000,63, TO_DATE('01-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('01-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200116,490000,55000,15000,72, TO_DATE('01-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200117,410000,55000,15000,78, TO_DATE('01-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200118,470000,55000,15000,88, TO_DATE('01-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200119,410000,55000,15000,76, TO_DATE('01-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200120,480000,55000,15000,97, TO_DATE('01-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200121,490000,55000,15000,95, TO_DATE('01-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200122,350000,55000,15000,84, TO_DATE('01-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('01-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('01-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200123,330000,55000,15000,103, TO_DATE('01-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('01-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200124,370000,55000,15000,73, TO_DATE('01-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('01-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('01-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200125,440000,55000,15000,108, TO_DATE('01-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('01-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200126,490000,55000,15000,102, TO_DATE('01-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200127,300000,55000,15000,105, TO_DATE('01-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('01-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200128,300000,55000,15000,100, TO_DATE('01-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-28-2020 23:11','MM-DD-YYYY HH24:MI') ,(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200129,430000,55000,15000,64, TO_DATE('01-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('01-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200130,340000,55000,15000,110, TO_DATE('01-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('01-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('01-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-31-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200131,500000,55000,15000,79, TO_DATE('01-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('01-31-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2020 2월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200201,380000,55000,15000,106, TO_DATE('02-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200202,440000,55000,15000,76, TO_DATE('02-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('02-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200203,360000,55000,15000,84, TO_DATE('02-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('02-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200204,380000,55000,15000,65, TO_DATE('02-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200205,340000,55000,15000,64, TO_DATE('02-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200206,360000,55000,15000,102, TO_DATE('02-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('02-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200207,360000,55000,15000,106, TO_DATE('02-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('02-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200208,460000,55000,15000,79, TO_DATE('02-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200209,450000,55000,15000,71, TO_DATE('02-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200210,410000,55000,15000,95, TO_DATE('02-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200211,330000,55000,15000,80, TO_DATE('02-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200212,340000,55000,15000,73, TO_DATE('02-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200213,370000,55000,15000,93, TO_DATE('02-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200214,300000,55000,15000,108, TO_DATE('02-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('02-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200215,480000,55000,15000,85, TO_DATE('02-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('02-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200216,480000,55000,15000,82, TO_DATE('02-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('02-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200217,500000,55000,15000,82, TO_DATE('02-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200218,360000,55000,15000,108, TO_DATE('02-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200219,340000,55000,15000,64, TO_DATE('02-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200220,490000,55000,15000,87, TO_DATE('02-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200221,310000,55000,15000,93, TO_DATE('02-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('02-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200222,440000,55000,15000,105, TO_DATE('02-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('02-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('02-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200223,340000,55000,15000,106, TO_DATE('02-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('02-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200224,350000,55000,15000,85, TO_DATE('02-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('02-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('02-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200225,490000,55000,15000,88, TO_DATE('02-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('02-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200226,500000,55000,15000,110, TO_DATE('02-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200227,470000,55000,15000,95, TO_DATE('02-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('02-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200228,320000,55000,15000,97, TO_DATE('02-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('02-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('02-29-2020 08:30','MM-DD-YYYY HH24:MI') , TO_DATE('02-29-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200229,320000,55000,15000,95, TO_DATE('02-29-2020 08:30','MM-DD-YYYY HH24:MI') , TO_DATE('02-29-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
--2020 3월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200301,310000,55000,15000,90, TO_DATE('03-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200302,340000,55000,15000,77, TO_DATE('03-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('03-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200303,340000,55000,15000,103, TO_DATE('03-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('03-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200304,400000,55000,15000,83, TO_DATE('03-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200305,340000,55000,15000,67, TO_DATE('03-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200306,300000,55000,15000,91, TO_DATE('03-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('03-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200307,420000,55000,15000,66, TO_DATE('03-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('03-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200308,420000,55000,15000,69, TO_DATE('03-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200309,390000,55000,15000,70, TO_DATE('03-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200310,460000,55000,15000,78, TO_DATE('03-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200311,460000,55000,15000,66, TO_DATE('03-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200312,470000,55000,15000,80, TO_DATE('03-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200313,410000,55000,15000,97, TO_DATE('03-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200314,320000,55000,15000,106, TO_DATE('03-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('03-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200315,440000,55000,15000,64, TO_DATE('03-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('03-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200316,400000,55000,15000,94, TO_DATE('03-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200317,300000,55000,15000,97, TO_DATE('03-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200318,430000,55000,15000,86, TO_DATE('03-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200319,340000,55000,15000,86, TO_DATE('03-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200320,380000,55000,15000,60, TO_DATE('03-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200321,380000,55000,15000,85, TO_DATE('03-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200322,380000,55000,15000,96, TO_DATE('03-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('03-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('03-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200323,410000,55000,15000,65, TO_DATE('03-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('03-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200324,460000,55000,15000,90, TO_DATE('03-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('03-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('03-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200325,370000,55000,15000,61, TO_DATE('03-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('03-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200326,300000,55000,15000,101, TO_DATE('03-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200327,360000,55000,15000,101, TO_DATE('03-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('03-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200328,300000,55000,15000,73, TO_DATE('03-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200329,370000,55000,15000,100, TO_DATE('03-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('03-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200330,300000,55000,15000,81, TO_DATE('03-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('03-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('03-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-31-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200331,450000,55000,15000,62, TO_DATE('03-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('03-31-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


--2020 4월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200401,420000,55000,15000,60, TO_DATE('04-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200402,450000,55000,15000,108, TO_DATE('04-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('04-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200403,480000,55000,15000,102, TO_DATE('04-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('04-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200404,430000,55000,15000,87, TO_DATE('04-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200405,350000,55000,15000,60, TO_DATE('04-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200406,470000,55000,15000,63, TO_DATE('04-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('04-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200407,500000,55000,15000,70, TO_DATE('04-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('04-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200408,450000,55000,15000,93, TO_DATE('04-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200409,340000,55000,15000,108, TO_DATE('04-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200410,370000,55000,15000,98, TO_DATE('04-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200411,300000,55000,15000,80, TO_DATE('04-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200412,430000,55000,15000,61, TO_DATE('04-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200413,480000,55000,15000,63, TO_DATE('04-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200414,430000,55000,15000,68, TO_DATE('04-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('04-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200415,300000,55000,15000,73, TO_DATE('04-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('04-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200416,360000,55000,15000,72, TO_DATE('04-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200417,380000,55000,15000,70, TO_DATE('04-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200418,500000,55000,15000,69, TO_DATE('04-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200419,370000,55000,15000,60, TO_DATE('04-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200420,420000,55000,15000,65, TO_DATE('04-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200421,360000,55000,15000,72, TO_DATE('04-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200422,350000,55000,15000,92, TO_DATE('04-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('04-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('04-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200423,310000,55000,15000,108, TO_DATE('04-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('04-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200424,350000,55000,15000,77, TO_DATE('04-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('04-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('04-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200425,440000,55000,15000,100, TO_DATE('04-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('04-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200426,460000,55000,15000,98, TO_DATE('04-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200427,320000,55000,15000,79, TO_DATE('04-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('04-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200428,440000,55000,15000,91, TO_DATE('04-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('04-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200429,470000,55000,15000,90, TO_DATE('04-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('04-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('04-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200430,340000,55000,15000,93, TO_DATE('04-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('04-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));


--2020 5월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200501,300000,55000,15000,61, TO_DATE('05-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200502,400000,55000,15000,67, TO_DATE('05-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('05-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200503,350000,55000,15000,61, TO_DATE('05-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('05-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200504,360000,55000,15000,96, TO_DATE('05-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200505,490000,55000,15000,74, TO_DATE('05-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200506,410000,55000,15000,92, TO_DATE('05-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('05-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200507,440000,55000,15000,70, TO_DATE('05-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('05-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200508,430000,55000,15000,103, TO_DATE('05-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200509,350000,55000,15000,60, TO_DATE('05-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200510,340000,55000,15000,86, TO_DATE('05-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200511,440000,55000,15000,73, TO_DATE('05-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200512,460000,55000,15000,93, TO_DATE('05-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200513,440000,55000,15000,86, TO_DATE('05-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200514,460000,55000,15000,87, TO_DATE('05-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('05-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200515,410000,55000,15000,110, TO_DATE('05-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('05-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200516,310000,55000,15000,87, TO_DATE('05-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200517,470000,55000,15000,84, TO_DATE('05-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200518,370000,55000,15000,90, TO_DATE('05-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200519,340000,55000,15000,72, TO_DATE('05-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200520,450000,55000,15000,67, TO_DATE('05-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200521,380000,55000,15000,88, TO_DATE('05-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200522,310000,55000,15000,99, TO_DATE('05-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('05-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('05-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200523,420000,55000,15000,93, TO_DATE('05-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('05-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200524,360000,55000,15000,110, TO_DATE('05-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('05-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('05-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200525,450000,55000,15000,77, TO_DATE('05-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('05-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200526,330000,55000,15000,81, TO_DATE('05-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200527,430000,55000,15000,81, TO_DATE('05-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('05-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200528,400000,55000,15000,95, TO_DATE('05-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200529,320000,55000,15000,109, TO_DATE('05-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('05-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200530,470000,55000,15000,73, TO_DATE('05-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('05-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('05-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-31-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200531,420000,55000,15000,74, TO_DATE('05-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('05-31-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2020 6월--
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200601,320000,55000,15000,75, TO_DATE('06-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200602,380000,55000,15000,94, TO_DATE('06-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('06-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200603,370000,55000,15000,102, TO_DATE('06-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('06-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200604,350000,55000,15000,102, TO_DATE('06-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200605,370000,55000,15000,104, TO_DATE('06-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200606,470000,55000,15000,99, TO_DATE('06-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('06-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200607,440000,55000,15000,61, TO_DATE('06-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('06-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200608,400000,55000,15000,105, TO_DATE('06-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200609,440000,55000,15000,108, TO_DATE('06-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200610,340000,55000,15000,83, TO_DATE('06-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200611,400000,55000,15000,110, TO_DATE('06-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200612,370000,55000,15000,97, TO_DATE('06-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200613,430000,55000,15000,69, TO_DATE('06-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200614,310000,55000,15000,62, TO_DATE('06-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('06-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200615,420000,55000,15000,97, TO_DATE('06-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('06-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200616,320000,55000,15000,95, TO_DATE('06-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200617,460000,55000,15000,102, TO_DATE('06-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200618,480000,55000,15000,93, TO_DATE('06-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200619,370000,55000,15000,68, TO_DATE('06-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200620,490000,55000,15000,73, TO_DATE('06-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200621,460000,55000,15000,90, TO_DATE('06-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200622,440000,55000,15000,98, TO_DATE('06-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('06-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('06-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200623,330000,55000,15000,85, TO_DATE('06-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('06-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200624,390000,55000,15000,100, TO_DATE('06-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('06-24-2020 23:10','MM-DD-YYYY HH24:MI') ,(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('06-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200625,320000,55000,15000,71, TO_DATE('06-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('06-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200626,310000,55000,15000,68, TO_DATE('06-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200627,380000,55000,15000,80, TO_DATE('06-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('06-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200628,470000,55000,15000,61, TO_DATE('06-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('06-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200629,420000,55000,15000,63, TO_DATE('06-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('06-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('06-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200630,310000,55000,15000,68, TO_DATE('06-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('06-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));



--2020 7월-
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-01-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200701,490000,55000,15000,73, TO_DATE('07-01-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-01-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-02-2020 23:21','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200702,390000,55000,15000,72, TO_DATE('07-02-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-02-2020 23:21','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-03-2020 23:03','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200703,370000,55000,15000,70, TO_DATE('07-03-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-03-2020 23:03','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-04-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200704,360000,55000,15000,69, TO_DATE('07-04-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-04-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-05-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200705,490000,55000,15000,60, TO_DATE('07-05-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-05-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-06-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200706,370000,55000,15000,65, TO_DATE('07-06-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-06-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('07-07-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200707,470000,55000,15000,72, TO_DATE('07-07-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('07-07-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-08-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200708,340000,55000,15000,92, TO_DATE('07-08-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-08-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-09-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200709,310000,55000,15000,108, TO_DATE('07-09-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-09-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-10-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200710,450000,55000,15000,77, TO_DATE('07-10-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-10-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-11-2020 23:18','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200711,450000,55000,15000,100, TO_DATE('07-11-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-11-2020 23:18','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-12-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200712,340000,55000,15000,98, TO_DATE('07-12-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-12-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-13-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200713,350000,55000,15000,79, TO_DATE('07-13-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-13-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-14-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200714,430000,55000,15000,91, TO_DATE('07-14-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-14-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-15-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200715,400000,55000,15000,90, TO_DATE('07-15-2020 08:33','MM-DD-YYYY HH24:MI') , TO_DATE('07-15-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-16-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200716,370000,55000,15000,93, TO_DATE('07-16-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-16-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-17-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200717,500000,55000,15000,61,  TO_DATE('07-17-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-17-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-18-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200718,350000,55000,15000,67, TO_DATE('07-18-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-18-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-19-2020 23:17','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200719,360000,55000,15000,61, TO_DATE('07-19-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-19-2020 23:17','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-20-2020 23:15','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200720,490000,55000,15000,96, TO_DATE('07-20-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-20-2020 23:15','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-21-2020 23:13','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200721,390000,55000,15000,74, TO_DATE('07-21-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-21-2020 23:13','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-22-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200722,360000,55000,15000,92, TO_DATE('07-22-2020 08:38','MM-DD-YYYY HH24:MI') , TO_DATE('07-22-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('07-23-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200723,370000,55000,15000,70, TO_DATE('07-23-2020 08:39','MM-DD-YYYY HH24:MI') , TO_DATE('07-23-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-24-2020 23:10','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200724,300000,55000,15000,103, TO_DATE('07-24-2020 08:32','MM-DD-YYYY HH24:MI') , TO_DATE('07-24-2020 23:10','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('07-25-2020 23:12','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200725,420000,55000,15000,60, TO_DATE('07-25-2020 08:31','MM-DD-YYYY HH24:MI') , TO_DATE('07-25-2020 23:12','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-26-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200726,390000,55000,15000,86, TO_DATE('07-26-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-26-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-27-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200727,490000,55000,15000,73, TO_DATE('07-27-2020 08:34','MM-DD-YYYY HH24:MI') , TO_DATE('07-27-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-28-2020 23:11','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200728,410000,55000,15000,93, TO_DATE('07-28-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-28-2020 23:11','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-29-2020 23:14','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200729,470000,55000,15000,86, TO_DATE('07-29-2020 08:36','MM-DD-YYYY HH24:MI') , TO_DATE('07-29-2020 23:14','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-30-2020 23:16','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200730,410000,55000,15000,87, TO_DATE('07-30-2020 08:37','MM-DD-YYYY HH24:MI') , TO_DATE('07-30-2020 23:16','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));
 
 
 insert into cafe_reserveFund values((select nvl(max(reserveFund_code),0)+1 from cafe_reserveFund), TO_DATE('07-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-31-2020 23:19','MM-DD-YYYY HH24:MI'), 50000);
 insert into cafe_ACCOUNTS values(20200731,480000,55000,15000,110, TO_DATE('07-31-2020 08:35','MM-DD-YYYY HH24:MI') , TO_DATE('07-31-2020 23:19','MM-DD-YYYY HH24:MI'),(select nvl(max(reserveFund_code),0)+1 from cafe_accounts));

 update cafe_accounts set accounts_card = (accounts_total-accounts_cash) where accounts_code > 20190000;

commit;