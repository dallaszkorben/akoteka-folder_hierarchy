clear ; close all; clc
load ('ex7data1.mat');

%  Normalize and Plot the dataset 
[X_norm, mu, sigma] = featureNormalize(X);
plot(X_norm(:, 1), X_norm(:, 2), 'bo', "lineWidth", 2);
hold on;
axis([-4 3 -4 3]); axis square
fprintf("Normalized data set\nPress a buttun\n");
pause;

%  Draw the eigenvectors. These lines show the
%  directions of maximum variations in the dataset.
[U, S] = pca(X_norm);
drawLine([0,0], [0,0] + 2* S(1,1) * U(:,1)', '-kr', 'LineWidth', 3);
drawLine([0,0], [0,0] + 2* S(2,2) * U(:,2)', '-kr', 'LineWidth', 3);
fprintf(' U(:,1) = %f %f \n', U(1,1), U(2,1));
fprintf("\nEigen vectors\nPress a buttun\n");
pause;

K = 1;
Z = projectData(X_norm, U, K);
X_rec  = recoverData(Z, U, K);

%  Draw lines connecting the projected points to the original points
plot(X_rec(:, 1), X_rec(:, 2), 'ro');
for i = 1:size(X_norm, 1)
    drawLine(X_norm(i,:), X_rec(i,:), '--k', 'LineWidth', 1);
end
hold off
fprintf("\nDraw lines connecting the projected points to the original points\n");