INSERT INTO BRANCH(STREET, BUILDING, PHONE)
VALUES ('���������', 15, '+79899999999');
INSERT INTO BRANCH(STREET, BUILDING, PHONE, UNFORMED)
VALUES ('������� ��.', 32, '+79899999999', TO_DATE('15.01.2021','dd.mm.yyyy'));
INSERT INTO BRANCH(STREET, BUILDING, PHONE)
VALUES ('��������������', 36, '+79899999999');
INSERT INTO BRANCH(STREET, BUILDING, PHONE, CREATED, UNFORMED)
VALUES ('������', 188, '+79899991999', TO_DATE('01.02.2020','dd.mm.yyyy'), TO_DATE('12.12.2019','dd.mm.yyyy'));

INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('����', '������', '1341 515141');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('����', '������', '4159 124714');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('�����', '������', '4094 940512');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('�������', '��������', '8591 950159');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('�����', '���������', '3451 930142');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('���������', '�������������', '1349 128353');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('���������', '������', '2357 984513');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('��������', '�����', '6872 467784');
INSERT INTO PERSON(NAME, SURNAME, PASSPORT)
VALUES ('����', '���������', '4655 997315');

INSERT INTO POSITION(DESCRIPTION)
VALUES ('��������');
INSERT INTO POSITION(DESCRIPTION)
VALUES ('�������������');
INSERT INTO POSITION(DESCRIPTION)
VALUES ('�������������');

INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (6, 1, 13141, 60000, 1);
INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (6, 2, 13142, 30000, 1);
INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (7, 2, 13143, 35000, 1);
INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (8, 1, 45156, 60000, 2);
INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (8, 3, 45157, 20000, 2);
INSERT INTO EMPLOYEE(PERSON_ID, POSITION_ID, CONTRACT_ID, SALARY, BRANCH_ID)
VALUES (9, 2, 45158, 35000, 2);


INSERT INTO COURSE(LANGUAGE, EMPLOYEE_ID, YEAR_SINCE)
VALUES ('English', 2, 2018);
INSERT INTO COURSE(LANGUAGE, EMPLOYEE_ID, YEAR_SINCE)
VALUES ('French', 3, 2017);
INSERT INTO COURSE(LANGUAGE, EMPLOYEE_ID, YEAR_SINCE)
VALUES ('English', 6, 2016);

INSERT INTO STUDENT(PERSON_ID, COURSE_ID)
VALUES (1, 2);
INSERT INTO STUDENT(PERSON_ID, COURSE_ID)
VALUES (2, 1);
INSERT INTO STUDENT(PERSON_ID, COURSE_ID)
VALUES (3, 1);
INSERT INTO STUDENT(PERSON_ID, COURSE_ID)
VALUES (4, 3);
INSERT INTO STUDENT(PERSON_ID, COURSE_ID)
VALUES (5, 3);


INSERT INTO LESSON(COURSE_ID, STARTING, ROOM) 
VALUES (1, TO_DATE('01.02.2020:10:00','dd.mm.yyyy:hh24:mi'), 1);
INSERT INTO LESSON(COURSE_ID, STARTING, ROOM) 
VALUES (2, TO_DATE('15.01.2020:10:00','dd.mm.yyyy:hh24:mi'), 1);
INSERT INTO LESSON(COURSE_ID,  STARTING, ROOM) 
VALUES (3, TO_DATE('15.01.2020:10:00','dd.mm.yyyy:hh24:mi'), 2);

