figure;
xlim([0 25]);  %establishes axis range for x axis
P = [];
a0=300;
m0=0;
w0=6000;
P(1,:) = [m0,w0,a0]
plot (0,a0,'.','markersize',24); 
hold on
Months=1
while Months < 25
    P
    a=input('How many workers this month?')
    b = 20 * a- a0;
    a0=b;
    plot(Months,a0,'.','markersize',24);
    P(Months+1,:)= [Months,a,b];
    plot(P(:,1),P(:,3),'color','k');
    Months=Months+1;
end
