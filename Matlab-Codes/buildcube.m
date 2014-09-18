function [x,y,z]=buildcube(i,j,k);
 
x = [i i+6 i+6 i i i; i+6 i+6 i i i+6 i+6; i+6 i+6 i i i+6 i+6; i i+6 i+6 i i i];
y = [j j j+7 j+7 j j; j j+7 j+7 j j j; j j+7 j+7 j j+7 j+7; j j j+7 j+7 j+7 j+7];
z = [k k k k k+4 k; k k k k k+4 k; k+4 k+4 k+4 k+4 k+4 k;k+4 k+4 k+4 k+4 k+4 k];
 
fill3(x, y, z,[7,5,4,3,2,1]);
axis([0 20 0 20 0 20]);

return
xlabel('x'); ylabel('y'); zlabel('z');
grid on
