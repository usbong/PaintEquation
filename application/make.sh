#!/bin/bash

#  Copyright 2021~2022 SYSON, MICHAEL B.
#  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You ' may obtain a copy of the License at
#  http://www.apache.org/licenses/LICENSE-2.0
#  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, ' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing ' permissions and limitations under the License.
#
# Usbong Automotive: Image Processing Automation
# Usbong Computer Aided Design (CAD): 3D Tool 
# Usbong Paint Equation
#
# C++ Computer Language and OpenGL
#
# Compile and Link Multiple Source Files
#
# @company: USBONG
# @author: SYSON, MICHAEL B.
# @date created: 20200930
# @last updated: 20220428; from 20210510
#
# Reference:
# 1) https://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html;
# last accessed: 20200930

#removed by Mike, 20220428
#cp -r ./textures ./output/
#cp -r ./input ./output/

#rm *.o

g++ -c mainLinux.cpp
g++ -c OpenGLCanvas.cpp
#removed by Mike, 20220428
#g++ -c MyDynamicObject.cpp
#g++ -c RobotShip.cpp
#g++ -c Font.cpp
#g++ -c Beam.cpp
#g++ -c Asteroid.cpp
#g++ -c Level.cpp
#g++ -c PolygonUtils.cpp
#g++ -c CTargaImage.cpp
#g++ -c Pilot.cpp
g++ -c UsbongUtils.cpp

#g++ -o mainOutput main.o OpenGLCanvas.o -lGL -lGLU -lglut
# edited by Mike, 20210126
# g++ -o ./output/mainOutputLinux mainLinux.o OpenGLCanvas.o MyDynamicObject.o RobotShip.o Font.o Beam.o Asteroid.o Level.o PolygonUtils.o CTargaImage.o Pilot.o UsbongUtils.o -lGL -lGLU -lglut

#edited by Mike, 20220428
#g++ -o ./output/UsbongPaintEquationLinux mainLinux.o OpenGLCanvas.o MyDynamicObject.o RobotShip.o Font.o Beam.o Asteroid.o Level.o PolygonUtils.o CTargaImage.o Pilot.o UsbongUtils.o -lGL -lGLU -lglut
g++ -o ./output/UsbongPaintEquationLinux mainLinux.o OpenGLCanvas.o UsbongUtils.o -lGL -lGLU -lglut


#added by Mike, 20210220; removed by Mike, 20220428
#cp -r ./*.o ./objectFilesLinux/
