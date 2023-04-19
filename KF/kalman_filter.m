% Kalman filter example demo in Matlab, for more information, please see: 
% http://www.cs.unc.edu/~welch/kalman/index.html
% This M code is modified from Python implementation of Kalman filter algorithm.
  
clear all;
close all;
clc;

% intial parameters
n_iter = 50;
sz = [n_iter, 1]; % size of array
x = -0.37727; % truth value (typo in example at top of p. 13 calls this z)
z = x + sqrt(0.01)*randn(sz); % observations (normal about x, sigma=0.1)

Q = 1e-5; % process variance

% allocate space for arrays
xhat=zeros(sz);      % a posteri estimate of x
P=zeros(sz);         % a posteri error estimate
xhatminus=zeros(sz); % a priori estimate of x
Pminus=zeros(sz);    % a priori error estimate
K=zeros(sz);         % gain or blending factor

R = 0.01; % estimate of measurement variance, change to see effect

% intial guesses
xhat(1) = 0.0;
P(1) = 1.0;

for k = 2:n_iter
    % time update
    xhatminus(k) = xhat(k-1);
    Pminus(k) = P(k-1)+Q;

    % measurement update
    K(k) = Pminus(k)/( Pminus(k)+R );
    xhat(k) = xhatminus(k)+K(k)*(z(k)-xhatminus(k));
    P(k) = (1-K(k))*Pminus(k);
end
figure();
plot(z,'k+');
hold on;
plot(xhat,'b-')
hold on;
plot(x*ones(sz),'g-');
legend('noisy measurements', 'a posteri estimate', 'truth value');
xlabel('Iteration');
ylabel('Voltage');
hold off;

figure();
valid_iter = [2:n_iter]; % Pminus not valid at step 1
plot(valid_iter,Pminus([valid_iter]));
legend('a priori error estimate');
xlabel('Iteration');
ylabel('$(Voltage)^2$');
ylim([0,.01]);
