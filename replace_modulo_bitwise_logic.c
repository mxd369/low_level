/*
common: addition and subtraction take a single processor cycle.
if they don't, then addition of unsigned variables is faster than addition or subtraction
with signed variables.
*/
for (i=0; i<100; i++)
  if (i & 7) { // this will print out every 8th pass
    printf("%d percent done.", i);
  }
}