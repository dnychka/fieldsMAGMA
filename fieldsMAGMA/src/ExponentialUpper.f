c fieldsMAGMA
c Copyright 2004-2015, Institute for Mathematics Applied Geosciences
c University Corporation for Atmospheric Research
c Licensed under the GPL -- www.gpl.org/licenses/gpl.html

c
c evaluates exponential covariance function over upper triangular part of input matrix
c

      subroutine ExponentialUpper(distMat, n, alpha, phi)
      integer n
      double precision distMat(n, n), alpha, phi
      
      integer i, j
      do 10 i = 1, n
          do 20 j = i, n
              distMat(i, j) = phi*exp(-1*distMat(i, j)*alpha)
   20     continue
   10 continue

      return
      end
