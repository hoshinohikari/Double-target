# Double-target

****
|Author|HoshinoKun|
|---|---
|E-mail|hoshinokun@346pro.club
****

## 目录
* [介绍](#介绍)
* [运行](#运行)

介绍
------
一款摄像头的双目测距程序，包含了标定用图以及标定数据，使用Matlab标定工具箱标定  

运行
------
当想使用摄像头拍照时，请使用
```
python cap.py
```
当拍照完成后，使用MATLAB工具箱标定相机，得到的数据类似Calib_Results_stereo_data.txt内所描述，将其手工填至camera_config.py内，使用
```
python test.py
```
自行调整numDisparities与blockSize值后，点击depth图中的位置，就可在z轴读出距离  