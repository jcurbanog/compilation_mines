let x;
print -1*3; // moins unitaire
x = input();

// comparaisons entières
print !x<5;
print x>=5;
print x<5;
print x>5;
print x==5;
let y = input();
print x != y;
print x == y;

if x
print x;
else
print 7233;
endif

while x
if x>0
x = x - 1;
else
x = x + 1;
endif
print x;
endwhile

print 55555;
let a,b,c;
a = true;
b = false;
print true && true;
print true && false;
print false && true;
print false && false;
print true || true;
print true || false;
print false || true;
print false || false;

// The folowing line gives an error since a and b are no longer booleans but integers.
// Then, the && and || operators are not available.
// print a && b;

exit(3);
