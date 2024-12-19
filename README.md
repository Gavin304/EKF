# Implementation of Extended Kalman Filter on MATLAB Simulink with ROS 2 for Localization Using IMU & Encoder Data

This project demonstrates the implementation of an Extended Kalman Filter (EKF) for localization using IMU and encoder data. It is designed for an independent drive and independent steer robot.

## Project Overview
This code processes IMU and encoder data gathered from NVIDIA Isaac Sim and publishes it to ROS 2. **Note:** The `.USD` file and ROS 2 bridge code are not provided due to copyright restrictions.

## Prerequisites
1. **Software Requirements**
   - ROS 2 Humble
   - MATLAB with the Simulink and Systems Control Toolbox

2. **ROS 2 Topics**
   Ensure the following topics are published:
   - `/IMU`
   - `/Joint_States`
   - `/Joint_Command`

## How to Run
1. Initialize variables:
   ```
   variableDeclare.m
   ```

2. Open and run the Simulink model:
   ```
   Sensor_fusion_4.slx
   ```

## Notes
- Ensure all dependencies and prerequisites are installed and configured.
- The project utilizes ROS 2 for real-time communication.

## Example Output
![Visualization](https://github.com/user-attachments/assets/3845df1e-7416-4730-bfd1-104b464501bc)
