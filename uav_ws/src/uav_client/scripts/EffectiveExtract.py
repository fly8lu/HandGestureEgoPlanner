import numpy as np
import matplotlib.pyplot as plt
from numpy import block
import serial
import struct
import re
import numpy as np
import scipy.io as sio
import time
from sklearn.ensemble import RandomForestRegressor
import queue
import time

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
"""

frames = 400
acc=[0,1,2,6,7,8,12,13,14,18,19,20,24,25,26,30,31,32]  
gro=[3,4,5,9,10,11,15,16,17,21,22,23,27,28,29,33,34,35]  

def serial_data_1_36(flag):
    com = serial.Serial('/dev/ttyUSB0', 460800) 
    data = com.read(1*78*2) 
    xy=''.join([chr(i) for i in data])
    pattt = re.compile(r'ZZZZZ([\s\S]{74})')
    temp = pattt.findall(xy)
    data36 = np.zeros((2,36))
    a = 0

    for i in range(len(temp)):
        xyz = [ord(i) for i in temp[i]]
        xyz.pop(73)
        xyz.pop(0)
        xyz=bytes(xyz)
        cc=struct.unpack('>'+'hhhhhh'*6,xyz[:])        
        cc2=[]

        for _ in cc:
            if cc.index(_) in acc:
                cc2.append(_/16384)
            else:
                cc2.append(_/16.4) 
        data36[a,:] = cc2
        a += 1
    
    data36 = data36[0:1,:]

    return data36

def gesture_detection():
    window_data = np.zeros((200,36))
    time_threshold = 0.0 # 0.5s
    for i in range(200):
        window_data[i,:] = serial_data_1_36(1)   
    last_time = 0
            
    while True:
        gyro_sums = np.sum(abs(np.hstack((window_data[:,3:6], window_data[:,9:12],window_data[:,15:18],window_data[:,21:24],window_data[:,27:30],window_data[:,33:36]))),axis=1) 
        current_time = time.time()
        if gyro_sums[0] > 2000 and current_time - last_time > time_threshold:
            last_time = current_time
            return window_data
        else:
            file = open('mode.txt','w')
            file.write('')
            file.close()
        
        window_data[0:199,:] = window_data[1:200,:]
        window_data[199,:] = serial_data_1_36(1)        

def imu_data_effective_extract(test_data):
    
    gyro_sums = np.sum(abs(np.hstack((test_data[:,3:6], test_data[:,9:12],test_data[:,15:18],test_data[:,21:24],test_data[:,27:30],test_data[:,33:36]))),axis=1) 
    i = 0
    while i < frames - 200 and gyro_sums[i] < 2000:
        i += 1
    
    return i

def serial3_data_400_36(flag):
    com = serial.Serial('/dev/ttyUSB0', 460800) 
    imu_data = com.read(frames*78)
    xy=''.join([chr(i) for i in imu_data])    
    pattt = re.compile(r'ZZZZZ([\s\S]{74})')
    temp = pattt.findall(xy)
    data36 = np.zeros((400,36))
    a = 0

    for i in range(len(temp)): 
        xyz = [ord(i) for i in temp[i]]
        xyz.pop(73)
        xyz.pop(0)
        xyz=bytes(xyz)
        cc=struct.unpack('>'+'hhhhhh'*6,xyz[:])      
        cc2=[]

        for _ in cc:
            if cc.index(_) in acc:
                cc2.append(_/16384)
            else:
                cc2.append(_/16.4)

        data36[a,:] = cc2
        a += 1

    j = imu_data_effective_extract(data36)
    imu_data_200_36 = data36[j:j+200,:]

    return imu_data_200_36

def threshold_detection(imu_data):

    sums = np.sum(abs(imu_data),axis=1)
    print("sums:",sums.shape)
    print("abs(data):",abs(imu_data).shape)

    plt.figure(1)
    plt.plot(sums,'r')
    plt.show(block=False)
    plt.pause(1)
    plt.close()
    i = 0 
    while i < 800 - 400 and sums[i] < 2000:
        i += 1
    
    if i >= 400:
        return imu_data,False
    return imu_data[i:i+400,:],True

def effective_extract_01(imu_data):
    sums = np.sum(abs(imu_data),axis=1) 
    print("sums:",sums.shape)
    print("abs(data):",abs(imu_data).shape)
    imu_data_extract = np.zeros((200,36))
    i = 0 
    while 0 <= i <= 399 and sums[i] < 2000:
        i += 1          
    print("The before gesture end i:--------(1)",i)

    if i < 200:
        imu_data_extract = imu_data[i:i + 200,:]
        return imu_data_extract,True
    elif i < 400:
        imu_data_extract = imu_data[i:400,:]
        return imu_data_extract,True 

    elif i == 400:
        return imu_data,False 


def effective_extract(imu_data):
    sums = np.sum(abs(imu_data),axis=1) 
    print("sums:",sums.shape)
    print("abs(data):",abs(imu_data).shape)

    i = 0 
    while 0 <= i <= 399 and sums[i] < 2000:
        i += 1          
    print("The begin i:--------(1)",i)

    if i <= 200:
        return imu_data[i:i+200,:],i 

    if 200 < i < 400:
        return imu_data[i:399,:],i 
        
    if i == 400:
        return imu_data,-1 

    