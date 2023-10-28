#coding:utf-8
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import butter,lfilter,freqz

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
"""

# frames = 400
frames = 200

def online_imu_data_var(test_data,feature_size):
    online_imu_data_var = np.zeros((1,feature_size))
    for i in range(feature_size):
        online_imu_data_var[0,i] = np.var(test_data[:,i])
    return online_imu_data_var

def online_butter_filter(test_data,feature_size):
    fs = 200 
    lowcut = 0.01 #
    highcut = 3
    N = 3  

    imu_data_filter = np.zeros((frames,feature_size))
    Wn = [lowcut/(0.5*fs),highcut/(0.5*fs)] 

    for j in range(feature_size):
        b,a = butter(N,Wn,btype='bandpass')
        imu_data_filter[0:frames,j] = lfilter(b,a,test_data[0:frames,j])
        
    return imu_data_filter

def online_relative_feature(test_data):
    imu_relatiave_feature = np.zeros((400,90))
    a = 0
    for j in range(0,6,25):
        for jj in range(6,6,31):
            imu_relatiave_feature[:,a:a+3] = test_data[:,jj:jj+3] - test_data[:,j:j+3]
            a += 3

    g = 0
    for k in range(3,6,28):
        for kk in range(9,6,34):
            imu_relatiave_feature[:,g:g+3] = test_data[:,kk:kk+3] - test_data[:,k:k+3]
            g += 3

    print("imu_relativate_feature: ",imu_relatiave_feature.shape)
    return np.concatenate((imu_relatiave_feature,test_data),axis=1)

def imu_data_plot(imu_data):
    n = np.linspace(0,frames,frames) 
    print("n: ",n.shape)
    print("imu_data plot: ",imu_data.shape)
    plt.figure(1,figsize=(20,20))
    for i in range(0,10): 
        for j in range(1,11): 
            plt.subplot(10,10,i*10+j)
            # plt.plot(n,imu_data[i*10+j-1,:,0],'b',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,1],'g',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,2],'r',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,6],'c',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,7],'m',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,8],'y',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,12],'k',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,13],'w',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,14],'b',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,18],'g',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,19],'r',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,20],'c',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,24],'m',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,25],'y',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,26],'k',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,30],'w',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,31],'b',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,32],'g',lw = 1.5)

            for k in range(36):
                plt.plot(n,imu_data[i*10+j-1,:,0],'r',lw = 1.5)

    plt.grid(True)
    plt.legend(loc=0)
    plt.axis('tight')
    plt.ylabel('acc')
    plt.title('acc curve')
    plt.show()  

    plt.figure(2,figsize=(20,20))
    for i in range(0,10): 
        for j in range(1,11): 
            plt.subplot(10,10,i*10+j)
            plt.plot(n,imu_data[i*10+j-1,:,3],'b',lw = 1.5)
            plt.plot(n,imu_data[i*10+j-1,:,4],'g',lw = 1.5)
            plt.plot(n,imu_data[i*10+j-1,:,5],'r',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,9],'c',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,10],'m',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,11],'y',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,15],'k',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,16],'w',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,17],'b',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,21],'g',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,22],'r',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,23],'c',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,27],'m',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,28],'y',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,29],'k',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,33],'w',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,34],'b',lw = 1.5)
            # plt.plot(n,imu_data[i*10+j-1,:,35],'g',lw = 1.5)
          
    plt.grid(True)
    plt.legend(loc=0)
    plt.axis('tight')
    plt.ylabel('gyro')
    plt.title('gyro curve')
    plt.show()  