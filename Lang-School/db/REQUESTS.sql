-- 1
SELECT
    BRANCH_ID, PERSON.NAME, PERSON.SURNAME, POSITION.DESCRIPTION
FROM
    BRANCH
    INNER JOIN EMPLOYEE USING (BRANCH_ID)
    INNER JOIN POSITION USING (POSITION_ID)
    INNER JOIN PERSON   USING (PERSON_ID)
WHERE
    POSITION.DESCRIPTION = 'Директор';

-- 2
SELECT
    PERSON.NAME, PERSON.SURNAME, POSITION.DESCRIPTION, EMPLOYEE.SALARY
FROM
    BRANCH
    INNER JOIN EMPLOYEE USING (BRANCH_ID)
    INNER JOIN PERSON   USING (PERSON_ID)
    INNER JOIN POSITION USING (POSITION_ID)
WHERE
    -- менять филиал тут
    BRANCH_ID = 1;

-- 3
SELECT
    *
FROM
    BRANCH
WHERE
    -- менять даты тут
    CREATED > '01-JAN-10'
    AND UNFORMED < '01-JAN-30'
    AND CREATED > UNFORMED;

-- 4
SELECT
    BRANCH_ID, SUM(EMPLOYEE.SALARY)
FROM
    BRANCH
    INNER JOIN EMPLOYEE USING (BRANCH_ID)
GROUP BY
    BRANCH_ID
HAVING
    SUM(EMPLOYEE.SALARY) > (SELECT AVG(SALARY) FROM EMPLOYEE);

-- 5
SELECT
    PERSON.NAME, PERSON.SURNAME
FROM
    PERSON
    INNER JOIN EMPLOYEE USING (PERSON_ID)
GROUP BY
    PERSON.NAME, PERSON.SURNAME
HAVING
    COUNT(EMPLOYEE.POSITION_ID) > 1;