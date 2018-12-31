function [a3, a2, z2] = feedforward(Theta1, Theta2, X)
% FEEDFORWARD Return outputs using feedforward given a neural network
% Several inputs are given in X, one instance per row
% a3 contains outputs, one instance per column

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);


z2 = Theta1 * [ones(1, m); X']; %'
a2 = sigmoid(z2);
a3 = sigmoid(Theta2 * [ones(1, m); a2]);
