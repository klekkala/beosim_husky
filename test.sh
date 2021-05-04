# Please first refer to http://wiki.ros.org/docker/Tutorials/GUI and setup your environment.
# After you reach the docker terminal you can build beosim using following commands


mkdir -p ~/robogym_ws/src && cd ~/robogym_ws/src && git clone https://github.com/jr-robotics/robo-gym-robot-servers.git
apt update && apt install -y \
  build-essential psmisc vim-gtk \
  python-catkin-tools python-rosdep python-pip wget unzip
wget https://www.riverbankcomputing.com/static/Downloads/sip/4.19.24/sip-4.19.24.zip && \
    unzip sip-4.19.24.zip && \
    cd sip-4.19.24 && \
    python configure.py && \
    make && \
    make install
    # git clone https://github.com/jr-robotics/Universal_Robots_ROS_Driver.git && \
pip install --upgrade pip && \
  pip install PyKDL grpcio protobuf
pip install robo-gym-server-modules
~/robogym_ws/src/robo-gym-robot-servers/melodic-install.sh
echo "source ~/robogym_ws/devel/setup.bash" >> ~/.bashrc
echo "source ~/robogym_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
# roslaunch ur_robot_server ur5_sim_robot_server.launch world_name:=empty.world gui:=True
cd ~/robogym_ws/src/robo-gym-robot-servers/ur_robot_server/launch
roslaunch ur_robot_server ur5_sim_robot_server.launch gui:=True