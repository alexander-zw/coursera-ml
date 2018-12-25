function plotDescent(X, y, alpha, num_iters, theta0_vals, theta1_vals, J_vals)
% Performs gradient descent and draws a contour plot

theta = [5; -1];

[theta, J_hist, t_hist] = gradientDescent(X, y, theta, alpha, num_iters);

contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))

xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(t_hist(:, 1), t_hist(:, 2), 'bx')
