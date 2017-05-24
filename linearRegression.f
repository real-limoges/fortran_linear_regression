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
C  VARIABLE DEFINITIONS
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


C***************************************************************************
C VARIABLE INITIALIZATION
C***************************************************************************


      N       = 0.0D0
      SUMX    = 0.0D0
      SUMY    = 0.0D0
      SUMX2   = 0.0D0
      SUMY2   = 0.0D0
      SUMXY   = 0.0D0 


C***************************************************************************
C READ CSV
C***************************************************************************


      OPEN(UNIT=10, FILE="mpg.csv")
      
      DO N = 1, 398
        READ(10, *) Y, X
        SUMX  = SUMX + X
        SUMY  = SUMY + Y
        SUMX2 = SUMX2 + (X * X)
        SUMY2 = SUMY2 + (Y * Y)
        SUMXY = SUMXY + (X * Y)
      END DO
      CLOSE(10)

      N = N -1


C***************************************************************************
C CALCULATIONS
C***************************************************************************

      
      B0 = (SUMY * SUMX2 - SUMX * SUMXY) / (N * SUMX2 - SUMX**2)
      B1 = (N * SUMXY - SUMX * SUMY) / (N * SUMX2 - SUMX**2)

      WRITE(*,*) B0, B1
      STOP
      END
