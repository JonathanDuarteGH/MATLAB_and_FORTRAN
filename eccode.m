clc
close all

figure(1)
x1=linspace(-1,1,7);
y1=data(:,1);
x2=linspace(-1,1);
y2=-100*sin(10.*x2);
plot(x1,y1,'*',x2,y2);
xlabel('x');
ylabel('y')
legend({'Theoretical Yield','Actual Yield'},'Location','northeast','FontSize',12);
%axis([-1 1 -1 1])
set(gca,'FontSize',14);

% figure(2)
% x1=[2,0.2000,0.0200,0.0020]
% y1=[10.95204,5.453513,0.06652832,0.00049781799]
% loglog(x1,y1,'*');
% xlabel('\Deltax');
% ylabel('Error')
% legend({'Actual Yield'},'Location','northwest','FontSize',12);
% %axis([-1 1 -1 1])
% set(gca,'FontSize',14);

% z=0:0.01:0.8;
% xfit=3.311*z+0.014;
% t10=data(:,2);
% t20=data(:,3);
% t30=data(:,4);
% plot(t10.^2*sind(10),x,'o',t20.^2*sind(20),x,'d',t30.^2*sind(30),x,'s',...
%     z,xfit);
% xlabel('Time Squared, t^{2}*sin(\theta) (s)^{2}');
% ylabel('Distance, (m)');
% legend('\theta = 10^0','\theta = 20^0','\theta = 30^0');
% % title('Curve Fitting Galileo''s data');
% set(gca,'FontSize',14);
% axis([0 0.62 0 2.1]);
