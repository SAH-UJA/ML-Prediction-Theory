x=1:0.1:10;
p=@(x) x.^3;
y=exp(x);
uu=11:0.1:18;
z=11:0.1:18;
%for(i=1:70)

%xnn=z(i);
xnn=11;

yn=exp(xnn);
tol=0.01;
u0=1;
while(true)
t1=0;
t2=0;
t11=0;
t22=0;
    for(j=1:90)
t1=t1+(y(j)/((xnn-x(j))^u0));
t2=t2+((y(j)*y(j))/((xnn-x(j))^u0));
t11=t11+((y(j)/((xnn-x(j))^(u0+1)))*(-u0));
t22=t22+(((y(j)*y(j))/((xnn-x(j))^(u0+1)))*(-u0));
    end
   ynn=(t1/2)+(sqrt((pi*t2*t2)-(2*t1*t1))/(2*sqrt(pi)*t1));
   f=(((t1*t1)/2)+sqrt((pi*t2*t2)-(2*t1*t1))/(2*sqrt(pi))-((t1*t1)*((xnn-10)^u0)));
f1=((t11*t1)+(((pi*t2*t22)-(2*t1*t11))/(sqrt(pi)*sqrt((pi*t2*t2)-(2*t1*t1))))-(2*t1*t11*((xnn-10)^u0))-(u0*t1*t1*((xnn-10)^u0)));
   u1=u0-(f/f1);
if(abs(u1-u0)<tol)
    break;
end
u0=u1
end
u0
%end