CREATE TABLE BRANCH(
                       BRANCH_ID               NUMBER          GENERATED AS IDENTITY PRIMARY KEY,
                       STREET                  VARCHAR(30)     NOT NULL,
                       BUILDING                NUMBER          NOT NULL,
                       PHONE                   VARCHAR(20)     NOT NULL,
                       CREATED                 DATE            DEFAULT CURRENT_DATE,
                       UNFORMED                DATE
);

CREATE TABLE PERSON(
                       PERSON_ID               NUMBER          GENERATED AS IDENTITY PRIMARY KEY,
                       NAME                    VARCHAR(30)     NOT NULL,
                       SURNAME                 VARCHAR(30)     NOT NULL
);


CREATE TABLE POSITION(
                         POSITION_ID             NUMBER          GENERATED AS IDENTITY PRIMARY KEY,
                         DESCRIPTION             VARCHAR(30)     NOT NULL
);

CREATE TABLE EMPLOYEE(
                         EMPLOYEE    NUMBER          GENERATED AS IDENTITY PRIMARY KEY,
                         PERSON_ID               NUMBER          REFERENCES PERSON(PERSON_ID) NOT NULL,
                         CONTRACT_ID             NUMBER          NOT NULL,
                         POSITION_ID             NUMBER          REFERENCES POSITION(POSITION_ID) NOT NULL,
                         BRANCH_ID               NUMBER          REFERENCES BRANCH(BRANCH_ID) NOT NULL,
                         SALARY                  NUMBER          NOT NULL
);

CREATE TABLE COURSE(
                       COURSE_ID               NUMBER          GENERATED AS IDENTITY PRIMARY KEY NOT NULL,
                       LANGUAGE                VARCHAR(20)     NOT NULL,
                       BRANCH_ID               NUMBER          REFERENCES BRANCH(BRANCH_ID) NOT NULL
);


CREATE TABLE STUDENT(
                        STUDENT_ID              NUMBER          GENERATED AS IDENTITY PRIMARY KEY,
                        PERSON_ID               NUMBER          REFERENCES PERSON(PERSON_ID),
                        COURSE_ID               NUMBER          REFERENCES COURSE(COURSE_ID)
);
