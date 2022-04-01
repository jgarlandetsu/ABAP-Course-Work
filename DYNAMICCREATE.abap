*&---------------------------------------------------------------------*
*& Report ZB014_DYNAMICCREATE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZB014_DYNAMICCREATE.

TYPES: BEGIN OF PEOPLE_BIRTHDAYS_STRUCT,
         MANDT        TYPE SY-MANDT,
         ID           TYPE ZB014_BIRTHDAYS-FRIEND_NUMBER,
         FIRSTNAME    TYPE ZB014_BIRTHDAYS-FRIEND_FIRSTNAME,
         LASTNAME     TYPE ZB014_BIRTHDAYS-FRIEND_LASTNAME,
         DAYOFBIRTH   TYPE ZB014_BIRTHDAYS-DAY_OF_BIRTH,
         MONTHOFBIRTH TYPE ZB014_BIRTHDAYS-MONTH_OF_BIRTH,
         YEAROFBIRTH  TYPE ZB014_BIRTHDAYS-YEAR_OF_BIRTH,
       END OF PEOPLE_BIRTHDAYS_STRUCT.

TYPES: BIRTHDAYSTABLETYPE TYPE SORTED TABLE OF PEOPLE_BIRTHDAYS_STRUCT WITH UNIQUE KEY ID.

DATA: ITABLE TYPE BIRTHDAYSTABLETYPE.

DATA: PERSON TYPE PEOPLE_BIRTHDAYS_STRUCT.

PARAMETERS: ID           TYPE ZB014_BIRTHDAYS-FRIEND_NUMBER OBLIGATORY,
            FNAME    TYPE ZB014_BIRTHDAYS-FRIEND_FIRSTNAME,
            LNAME     TYPE ZB014_BIRTHDAYS-FRIEND_LASTNAME,
            DAYBORN   TYPE ZB014_BIRTHDAYS-DAY_OF_BIRTH,
            MNTHBORN TYPE ZB014_BIRTHDAYS-MONTH_OF_BIRTH,
            YEARBORN  TYPE ZB014_BIRTHDAYS-YEAR_OF_BIRTH.
PERSON-ID = ID.
PERSON-FIRSTNAME = FNAME.
PERSON-LASTNAME = LNAME.
PERSON-DAYOFBIRTH = DAYBORN.
PERSON-MONTHOFBIRTH = MNTHBORN.
PERSON-YEAROFBIRTH = YEARBORN.
INSERT PERSON INTO TABLE ITABLE.

INSERT ZB014_BIRTHDAYS FROM TABLE ITABLE ACCEPTING DUPLICATE KEYS.

WRITE: 'Person added to database'.