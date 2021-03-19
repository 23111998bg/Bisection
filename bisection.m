
if subs(f,a)*subs(f,b)>0
    fprintf('Khong phai la khoang phan ly nghiem\n');
elseif f(a)==0
    fprintf('Nghiem la x=a=%f', a);
    return;
elseif f(b)==0
    fprintf('Nghiem la x=b=%f', b);
    return;
else 
    dau=sign(feval(f,a)); 
    x=(a+b)/2;
    count=0;
    while abs(b-a)/2 > epsilon
        if dau*feval(f,x)>0 
            a = x; 
        else
            b = x;
        end;
        x=(a+b)/2;
        count=count+1;
    end
        
end
x1 = double(x);
fprintf('Nghiem cua phuong trinh la: %f\n',x1)