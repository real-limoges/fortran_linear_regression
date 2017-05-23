C***************************************************************************
C
C
C
C
C
C
C
C***************************************************************************

C *********************
C   MAIN PROGRAM
C *********************

      PROGRAM LINEARREG

C ********************
C  VARIABLE DEFINITOINS
C
C 
C  S       INPUT STRING
C  N       NUMBER OF DATA ROWS
C  
C  X       INDEPENDENT REGRESSOR
C  Y       TARGET VARIABLE 
C
C  SUMX    SUM OF X
C  SUMY    SUM OF Y
C  SUMX2   SUM OF X * X
C  SUMY2   SUM OF Y * Y
C  SUMXY   SUM OF X * Y
C      
C  B0      INTERCEPT
C  B1      SLOPE ON X
C  R       CORRLEATION COEFFICIENT
C  
C ********************

      CHARACTER            STR*80

      DOUBLE PRECISION     X
      DOUBLE PRECISION     Y
      
      DOUBLE PRECISION     SUMX
      DOUBLE PRECISION     SUMY
      DOUBLE PRECISION     SUMX2
      DOUBLE PRECISION     SUMY2
      DOUBLE PRECISION     SUMXY
      DOUBLE PRECISION     R
      
      DOUBLE PRECISION     B0
      DOUBLE PRECISION     B1

      STOP
      END
