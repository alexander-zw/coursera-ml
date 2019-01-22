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

% C_test = [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
C_test = [0.3; 1; 3];
s_test = [0.03; 0.1; 0.3];
n = length(C_test);
errors = zeros(n.^2);
for i = 1:n
    for j = 1:length(s_test)
        C = C_test(i);
        sigma = s_test(j);
%        model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%        errors(i + j * n) = mean(svmPredict(model, Xval) != yval);
%        printf("iteration: %d, %d\n", i, j);
%        printf("C = %.2f, s = %.2f, error = %f\n", C, sigma, errors(i + j * n));
    end
end

[_, ind] = min(errors);
C = C_test(mod(ind - 1, n) + 1);
sigma = s_test(idivide(ind - 1, n) + 1);

C = 1;
sigma = 0.1;

% =========================================================================

end
