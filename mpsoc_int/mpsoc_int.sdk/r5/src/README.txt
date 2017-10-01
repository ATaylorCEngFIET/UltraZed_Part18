This version of the Dhrystone benchmark differs from the original
version in the following aspects:

1. It uses 2 static variables instead of using malloc. This avoids
the dependency on libc's malloc which increases program memory size.

2. It does not print out the actual time taken, or the DMIPS.
