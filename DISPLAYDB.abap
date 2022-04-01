*&---------------------------------------------------------------------*
*& Report ZB014_DISPLAYDB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZB014_DISPLAYDB.

DATA: BIRTHDAYS TYPE ZB014_BIRTHDAYS,
      BIRTHDAYS_TABLE TYPE TABLE OF ZB014_BIRTHDAYS.

SELECT * FROM ZB014_BIRTHDAYS INTO TABLE BIRTHDAYS_TABLE.

LOOP AT BIRTHDAYS_TABLE INTO BIRTHDAYS.
  WRITE: /
  BIRTHDAYS-FRIEND_NUMBER,
  BIRTHDAYS-FRIEND_FIRSTNAME,
  BIRTHDAYS-FRIEND_LASTNAME,
  BIRTHDAYS-DAY_OF_BIRTH,
  BIRTHDAYS-MONTH_OF_BIRTH,
  BIRTHDAYS-YEAR_OF_BIRTH.
  ENDLOOP.
