

 create table EmployeePersonalDetails(ID int auto_increment,FirstName varchar(20)
 ,LastName varchar(20),FatherName varchar(20),MotherName varchar(20)
 ,Email varchar(35) unique not null,JobProfile varchar(45),Gender varchar(10)
 ,MaritalStatus varchar(15),HusbandName varchar(30)
 ,Nationality varchar(40),DateOfBirth varchar(35)
 ,BloodGroup varchar(10),Username varchar(40)
 ,Password varchar(40),primary key(ID));
 
 Create table EmployeeContactDetails(ID int,ContactNumber varchar(15)
 ,AlternateNumber varchar(20),Address varchar(60),AddressLine2 varchar(60)
 ,City varchar(40),Pincode varchar(10),State varchar(40),Country varchar(30)
 ,primary key(ContactNumber),foreign key(ID) references EmployeePersonalDetails(ID)on delete cascade);
 


 Create table EmployeeDocumentDetails(ID int,AadharCardNo varchar(15)
 ,PANCardNo varchar(20) unique not null,VoterId varchar(20),NameOnVoterId varchar(30)
 ,PassportNumber varchar(40),PassDateOfIssue varchar(18),PassDateOfExp varchar(15)
 ,LicenseNumber varchar(30),LicDateOfIssue varchar(16),LicDateOfExp varchar(17)
 ,primary key(AadharCardNo),foreign key(ID) references EmployeePersonalDetails(ID)on delete cascade);

 Create table EmployeeBankDetails(ID int,BankName varchar(55)
 ,Branch varchar(20),IFSCCode varchar(20),AccountNumber varchar(45)
 ,primary key(AccountNumber),foreign key(ID) references
 EmployeePersonalDetails(ID)on delete cascade);
 

     
  Create table UploadDocumentDetails(ID int,AadharCardFront Blob
     ,AadharCardBack Blob,PANCard Blob ,PassportFront Blob
     ,PassportLast Blob,License Blob ,VoterId Blob 
     ,Certificate10th Blob,Certificate12th Blob,UGCertificate Blob,PGCertificate Blob
     ,CourseCertificate Blob,PassbookFront Blob,Resume Blob,
     foreign key(ID) references EmployeePersonalDetails(ID)on delete cascade);

Create table EmployeeAcademicDetails(ID int,SchoolName10th varchar(40)
,Board10th varchar(40),PassYear10th  varchar(12),Percent10th varchar(10)
,CollegeName12th varchar(45),Board12th   varchar(40) ,PassYear12th varchar(10),Percent12th varchar(10),CollegeNameUG  varchar(45)
,UniversityUG varchar(45) ,StreamUG  varchar(55),DeptUG varchar(55) ,PassYearUG varchar(15)
,PercentUG varchar(10) ,CollegeNamePG varchar(55) ,UniversityPG  varchar(55),StreamPG varchar(55)
,DeptPG varchar(55),PassYearPG varchar(15),PercentPG varchar(15), 
foreign key(ID) references EmployeePersonalDetails(ID)on delete cascade);

 Create table TaskDetails(TaskId int auto_increment,TaskName varchar(45),TaskDescription varchar(90),ID int
 ,EmployeeName varchar(45),Message varchar(90),Status varchar(40) default 'Published'
 ,primary key(TaskId),foreign key(ID) references
 EmployeePersonalDetails(ID)on delete cascade);
 

show tables;


   
     drop table EmployeeContactDetails;

 
   drop table  EmployeeDocumentDetails;
     drop table  EmployeeAcademicDetails;

     drop table EmployeeBankDetails;
    drop table UploadDocumentDetails;

drop table TaskDetails;
drop table EmployeePersonalDetails;

Select * from EmployeeBankDetails;
  Select * from EmployeeContactDetails;
    Select * from  EmployeeDocumentDetails;
Select * from EmployeePersonalDetails;
Select * from  TaskDetails;

desc taskdetails;