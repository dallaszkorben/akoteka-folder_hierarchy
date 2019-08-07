load('ex3data1.mat');
m = size(X, 1);

i=3;
vector=X(i,:);


width=round(sqrt(size(vector,2)));

%colormap(gray);
disp_array=reshape(vector, width, width)
imagesc(disp_array,[-0.1, 0.1]);
axis image off
drawnow;



