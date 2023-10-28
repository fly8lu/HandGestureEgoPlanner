#coding:utf-8
import serial
import struct
import re
import numpy as np
import scipy.io as sio
import time
import matplotlib.pyplot as plt

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
"""

acc=[0,1,2,6,7,8,12,13,14,18,19,20,24,25,26,30,31,32]  
gro=[3,4,5,9,10,11,15,16,17,21,22,23,27,28,29,33,34,35] 
frames = 400

def imu_data_effective_extract(test_data):
    print("test_data: ",test_data.shape)
    gyro_sums = np.sum(abs(np.hstack((test_data[:,3:6], test_data[:,9:12],test_data[:,15:18],test_data[:,21:24],test_data[:,27:30],test_data[:,33:36]))),axis=1)
    i = 0
    while i < frames - 200 and gyro_sums[i] < 2000:
        i += 1
    return i

def serial3(flag):
    com = serial.Serial('/dev/ttyUSB0', 460800)
    data = com.read(frames*78) 
    xy=''.join([chr(i) for i in data])            
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
    data36 = data36[j:j+200,:]
    return data36



