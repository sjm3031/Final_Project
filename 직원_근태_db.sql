    insert into cafe_employee values('1001', '선윤하', '960812 2408517', '010-2325-1541', '인천', '18/09/27', '', 'n', '신한', '110-418-218594', '매니저');
    
    insert into cafe_employee values('1002', '이도연', '800125 2607412', '010-1928-3746', '서울', '18/12/24', '', 'n', '카카오', '3333163146320', '매니저');
    
    insert into cafe_employee values('2001', '강현제', '940416 1047412', '010-4301-1668', '부천', '19/01/31', '', 'n', '하나', '194-960402-74652', '아르바이트pro');
    
    insert into cafe_employee values('2002', '손종민', '941027 1017718', '010-4388-3031', '서울', '19/06/30', '', 'n', '우리', '033-066955-30609', '아르바이트pro');
    
    insert into cafe_employee values('3001', '박만규', '910924 1040608', '010-4989-4989', '서울', '20/03/27', '25/03/31', 'y', '농협', '302-0416-8789-11', '아르바이트');
    
    insert into cafe_employee values('3002', '장윤하', '940724 2071813', '010-5514-8025', '서울', '20/06/12', '', 'n', '외환', '020-107413-567', '아르바이트');
    
    insert into cafe_employee values('3003', '김진호', '941202 1040608', '010-9920-1729', '일산', '20/04/27', '', 'n', '국민', '304102-04-177349', '아르바이트');
    
    insert into cafe_employee values('3004', '이유신', '950118 1071819', '010-8963-3790', '서울', '20/06/24', '', 'n', '산업', '0108963379000', '아르바이트');
    
    insert into cafe_employee values('3005', '정승원', '910624 1041876', '010-4689-7328', '서울', '20/06/27', '', 'n', '경남', '221-001149-04-016', '아르바이트');
    
    insert into cafe_employee values('3006', '배정모', '951111 1187626', '010-9954-2787', '부산', '20/06/30', '', 'n', '대구', '505-10-206971-6', '아르바이트');

    insert into cafe_employee values('3008', '한현탁', '901018 1683487', '010-3454-3849', '판교', '20/07/01', '', 'n', '카카오', '3333163248260', '아르바이트');

    insert into cafe_employee values('3009', '박진수', '951111 1836921', '010-6954-0727', '인천', '20/07/01', '', 'n', '농협', '302-0417-2939-11', '아르바이트');

