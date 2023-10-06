let a,b,m;
a = 128;
b = 116;
print a;
print b;
m = a mod b;
while m
a = b;
b = m;
m = a mod b;
endwhile
print b;
