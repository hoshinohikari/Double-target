import cv2
import numpy as np

left_camera_matrix = np.array([[434.44586, 0., 339.86907],
                               [0., 432.49167, 265.11827],
                               [0., 0., 1.]])
left_distortion = np.array([[-0.32328, 0.06814, 0.00270, -0.00253, 0.00000]])

right_camera_matrix = np.array([[440.10519, 0., 315.50449],
                                [0., 433.87997, 259.31157],
                                [0., 0., 1.]])
right_distortion = np.array([[-0.27987, 0.06013, 0.00446, 0.01654, 0.00000]])

om = np.array([-0.01393, 0.05559, -0.00784])
R = cv2.Rodrigues(om)[0]
T = np.array([-587.80646, 6.84464, 51.66740])

size = (640, 480)

R1, R2, P1, P2, Q, validPixROI1, validPixROI2 = cv2.stereoRectify(left_camera_matrix, left_distortion,
                                                                  right_camera_matrix, right_distortion, size, R,
                                                                  T)

left_map1, left_map2 = cv2.initUndistortRectifyMap(left_camera_matrix, left_distortion, R1, P1, size, cv2.CV_16SC2)
right_map1, right_map2 = cv2.initUndistortRectifyMap(right_camera_matrix, right_distortion, R2, P2, size, cv2.CV_16SC2)
