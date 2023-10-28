#coding:utf-8

import SerialData
import matplotlib.pyplot as plt
import numpy as np
import joblib
import OnlineCompile as SvmOnline
import time
from scipy import io
import tkinter as tk
import pygame
from PIL import Image,ImageTk
import EffectiveExtract as SET
import socket

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
"""

tcp_socket = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
server_ip = "127.0.0.1"
server_port = 8000
tcp_socket.connect((server_ip,server_port))
pygame.mixer.init()
titleFont = ('Helvetica', 30, 'bold')
master = tk.Tk()
master.title("GESTURE INTERACT WITH UAV")
canvas = tk.Canvas(master, width=220, height=270, bg="white") 
canvas.pack()

side = "glove"
Model = "Dis"
if side == "glove":
    Start = 0

def str_show(str, seconds):
    canvas.create_text(180, 380, text=str, font=titleFont)
    master.update()
    time.sleep(seconds)

def picture_show(side,pnumber):
    image_dict = {
    'glove': {
        0: ImageTk.PhotoImage(Image.open("GestureActionV1.2/14.png")),
    }
}
    canvas.create_image(0, 0, anchor=tk.NW, image=image_dict[side][pnumber])
    master.update()

subject = "lc"

# Note:
# conda activate pytorch_gpu 
# MODEL02 = joblib.load('./RFModel/' + subject + '_RF_TEN_CLASS_MODEL.pkl')
MODEL02 = joblib.load('./RFModelV1.1/' + subject + '_RF_ELEVEN_CLASS_OPTIMAL_MODEL.pkl')

def online_synchronous_recognition():
    mode = -1
    print("<-------------------------------------------------------------------->")
    print("                       基于IMU手势识别<同步检测>无人机交互平台              ")
    print("<-------------------------------------------------------------------->")
    print("<-----------[0]:向内偏转     <-->     无人机向左移动X:+0.5m    --------->")
    print("<-----------[1]:向外偏转     <-->     无人机向左移动X:-0.5m    --------->")
    print("<-----------[2]:斜向上偏移   <-->     无人机向上移动Z:+0.5m    --------->")
    print("<-----------[3]:斜向下偏移   <-->     无人机向下移动Z:-0.5m    --------->")
    print("<-----------[4]:半握拳      <-->     无人机向前移动Y:+0.5m    --------->")
    print("<-----------[5]:握拳        <-->     无人机上锁               --------->")
    print("<-----------[6]:大拇指      <-->     无人机起飞定高Z:+0.5m    --------->")
    print("<-----------[7]:OK         <-->     无人机向后移动Y:-0.5m    --------->")
    print("<-----------[8]:小拇指      <-->     无人机降落               --------->")
    print("<-----------[9]:ROCK       <-->     无人机解锁               --------->")
    print("<-------------------------------------------------------------------->")
    test_data = SET.serial3_data_400_36(1)
    test_data_filter = SvmOnline.online_butter_filter(test_data,feature_size=36)
    test_data_var = SvmOnline.online_imu_data_var(test_data_filter,feature_size=36)
    mode = MODEL02.predict(test_data_var) 
    if(mode == [10]):
        cmd = " "
        tcp_socket.send(cmd.encode('utf-8'))
        server_feedback = tcp_socket.recv(1024)
        print("server_feedback: ",server_feedback.decode('utf-8'))
    
    else:
        cmd = str(mode[0])
        print("cmd_gesture: ",cmd)
        tcp_socket.send(cmd.encode('utf-8'))
        server_feedback = tcp_socket.recv(1024)
        print("server_feedback: ",server_feedback.decode('utf-8'))

if __name__ == "__main__":
    
    while True:
        a = 'Keep rest'
        str_show(a, 1) 
        picture_show(side, pnumber=0)
        online_synchronous_recognition()
