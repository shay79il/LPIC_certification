#!/bin/bash

#  All lines STARTS with Apple
cat american-english | grep -E "^Apple"

#  All lines ENDS with Apple
cat american-english | grep -E "Apple$"

#  All lines ENDS with Apple OR Ball
cat american-english | grep -E "Apple$|Ball$"

#  All lines which has A and after 0 or more p's and after "le"
cat american-english | grep -E "Ap*le"

#  All lines which has A and after 1 or more p's and after "le"
cat american-english | grep -E "Ap+le"

#  All lines which has A and after 1 or more [p-z] chars and after "le"
cat american-english | grep -E "A[p-z]+le"




