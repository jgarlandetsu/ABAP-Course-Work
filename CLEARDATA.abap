*&---------------------------------------------------------------------*
*& Report ZB014_CLEARDATA
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZB014_CLEARDATA.

DATA: BIRTHDAYS TYPE ZB014_BIRTHDAYS,
      BIRTHDAYS_TABLE TYPE TABLE OF ZB014_BIRTHDAYS.

SELECT * FROM ZB014_BIRTHDAYS INTO TABLE BIRTHDAYS_TABLE.

DELETE ZB014_BIRTHDAYS FROM TABLE BIRTHDAYS_TABLE.

WRITE SY-DBCNT.
WRITE: 'records deleted'.
