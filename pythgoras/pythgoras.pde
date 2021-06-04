float a;
float b;
float c; 

//længder
a=300;
b=300;
c=0;

//størrelse på canvas
size(800,600);

//formel for c
c=sqrt(pow(a,2)+pow(b,2));

//udregning af c
println(c);

//linjerne
strokeWeight(4);
line(20,20,20,20+a);
line(20,20+a,20+b,20+a);
line(20,20,20+b,20+a);
