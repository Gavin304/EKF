clc;
clear;
% Define the robot's Parameters
Delta_t = 0.1; % Time step (seconds)
Length = 0.5; %Length of Robot
Width = 0.4; %Width of Robot
d = sqrt((Width/2)^2 + (Length/2)^2); % Distance from centroid to Wheel
Wheel_radius = 0.1; %Radius of Wheel
initializationMatrix = [2;0;0;0;0;0]; %The initialization in the extended kalman filter

% Define standard deviations
sigma_ax = 0.05;  % Acceleration noise in x direction
sigma_ay = 0.05;  % Acceleration noise in y direction


% Define standard deviations for each state variable
sigma_x = 0.1;         % Uncertainty in x position
sigma_y = 0.1;         % Uncertainty in y position
sigma_theta = 0.05;    % Uncertainty in orientation
sigma_vx = 0.02;       % Uncertainty in velocity x  
sigma_vy = 0.02;       % Uncertainty in velocit y ystateTransitionJacobian
sigma_omega = 0.01;    % Uncertainty in angular velocity

% Create the process noise covariance matrix Q as a diagonal matrix
Q = diag([sigma_x^2, sigma_y^2, sigma_theta^2, sigma_vx^2, sigma_vy^2, sigma_omega^2]);

% Define initial uncertainties for each state variable
sigma_x_init = 1.0;       % Initial uncertainty in x position
sigma_y_init = 1.0;       % Initial uncertainty in y position
sigma_theta_init = 0.5;   % Initial uncertainty in orientation
sigma_vx_init = 0.2;      % Initial uncertainty in velocity x
sigma_vy_init = 0.2;      % Initial uncertainty in velocity y
sigma_omega_init = 0.1;   % Initial uncertainty in angular velocity

% Create the initial covariance matrix P0 as a diagonal matrix
P0 = diag([sigma_x_init^2, sigma_y_init^2, sigma_theta_init^2, ...
           sigma_vx_init^2, sigma_vy_init^2, sigma_omega_init^2]);
R_IMU = diag([0.1^2, 0.1^2, 0.05^2]);

% Define standard deviations for encoder measurements
sigma_encoder_x = 0.01;    % Standard deviation for encoder x measurement
sigma_encoder_y = 0.01;    % Standard deviation for encoder y measurement
sigma_encoder_theta = 0.005; % Standard deviation for encoder orientation

% Create encoder measurement noise covariance matrix R_encoder
R_encoder = diag([sigma_encoder_x^2, sigma_encoder_y^2, sigma_encoder_theta^2]);