--				     선윤하 화요일 오프
--				     이도연 목요일 오프	
--			     	     강현제 평일 데이타임
--				     손종민 평일 나이트
--				     박만규 평일 종일
--				     장윤하 평일 월수금
--				     김진호 평일 화목
--				     이유신 평빵구,주말 데이
--				     정승원 주말 나이트
--				     배정모 가끔 빵꾸
--				     한현탁 주말데이
--				     박진수 주말 나이트

    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 1, (to_date('07-01-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 1, (to_date('07-01-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 1, (to_date('07-01-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 1, (to_date('07-01-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 1, (to_date('07-01-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 1, (to_date('07-01-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 1;
    
    
    --7월 2일-- 목ex
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 2, (to_date('07-02-2020 08:52:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 21:37:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 2, (to_date('07-02-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 16:05:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 2, (to_date('07-02-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 22:58:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 2, (to_date('07-02-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 15:43:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 2, (to_date('07-02-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 21:43:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 2;
    
    
    --7월 3일-- 금ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 3, (to_date('07-03-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 3, (to_date('07-03-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 3, (to_date('07-03-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 3, (to_date('07-03-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 3, (to_date('07-03-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 3, (to_date('07-03-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 3, (to_date('07-03-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 3;
    
    
    --7월 4일-- 토ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 4, (to_date('07-04-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 4, (to_date('07-04-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 4, (to_date('07-04-2020 11:29:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 16:01:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 4, (to_date('07-04-2020 17:35:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 4, (to_date('07-04-2020 11:47:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 4, (to_date('07-04-2020 12:02:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 4, (to_date('07-04-2020 17:59:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 4;
    
    
    --7월 5일-- 일ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 5, (to_date('07-05-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 5, (to_date('07-05-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 5, (to_date('07-05-2020 11:29:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 16:01:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 5, (to_date('07-05-2020 17:35:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 5, (to_date('07-05-2020 11:47:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 5, (to_date('07-05-2020 12:15:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 18:49:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 5;
    
    
    --7월 6일-- 월ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 6, (to_date('07-06-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 6, (to_date('07-06-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 6, (to_date('07-06-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 6, (to_date('07-06-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 6, (to_date('07-06-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 6, (to_date('07-06-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 6;
    
    
    --7월 7일-- 화ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 7, (to_date('07-07-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 7, (to_date('07-07-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 7, (to_date('07-07-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 7, (to_date('07-07-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 7, (to_date('07-07-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 7;
    
    
    --7월 8일-- 수
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 8, (to_date('07-08-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 8, (to_date('07-08-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 8, (to_date('07-08-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 8, (to_date('07-08-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 8, (to_date('07-08-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 8, (to_date('07-08-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 8;
    
    
    --7월 9일-- 목
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 9, (to_date('07-09-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 9, (to_date('07-09-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 9, (to_date('07-09-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 9, (to_date('07-09-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 9, (to_date('07-09-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 9;
    
    
    --7월 10일-- 금
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 10, (to_date('07-10-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 10, (to_date('07-10-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 10, (to_date('07-10-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 10, (to_date('07-10-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 10, (to_date('07-10-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 10, (to_date('07-10-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 10, (to_date('07-10-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 10;
    
    
    --7월 11일-- 토
    
    
     insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 11, (to_date('07-11-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 11, (to_date('07-11-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 11, (to_date('07-11-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 11, (to_date('07-11-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 11, (to_date('07-11-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 11, (to_date('07-11-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 11, (to_date('07-11-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 11;
    
    
    --7월 12일-- 일
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 12, (to_date('07-12-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 12, (to_date('07-12-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 12, (to_date('07-12-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 12, (to_date('07-12-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 12, (to_date('07-12-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 12, (to_date('07-12-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 12, (to_date('07-12-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 12;
    
    
    --7월 13일-- 월
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 13, (to_date('07-13-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 17:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 13, (to_date('07-13-2020 17:21:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 23:17:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 13, (to_date('07-13-2020 08:13:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 15:52:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 13, (to_date('07-13-2020 15:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 23:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 13, (to_date('07-13-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 14:53:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 13, (to_date('07-13-2020 14:11:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 20:53:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 13;
    
    
    --7월 14일-- 화
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 14, (to_date('07-14-2020 08:48:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 21:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 14, (to_date('07-14-2020 08:26:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 16:16:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 14, (to_date('07-14-2020 15:39:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 22:59:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 14, (to_date('07-14-2020 08:52:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 15:17:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 14, (to_date('07-14-2020 15:24:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 21:23:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 14;
    
    
    --7월 15일-- 수
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 15, (to_date('07-15-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 15, (to_date('07-15-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 15, (to_date('07-15-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 15, (to_date('07-15-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 15, (to_date('07-15-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 15, (to_date('07-15-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 15;
    
    
    --7월 16일-- 목
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 16, (to_date('07-16-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 16, (to_date('07-16-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 16, (to_date('07-16-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 16, (to_date('07-16-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 16, (to_date('07-16-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 16;
    
    
    --7월 17일-- 금
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 17, (to_date('07-17-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 17, (to_date('07-17-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 17, (to_date('07-17-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 17, (to_date('07-17-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 17, (to_date('07-17-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 17, (to_date('07-17-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 17, (to_date('07-17-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 17;
    
    
    --7월 18일-- 토
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 18, (to_date('07-18-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 18, (to_date('07-18-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 18, (to_date('07-18-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 18, (to_date('07-18-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 18, (to_date('07-18-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 18, (to_date('07-18-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 18, (to_date('07-18-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 18;
    
    
    --7월 19일-- 일
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 19, (to_date('07-19-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 19, (to_date('07-19-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 19, (to_date('07-19-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 19, (to_date('07-19-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 19, (to_date('07-19-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 19, (to_date('07-19-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 19, (to_date('07-19-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 19;
    
    
    --7월 20일-- 월
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 20, (to_date('07-20-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 20, (to_date('07-20-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 20, (to_date('07-20-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 20, (to_date('07-20-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 20, (to_date('07-20-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 20, (to_date('07-20-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 20;
    
    
    --7월 21일-- 화
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 21, (to_date('07-21-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 21, (to_date('07-21-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 21, (to_date('07-21-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 21, (to_date('07-21-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 21, (to_date('07-21-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 21;
    
    
    --7월 22일-- 수
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 22, (to_date('07-22-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 22, (to_date('07-22-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 22, (to_date('07-22-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 22, (to_date('07-22-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 22, (to_date('07-22-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 22, (to_date('07-22-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 22;
    
    
    --7월 23일-- 목
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 23, (to_date('07-23-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 23, (to_date('07-23-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 23, (to_date('07-23-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 23, (to_date('07-23-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 23, (to_date('07-23-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 23;
    
    
    
    --7월 24일-- 금
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 24, (to_date('07-24-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 24, (to_date('07-24-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 24, (to_date('07-24-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 24, (to_date('07-24-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 24, (to_date('07-24-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 24, (to_date('07-24-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 24, (to_date('07-24-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 24;
    
    
    --7월 25일-- 토
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 25, (to_date('07-25-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 25, (to_date('07-25-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 25, (to_date('07-25-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 25, (to_date('07-25-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 25, (to_date('07-25-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 25, (to_date('07-25-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 25, (to_date('07-25-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 25;
    
    
    --7월 26일-- 일
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 26, (to_date('07-26-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 26, (to_date('07-26-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 26, (to_date('07-26-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 26, (to_date('07-26-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 26, (to_date('07-26-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 26, (to_date('07-26-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 26, (to_date('07-26-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 26;
    
    
    --7월 27일-- 월
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 27, (to_date('07-27-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 27, (to_date('07-27-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 27, (to_date('07-27-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 27, (to_date('07-27-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 27, (to_date('07-27-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 27, (to_date('07-27-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 27;
    
    
    --7월 28일-- 화
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 28, (to_date('07-28-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 28, (to_date('07-28-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 28, (to_date('07-28-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 28, (to_date('07-28-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 28, (to_date('07-28-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 28;
    
    
    --7월 29일-- 수
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 29, (to_date('07-29-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 29, (to_date('07-29-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 29, (to_date('07-29-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 29, (to_date('07-29-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 29, (to_date('07-29-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 29, (to_date('07-29-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 29;
    
    
    --7월 30일-- 목
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 30, (to_date('07-30-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 30, (to_date('07-30-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 30, (to_date('07-30-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 30, (to_date('07-30-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 30, (to_date('07-30-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 30;
    
    
    --7월 31일-- 금
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 31, (to_date('07-31-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 31, (to_date('07-31-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 31, (to_date('07-31-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 31, (to_date('07-31-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 31, (to_date('07-31-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 31, (to_date('07-31-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 31, (to_date('07-31-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 31;
    
    
    --8월 1일-- 토
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 1, (to_date('08-01-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 1, (to_date('08-01-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 1, (to_date('08-01-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 8, 1, (to_date('08-01-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 1, (to_date('08-01-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 8, 1, (to_date('08-01-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 8, 1, (to_date('08-01-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 1 and emptna_month = 8;
    
    
    --8월 2일-- 일
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 2, (to_date('08-02-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 2, (to_date('08-02-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 2, (to_date('08-02-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 8, 2, (to_date('08-02-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 2, (to_date('08-02-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 8, 2, (to_date('08-02-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 8, 2, (to_date('08-02-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 2 and emptna_month = 8;
    
    
    --8월 3일-- 월
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 3, (to_date('08-03-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 3, (to_date('08-03-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 3, (to_date('08-03-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 3, (to_date('08-03-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 8, 3, (to_date('08-03-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 3, (to_date('08-03-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 3 and emptna_month = 8;
    
    
    --8월 4일-- 화
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 4, (to_date('08-04-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 4, (to_date('08-04-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 4, (to_date('08-04-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 8, 4, (to_date('08-04-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 4, (to_date('08-04-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 4 and emptna_month = 8;
    
    
    --8월 5일-- 수
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 5, (to_date('08-05-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 5, (to_date('08-05-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 5, (to_date('08-05-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 5, (to_date('08-05-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 8, 5, (to_date('08-05-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 5, (to_date('08-05-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 5 and emptna_month = 8;
    
    
				
				
					
							