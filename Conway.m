clear;
clf;
clc;
N = 100;
ne =  mod((1:N) - 2,N) + 1;
po = mod((1:N),N) +1;
a = ceil(rand(N,N)*2.0) -1;

for q = 1:100
    b = a(ne,ne) + a(:,ne) + a(po,ne) + a(ne,:) + a(:,:) + a(po,:) + a(ne,po) + a(:,po) + a(po,po);
    a = ( b == 3 ) + ( b == 4 ).*a;
    imagesc(a); axis equal;
    axis off;
    drawnow;
    pause(0.1)
    
    
end    