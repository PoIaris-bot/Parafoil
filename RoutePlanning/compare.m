clear; clc; close all;
fig1 = openfig('LPM.fig','reuse');
axes1 = get(gca,'Children');  
x1 = get(axes1, 'XData'); 
y1 = get(axes1, 'YData');
h1 = get(axes1, 'ZData');
close all;
fig2 = openfig('PSO.fig','reuse');
axes2 = get(gca,'Children');  
XData2 = get(axes2, 'XData'); 
YData2 = get(axes2, 'YData');
ZData2 = get(axes2, 'ZData');
x2 = [];
y2 = [];
h2 = [];
for i = 1:length(XData2)
    x2 = [x2, cell2mat(XData2(i))];
    y2 = [y2, cell2mat(YData2(i))];
    h2 = [h2, cell2mat(ZData2(i))];
end
[h2, index] = sort(h2);
x2 = x2(index);
y2 = y2(index);
close all;
figure;
plot3(x1, y1, h1, x2, y2, h2);
legend('LPM', 'PSO');
grid on;
xlabel('x', 'FontSize', 15); ylabel('y', 'FontSize', 15); zlabel('h', 'FontSize', 15);
axis equal;