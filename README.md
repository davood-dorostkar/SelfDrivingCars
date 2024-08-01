# Self Driving Cars
implementing estimation, control, and path planning algorithms for self-driving cars using Carla simulator and Python.

![](/carla.jpeg)

# Using Carla Simulator

## Download Carla
1. download the [carla archive](https://d3c33hcgiwev3.cloudfront.net/3dXfty7_EemFOA6Hm29iNA_de05a1c02eff11e9821ed19f5bd73b7b_CarlaUE4Ubuntu.tar.gz?Expires=1697328000&Signature=F4Uq6mdzueJhdqP40e-arQrGwceQum-~YDaofZaOXNDqL0S6MbDQT8nPxbjaBEoW9nrv~oe8oxXoSBcvO-avrOdlegdMhIv3UKTPZYsxq7LS8ht3xZwSpu1mGhNuccf1GHy-9Tj27m5JIO7a4GWTUL0UdAWSacBHea5PwG8-PvU_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)
2. extract 
```
tar -xzf CarlaUE4Ubuntu.tar.gz -C ​$HOME​/opt/carla/
```

### Test Carla
```
cd /opt/carla/v0.8.4
./CarlaUE4.sh -windowed -carla-no-networking -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```

## Build Client Container
```
docker-compose up -d --build
```

## Client-Server run
**in the host machine:**
```
./CarlaUE4.sh -windowed -carla-server -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```
**in the container:**
```
python manual_control.py 
```
## Run the project code

### Course 1
**run server:**
```
./CarlaUE4.sh /Game/Maps/RaceTrack -windowed -carla-server -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```
**run client:**
```
python module_7.py
```
**run grader:**
```
python3 grade_c1m7.py racetrack_waypoints.txt controller_output/trajectory.txt
```

### Course 4
**run server:**
```
./CarlaUE4.sh /Game/Maps/Course4 -windowed -carla-server -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```
**run client:**
```
python module_7.py
```