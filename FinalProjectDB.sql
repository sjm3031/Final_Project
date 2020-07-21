create table CAFE_EMPLOYEE(  
    employee_code number primary key,          
    employee_name varchar(20) not null unique,   
    employee_jumin varchar(20) not null ,          
    employee_phone varchar(20) ,                
    employee_address varchar(50),               
    employee_startdate date not null,            
    employee_enddate date,                       
    employee_endyn varchar(1),                   
    employee_bank varchar(20),                   
    employee_bankaddress varchar(30),            
    employee_jobname varchar(20) not null REFERENCES CAFE_JOB(job_name)   
    );
    
create table CAFE_JOB(      
    job_code number not null unique,          
    job_name varchar(20) primary key,          
    job_tpay number(20),                    
    job_mpay number(20)                      
    );
   select * from cafe_job;
   
create table cafe_emptna(        
        emptna_code number primary key,                                                  
        emptna_empcode number REFERENCES CAFE_EMPLOYEE (employee_code),   
        emptna_year number not null,                                          
        emptna_month number not null,                                       
        emptna_day number not null,                                         
        emptna_starttime number not null,                                              
        emptna_endtime number,                                                
        emptna_daytotaltime number(10),                                           
        emptna_monthtotaltime number(10)                                          
    );
 
create table cafe_salary(
    salary_code number not null primary key,
    salary_empcode number not null REFERENCES CAFE_EMPLOYEE (employee_code),
    salary_year number not null,
    salary_month number not null,
    salary_time number not null,
    salary_tpay number not null,
    salary_mpay number not null,
    salary_totalpay number not null,
    salary_date number not null
    );

 