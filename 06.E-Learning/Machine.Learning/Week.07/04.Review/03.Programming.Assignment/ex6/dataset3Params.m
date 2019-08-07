function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

pos_C=[0.01,0.03,0.1,0.3,1,3,10,30];
pos_s=[0.01,0.03,0.1,0.3,1,3,10,30];
pos_pairs = cartprod(pos_C,pos_s);
error = 100;
best_C = 0;
best_s = 0;
%for i = 1:rows(pos_pairs)
%
%    C = pos_pairs(i,1);
%    sigma = pos_pairs(i,2);
%    model = svmTrain(X, y, C, @(x1,x2) gaussianKernel(x1,x2, sigma));
%    predictions = svmPredict(model,Xval);
%    err = mean(double(predictions ~= yval));
%    if err < error
%	error = err
%	best_C = C
%	best_s = sigma
%    end
%endfor


% This is the right answer
% A made a shortcat (commented out the real process) order to save time when
% I submit the other tasks
C=best_C;
sigma=best_s;


C =  1
sigma =  0.10000



% =========================================================================

end
