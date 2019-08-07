function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

n=length(theta);
z=X*theta;
h=sigmoid(z);
tmp=y.*log(h)+(1-y).*log(1-h);
sumtheta2=(lambda/(2*m)) * [0, ones(1, n-1)] * (theta .^2);
J = ( (ones(1,m) * tmp) ./ -m ) + sumtheta2;

sumtheta=(lambda/m) * ( [0, ones(1, n-1)]' .* theta );
grad = (X' * (h-y) ./m ) + sumtheta;



% =============================================================

end
