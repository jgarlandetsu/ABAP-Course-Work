*&---------------------------------------------------------------------*
*& Report ZB014_MATH
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZB014_MATH.
PARAMETERS: INTA TYPE I, INTB TYPE I, OPERATOR TYPE C LENGTH 1.
DATA : RESULT TYPE P LENGTH 16 DECIMALS 3.


CASE OPERATOR.
  WHEN '/' .
    RESULT = INTA / INTB.
    WRITE: INTA,' / ',INTB.
    WRITE : 'RESULT = ', RESULT.
  WHEN '*' .
    RESULT = INTA * INTB.
    WRITE: INTA,' * ',INTB.
    WRITE : 'RESULT = ', RESULT.
  WHEN '-'.
    RESULT = INTA - INTB.
    WRITE: INTA,' - ',INTB.
    WRITE : 'RESULT = ', RESULT.
  WHEN '+'.
    RESULT = INTA + INTB.
    WRITE: INTA,' + ',INTB.
    WRITE : 'RESULT = ', RESULT.
  WHEN OTHERS.
    WRITE 'Please enter an operator.'.
ENDCASE.
