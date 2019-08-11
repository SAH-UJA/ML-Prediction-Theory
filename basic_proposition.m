x=1:0.1:10;
y=log(x);
err=1:0.01:15;
z=1:0.01:15;
for(i=1:1400)
t1=0;
t2=0;
xnn=err(i);
yn=log(xnn);
    for(j=1:90)
t1=t1+(y(j)/(xnn-x(j)));
t2=t2+((y(j)*y(j))/(xnn-x(j)));
    end
   ynn=(t1/2)+(sqrt((pi*t2*t2)-(2*t1*t1))/(2*sqrt(pi)*t1));
err(i)=(yn-ynn)/yn;
end
semilogx(z,err)
grid on;

axis([6 15 0 500]);
xlabel('x');
ylabel('Relative error');
title('Error Analysis for Exponential Function');

