/*
to do something on every Nth pass of a loop:
%10 is hidden division, relatively costly instruction
*/
for (i=0; i<100; i++)
  if ((i%10) == 0) {
    printf("%d percent done.", i);
  }
}
/*
$ gcc nth_pass_of_loop.c -o nth_pass_of_loop
$ ./nth_pass_of_loop
*/