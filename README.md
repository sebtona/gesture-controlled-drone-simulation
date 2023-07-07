# Gesture Controlled Drone Simulation
This was my final project in my Biorobotics/Cybernetics class. I worked on a team of three to create a neural network capable of accurately classifying drone control gestures based on a combination of features from EMG and IMU signals, and use the neural network to send commands to a drone simulation.

## Challenges
- Capturing a large and reliable dataset of hand and arm gestures
- Deciding on and implementing signal preprocessing and feature selection methods
- Structuring and training a novel machine learning model that applies data fusion to features from both EMG and IMU signals, and has a high validation accuracy
- Creating a real time pipeline that records EMG and IMU signals from a user's gestures, classifies their gestures, and moves the drone in the simulator appropriately

## Implementation
### Hardware
- Myo Armband used to acquire real time electromyography and inertial signals from all team members
- Has eight EMG channels and nine inertial channels (gyro, orientation and acceleration in XYZ directions)

<img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/myo_gesture.png" alt="Myo Armband" width="400"/>

### Software
#### Signal Capture
- Recorded gesture samples using Lab Streaming Layer's <a href="https://github.com/labstreaminglayer/App-LabRecorder" target="_blank">LabRecorder</a>
- Used <a href="https://github.com/uts-magic-lab/ros_myo" target="_blank">ros_myo</a> to stream signal data in the final pipeline
#### Gesture Classification
- Preprocessed EMG signals (zero mean, band pass filter, rectify, and 60 Hz notch filter) and IMU signals (rolling average)

<img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/preprocessing.png" alt="Preprocessing" width="400"/>

- Extracted features from both EMG and IMU signals (root mean square, waveform length, mean absolute value, variance, max power, range of values, max value)

<img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/feats_code.png" alt="Feature Extraction" width="400"/>

- Structured neural network learned EMG features and IMU features in separate branches, then used data fusion method to classify the gesture based on learned features from both signal types

<img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/fusion_nn.png" alt="Neural Network General Structure and Confusion Matrix" width="400"/> <img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/fusion.png" alt="Neural Network Complete Structure" width="400"/>

- Communicates a drone movement command to the simulator using <a href="https://www.ros.org/" target="_blank">ROS</a>

#### Drone Simulator
- Set up an environment in the <a href="https://uzh-rpg.github.io/flightmare/" target="_blank">Flightmare</a> drone simulator that listens for movement commands through <a href="https://www.ros.org/" target="_blank">ROS</a>

<img src="https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/flightmare.png" alt="Flightmare Simulator" width="400"/>

## Deliverables
- Operation Demonstration

https://github.com/sebtona/gesture-controlled-drone-simulation/assets/46403390/1f04c658-46f4-4352-8577-135667120adb
- Project Presentation: https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/project_presentation.pptx
- IEEE Conference Paper: https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/ieee_conference_paper.pdf
- Code: https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/Code
- Recorded Gesture Data: https://github.com/sebtona/gesture-controlled-drone-simulation/blob/main/Data

## Environment Setup
1. Make sure you have a computer running a Linux distribution such as Ubuntu 20.04. <a href="https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview)" target="_blank">Windows Subsystem for Linux (WSL)</a> is recommended as this is the platform the code was developed on.
2. Install the ROS distribution compatible with your Linux distribution (<a href="http://wiki.ros.org/noetic/Installation/Ubuntu" target="_blank">ROS Noetic</a> recommended for those using Ubuntu 20.04)
3. Download the provided `requirements.txt` file and run `pip install -r requirements.txt` to install all necessary Python packages
4. Follow <a href="https://flightmare.readthedocs.io/en/latest/getting_started/quick_start.html#install-with-ros" target="_blank">instructions</a> to install the Flightmare simulator with ROS
5. Create a `biosim` folder inside of `catkin_ws/src/flightmare/flightros/src`, and place the provided `biosim.cpp` and `mtest.cpp` files in that folder
6. Create another `biosim` folder inside of `catkin_ws/src/flightmare/flightros/launch`, and place the provided `biosim.launch` and `mtest.launch` files in that folder
7. Replace the `CMakeLists.txt` file in `catkin_ws/src/flightmare/flightros` with the version provided
8. Add the ros_myo package to the `catkin_ws/src` folder: `git clone https://github.com/uts-magic-lab/ros_myo`
9. Navigate to the `catkin_ws/src/ros_myo/scripts` folder
10. Replace the `myo-rawNode.py` file with the version provided, add the `myoOutput_Aharon.py` and `myoOutput_John.py` files, add the Data folder, and add the Aharon_Fusion_Model folder
11. Ensure that the datapath line in the `myoOutput.py` files reflects your workspace's name and folder structure
12. Run `catkin build` from the `catkin_ws` folder
13. If you connect your Myo to your computer through Windows and your environment with ros_myo and Flightmare is in WSL, you will need to connect your Myo bluetooth dongle to WSL using these <a href="https://learn.microsoft.com/en-us/windows/wsl/connect-usb" target="_blank">instructions</a>. You may also need to run `sudo chmod a+rw /dev/ttyACM0` first to get access to the USB port

## Running Code
1. Navigate to the `catkin_ws` folder and run `source devel/setup.bash`
2. Run `myo-rawNode.py` first using `rosrun ros_myo myo-rawNode.py` - this establishes a connection to a Myo armband if you have a Bluetooth dongle inserted
3. Run one of the `myoOutput.py` files using `rosrun ros_myo myoOutput_Aharon.py` or `rosrun ros_myo myoOutput_John.py`. Each of them will begin publishing classifications based on the gesture made at the prompt "Start!" in the command line. You should see the result after the accumulation window closes.
4. Run the Flightmare simulator using `roslaunch flightros biosim.launch`. The simualtion will open, and if the ros_myo scripts are already running, the quadcopter will begin moving according to the live gesture classifications made by the ML model.
