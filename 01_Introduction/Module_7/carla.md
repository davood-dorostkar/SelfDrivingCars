# Using Carla Simulator

### Download Carla
1. download the [carla archive](https://d3c33hcgiwev3.cloudfront.net/3dXfty7_EemFOA6Hm29iNA_de05a1c02eff11e9821ed19f5bd73b7b_CarlaUE4Ubuntu.tar.gz?Expires=1697328000&Signature=F4Uq6mdzueJhdqP40e-arQrGwceQum-~YDaofZaOXNDqL0S6MbDQT8nPxbjaBEoW9nrv~oe8oxXoSBcvO-avrOdlegdMhIv3UKTPZYsxq7LS8ht3xZwSpu1mGhNuccf1GHy-9Tj27m5JIO7a4GWTUL0UdAWSacBHea5PwG8-PvU_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A)
2. extract it (it recommends to extract to `$HOME/opt/` but is it important?)
```
tar -xzf CarlaUE4Ubuntu.tar.gz --directory ​$HOME​/opt
```

### Install pyenv
carla files work with python versions `3.5` and `3.6`. so you need to use them. do not try other ways (search for binaries, install from source, using docker); I tried and failed at some point. the best way is `pyenv` python version manager. 

Use [pyenv guide](https://github.com/davood-dorostkar/Python/wiki/14_pyenv) to install and switch to `python 3.6.15`.

### Install dependencies
1. check that your python version is 3.6.15

```
python -V
python3 -V
```
2. upgrade pip

```
pip install --upgrade pip
```
3. install SDL and other pygame dependencies

> Simple DirectMedia Layer (SDL) is a cross-platform development library designed to provide low level access to audio, keyboard, mouse, joystick, and graphics hardware via OpenGL and Direct3D.

```
sudo apt-get install python3-pygame
```
4. install pygame


> Pygame is a set of Python modules designed for writing video games. Pygame adds functionality on top of the excellent SDL library. This allows you to create fully featured games and multimedia programs in the python language.
```
pip install pygame
```
5. edit `requirements`

change the `requirements.txt` file so:
```
matplotlib==2.2.5
```
6. install other python packages

in the Carla root directory:
```
pip install -r requirements.txt
```
7. also install these packages if you don't have them:

```
sudo apt-get install ffmpeg libsm6 libxext6  -y
```
### Simple run
```
./CarlaUE4.sh -windowed -carla-no-networking -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```
### Client-Server run
in one shell run this:
```
./CarlaUE4.sh -windowed -carla-server -benchmark -fps=20 ​​-ResX=640 -ResY=480​
```
in the second shell run this:
```
python manual_control.py 
```