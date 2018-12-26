function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
[m, n] = size(X); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hypoth = sigmoid(X * theta);
J = (sum(dot(-y, log(hypoth)) - dot(1 - y, log(1 - hypoth))) + ...
    lambda * 0.5 * dot(theta(2:n, 1), theta(2:n, 1))) / m;
grad = (X' * (hypoth - y) + lambda * [0; theta(2:n)]) / m; %'

% =============================================================

end
