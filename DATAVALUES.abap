*&---------------------------------------------------------------------*
*& Report ZB014_DATAVALUES
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZB014_DATAVALUES.
WRITE : 'FIELD NAME', 20'VALUE', 35'DESCRIPTION'.
WRITE /.
WRITE : 'SY-INDEX' UNDER 'FIELD NAME', SY-INDEX UNDER 'VALUE', 'ABAP System Field: Loop Index' UNDER 'DESCRIPTION'.
WRITE /.
WRITE : 'SY-PAGNO' UNDER 'FIELD NAME', SY-PAGNO UNDER 'VALUE', 'ABAP System Field: Current List Page' UNDER 'DESCRIPTION'.
WRITE /.
WRITE : 'SY-TABIX' UNDER 'FIELD NAME', SY-TABIX UNDER 'VALUE', 'ABAP System Field: Row Index of Internal Tables' UNDER 'DESCRIPTION'.
WRITE /.
WRITE : 'SY-TFILL' UNDER 'FIELD NAME', SY-TFILL UNDER 'VALUE', 'ABAP System Field: Number of Rows in Internal Tables' UNDER 'DESCRIPTION'.
WRITE /.
WRITE : 'SY-TLOPC' UNDER 'FIELD NAME', SY-TLOPC UNDER 'VALUE', 'ABAP System Field: Internal Use' UNDER 'DESCRIPTION'.
WRITE /.
WRITE : 'SY-TSTIS' UNDER 'FIELD NAME', SY-TSTIS UNDER 'VALUE', 'ABAP System Field: Internal Use' UNDER 'DESCRIPTION'.
