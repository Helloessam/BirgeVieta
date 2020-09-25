a= [-1 -5 4 2];
b= zeros(1,4);
c=zeros(1,4);
b(4)=a(4);
c(4)=a(4);
x=0.8;
tol =0.05;
fprintf('n\t a\t\t b\t\t c\n');
for i =0:20
    j=4;
    fprintf('%d\t %f\t %f\t %f\n',j,a(4),b(4),c(4)); 
    for j=3 :-1:1
         b(j)=(b(j+1)*x)+a(j);
         c(j)=(c(j+1)*x)+b(j);
         fprintf('%d\t %f\t %f\t %f\n',j,a(j),b(j),c(j)); 
    end 
    if abs(b(1))<=tol
        fprintf('x%d = %f is the approximate root\n', i,x);
        break;
    else
        x_next=x-(b(1)/c(2));
        x=x_next;
        fprintf('\nx %d = %f\n\n',i+1,x);
    end
    
end 
