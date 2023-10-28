# -*- coding:UTF-8 -*-
import SerialData
import matplotlib.pyplot as plt
import numpy as np
import joblib
import OnlineCompile as SvmOnline
import time
from scipy import io, test
import EffectiveExtract as AET
import tkinter as tk
import pygame
from PIL import Image,ImageTk
import EffectiveExtract as SET
import socket
import threading

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
"""

tcp_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server_ip = "127.0.0.1"
server_port = 8000
tcp_socket.connect((server_ip,server_port))
pygame.mixer.init()

titleFont = ('Helvetica', 20, 'bold')
master = tk.Tk()
master.title("GESTURE INTERACT WITH UAV")
canvas = tk.Canvas(master, width=285, height=290, bg="white") 

canvas.pack()

side = "glove"
Model = "Dis"
if side == "glove":
    Start = 0

def str_show(str):
    canvas.create_text(150, 420, text=str, font=titleFont)
    master.update()

def picture_show(side,pnumber):
    image_dict = {
    'glove': {
        0: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/0.png")),
        1: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/1.png")),
        2: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/2.png")),
        3: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/3.png")),
        4: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/4.png")),
        5: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/5.png")),
        6: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/6.png")),
        7: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/7.png")),
        8: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/8.png")),
        9: ImageTk.PhotoImage(Image.open("./GestureActionV1.2/9.png")),
    }
}
    canvas.create_image(0, 0, anchor=tk.NW, image=image_dict[side][pnumber])
    master.update()

# Note: 
# conda activate base

# 读取模型
# SVM01 = joblib.load('./GestureModel/SVM_LC_STAND_TWO_CLASS.pkl')
# SVM02 = joblib.load('./GestureModel/SVM_LC_STAND.pkl')
subject = "xx"
MODEL01 = joblib.load('./GNBModelV1.0/' + subject + '_GNB_TWO_CLASS_OPTIMAL_MODEL.pkl')
MODEL02 = joblib.load('./RFModelV1.0/' + subject + '_RF_TEN_CLASS_OPTIMAL_MODEL.pkl')

print("MODEL01: ",MODEL01)
print("MODEL02: ",MODEL02)

updated_window_data = np.zeros((200,36))

def read_imu_data():
    global updated_window_data
    window_data = np.zeros((200,36))
    time_threshold = 0.0 
   
    time.sleep(10) 
    last_time = 0
    while True:
        window_data[0:199,:] = window_data[1:200,:]
        window_data[199,:] = AET.serial_data_1_36(1) 
        gyro_sums = np.sum(abs(np.hstack((window_data[:,3:6], window_data[:,9:12],window_data[:,15:18],window_data[:,21:24],window_data[:,27:30],window_data[:,33:36]))),axis=1) # 按行相加
        current_time = time.time()
        if gyro_sums[0] > 2000 and current_time - last_time > time_threshold:
            last_time = current_time
            updated_window_data = window_data

def online_asynchronous_recognition():
    print("<------------------------------------------------------------------------------------->")
    print("                       IMU HAND GESTURE INTERACT WITH UAV PLATFORM                     ")
    print("<------------------------------------------------------------------------------------->")
    print("<---------[0]:Left Deflection(LD)           <-->   Move Left  X: -0.5m       --------->")
    print("<---------[1]:Right Deflection(RD)          <-->   Move Right X: +0.5m       --------->")
    print("<---------[2]:On the Diagonal Move(OM)      <-->   Move Up Z: +0.5m          --------->")
    print("<---------[3]:Under Inclined to Move(UM)    <-->   Move Down Z: -0.5m        --------->")    
    # print("<---------[4]:Half Clenched Fist(HF)        <-->   Square Trajectory R:+0.5m --------->")
    print("<---------[5]:Clenched Fist(CF)             <-->   Armed                     --------->")
    print("<---------[6]:Thumbs Up(TU)                 <-->   Take Off on High Z: +0.5m --------->")
    print("<---------[7]:Ok Sign(OS)                   <-->   Disarmed                  --------->")
    # print("<---------[8]:Little Finger(LF)             <-->   Circle Trajectory R:+0.5m --------->")
    print("<---------[9]:ROCK Sign(RS)                 <-->   Forces Land               --------->")
    print("<---------[4][0]:HF + LD                    <-->   Turn Left  Yaw: -30d      --------->")
    print("<---------[4][1]:HF + RD                    <-->   Turn Right Yaw: +30d      --------->")
    print("<---------[4][2]:HF + OM                    <-->   Move Forward Z: +0.5m     --------->")
    print("<---------[4][3]:HF + UM                    <-->   Move Backward Z: -0.5m    --------->")
    print("<---------[4][5]:HF + CF                    <-->   Square Trajectory R:+0.5m --------->")
    print("<---------[4][6]:HF + TU                    <-->   Circle Trajectory R:+0.5m --------->")
    print("<---------[4][7]:HF + OS                    <-->   Triangle Trajectory R:+0.5m ------->")
    print("<---------[4][9]:HF + RS                    <-->   Motion Planning           --------->")
    print("<------------------------------------------------------------------------------------->")
    test_data = AET.gesture_detection()  # 400*36
    # test_data = updated_window_data
    # print("test_data",test_data)
    test_data_filter = SvmOnline.online_butter_filter(test_data,feature_size=36)
    test_data_var = SvmOnline.online_imu_data_var(test_data_filter,feature_size=36)
    test_pred = MODEL01.predict(test_data_var) 
    print("test_pred: ",test_pred)
      
    gesture_non = ["Gesture","Non-gesture"]
    
    if(test_pred == [1]):
        cmd = " "
        tcp_socket.send(cmd.encode('utf-8'))
        
        server_feedback = tcp_socket.recv(1024)
        print("server_feedback: ",server_feedback.decode('utf-8'))

    else:                        
        mode = MODEL02.predict(test_data_var) 
        current_command = ["Move Left","Move Right","Move Up","Move Down","Composited","Armed","Take Off on High","Disrmed","NaN","Forces Land"]
        print("Current UAV Action: ",current_command[mode[0]])
        print("\n\n")
        picture_show(side, mode[0]) # 0,1,2,3,
        cmd = str(mode[0])
        print("cmd_gesture: ",cmd)
        tcp_socket.send(cmd.encode('utf-8'))
        server_feedback = tcp_socket.recv(1024)
        print("server_feedback: ",server_feedback.decode('utf-8'))
    
if __name__ == "__main__":
    # t1 = threading.Thread(target=read_imu_data,daemon=False)
    # t1.start()

    while True:
        online_asynchronous_recognition()