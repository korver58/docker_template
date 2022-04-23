# docker_template
dockerfile template


```Dockerfile
RUN apt-get update && apt-get install -y \
    curl wget git lsb-release \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# install ros melodic
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \
    && curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -

RUN apt-get update && apt-get install -y \
    ros-melodic-desktop-full \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/melodic/setup.bash" >> .bashrc

```