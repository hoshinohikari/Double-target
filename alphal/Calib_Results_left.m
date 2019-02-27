% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 423.853058950535171 ; 434.380464587414281 ];

%-- Principal point:
cc = [ 337.170846118760949 ; 242.375874571973583 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.310395923842111 ; 0.065542412277096 ; -0.000236977715131 ; 0.001483029617949 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 6.240050691565305 ; 6.408442801451577 ];

%-- Principal point uncertainty:
cc_error = [ 9.767686160230250 ; 9.551647482123556 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.021946323321945 ; 0.027541088026379 ; 0.003585802040106 ; 0.002644787565852 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.190712e+00 ; -2.270524e+00 ; -1.133298e-01 ];
Tc_1  = [ -3.273295e+02 ; -3.462755e+02 ; 1.023420e+03 ];
omc_error_1 = [ 1.395116e-02 ; 1.831034e-02 ; 3.547190e-02 ];
Tc_error_1  = [ 2.416075e+01 ; 2.303941e+01 ; 2.033809e+01 ];

%-- Image #2:
omc_2 = [ -2.136162e+00 ; -1.874098e+00 ; 3.318033e-01 ];
Tc_2  = [ -3.588328e+02 ; -2.344746e+02 ; 1.353377e+03 ];
omc_error_2 = [ 1.710294e-02 ; 1.708198e-02 ; 3.424794e-02 ];
Tc_error_2  = [ 3.085677e+01 ; 2.926333e+01 ; 2.208212e+01 ];

%-- Image #3:
omc_3 = [ 1.642784e+00 ; 2.084675e+00 ; 4.591045e-01 ];
Tc_3  = [ -5.087043e+01 ; -4.727814e+02 ; 9.151516e+02 ];
omc_error_3 = [ 1.975708e-02 ; 1.743421e-02 ; 2.953334e-02 ];
Tc_error_3  = [ 2.169735e+01 ; 2.010939e+01 ; 2.094375e+01 ];

%-- Image #4:
omc_4 = [ 1.642766e+00 ; 1.653955e+00 ; -7.027310e-01 ];
Tc_4  = [ -3.400366e+02 ; -1.111596e+02 ; 1.612994e+03 ];
omc_error_4 = [ 1.758304e-02 ; 1.991309e-02 ; 2.834668e-02 ];
Tc_error_4  = [ 3.666096e+01 ; 3.534247e+01 ; 2.284744e+01 ];

%-- Image #5:
omc_5 = [ 1.776409e+00 ; 1.848561e+00 ; -1.172621e+00 ];
Tc_5  = [ -1.666412e+02 ; -3.799380e+01 ; 1.884044e+03 ];
omc_error_5 = [ 1.730973e-02 ; 2.206049e-02 ; 3.285736e-02 ];
Tc_error_5  = [ 4.305748e+01 ; 4.106947e+01 ; 2.234359e+01 ];

%-- Image #6:
omc_6 = [ 1.447263e+00 ; 1.416469e+00 ; -2.288030e-01 ];
Tc_6  = [ -3.444263e+02 ; -1.883330e+02 ; 1.373937e+03 ];
omc_error_6 = [ 1.894216e-02 ; 1.897132e-02 ; 2.408778e-02 ];
Tc_error_6  = [ 3.139789e+01 ; 3.016976e+01 ; 2.285148e+01 ];

%-- Image #7:
omc_7 = [ 1.690883e+00 ; 1.706094e+00 ; -7.895977e-01 ];
Tc_7  = [ -4.683588e+02 ; 4.598150e+02 ; 2.960184e+03 ];
omc_error_7 = [ 2.428914e-02 ; 2.639133e-02 ; 4.228505e-02 ];
Tc_error_7  = [ 6.839115e+01 ; 6.660422e+01 ; 4.676726e+01 ];

%-- Image #8:
omc_8 = [ 1.829523e+00 ; 1.852178e+00 ; -1.319681e+00 ];
Tc_8  = [ -3.324610e+02 ; 5.051954e+02 ; 3.135573e+03 ];
omc_error_8 = [ 2.270731e-02 ; 2.752809e-02 ; 4.181495e-02 ];
Tc_error_8  = [ 7.280421e+01 ; 6.971988e+01 ; 4.570209e+01 ];

%-- Image #9:
omc_9 = [ 1.533425e+00 ; 1.537336e+00 ; -2.318932e-01 ];
Tc_9  = [ -4.442910e+02 ; 2.587336e+02 ; 2.588591e+03 ];
omc_error_9 = [ 2.172635e-02 ; 2.221108e-02 ; 3.332151e-02 ];
Tc_error_9  = [ 5.992790e+01 ; 5.852690e+01 ; 4.817184e+01 ];

%-- Image #10:
omc_10 = [ -2.150431e+00 ; -2.147613e+00 ; -1.214697e-01 ];
Tc_10  = [ -3.538350e+02 ; 1.316956e+02 ; 2.147896e+03 ];
omc_error_10 = [ 2.240014e-02 ; 3.112438e-02 ; 5.832227e-02 ];
Tc_error_10  = [ 4.968807e+01 ; 4.805766e+01 ; 4.470675e+01 ];

%-- Image #11:
omc_11 = [ 1.840575e+00 ; 2.173942e+00 ; 3.595435e-01 ];
Tc_11  = [ -1.470430e+02 ; -5.439831e+00 ; 1.982763e+03 ];
omc_error_11 = [ 2.525937e-02 ; 2.036747e-02 ; 4.511611e-02 ];
Tc_error_11  = [ 4.586816e+01 ; 4.443563e+01 ; 4.278252e+01 ];

%-- Image #12:
omc_12 = [ -2.155337e+00 ; -1.840773e+00 ; 2.809756e-01 ];
Tc_12  = [ -4.314123e+02 ; 3.378835e+02 ; 2.716399e+03 ];
omc_error_12 = [ 2.548474e-02 ; 3.050016e-02 ; 5.570692e-02 ];
Tc_error_12  = [ 6.288822e+01 ; 6.058125e+01 ; 4.771623e+01 ];

%-- Image #13:
omc_13 = [ 1.908470e+00 ; 1.767934e+00 ; -9.116819e-01 ];
Tc_13  = [ -2.416594e+02 ; -1.095089e+01 ; 1.743398e+03 ];
omc_error_13 = [ 1.850281e-02 ; 1.981333e-02 ; 3.326786e-02 ];
Tc_error_13  = [ 3.972685e+01 ; 3.794032e+01 ; 2.310101e+01 ];

%-- Image #14:
omc_14 = [ 1.700489e+00 ; 1.709105e+00 ; -1.348721e+00 ];
Tc_14  = [ -1.144981e+02 ; 2.043614e+02 ; 1.903311e+03 ];
omc_error_14 = [ 1.777456e-02 ; 2.168612e-02 ; 3.064989e-02 ];
Tc_error_14  = [ 4.365642e+01 ; 4.138939e+01 ; 2.058496e+01 ];

%-- Image #15:
omc_15 = [ 1.567358e+00 ; 1.645725e+00 ; -5.199427e-01 ];
Tc_15  = [ 3.629127e+01 ; 6.804328e+01 ; 1.818468e+03 ];
omc_error_15 = [ 2.055002e-02 ; 1.854352e-02 ; 2.964942e-02 ];
Tc_error_15  = [ 4.168598e+01 ; 3.985381e+01 ; 2.868979e+01 ];

%-- Image #16:
omc_16 = [ 1.998334e+00 ; 1.782901e+00 ; -7.237149e-01 ];
Tc_16  = [ -7.576064e+01 ; 3.271585e+02 ; 3.142750e+03 ];
omc_error_16 = [ 3.548579e-02 ; 2.921391e-02 ; 5.864776e-02 ];
Tc_error_16  = [ 7.279124e+01 ; 6.990375e+01 ; 5.277004e+01 ];

%-- Image #17:
omc_17 = [ -2.600140e+00 ; -1.779280e+00 ; 3.019649e-01 ];
Tc_17  = [ -3.836038e+02 ; -1.097851e+03 ; 3.171065e+03 ];
omc_error_17 = [ 4.796359e-02 ; 2.594565e-02 ; 7.236925e-02 ];
Tc_error_17  = [ 7.541747e+01 ; 7.193619e+01 ; 6.469925e+01 ];

%-- Image #18:
omc_18 = [ 2.559760e+00 ; 4.119307e-01 ; 6.289085e-01 ];
Tc_18  = [ -2.215600e+03 ; -1.005464e+03 ; 4.038485e+03 ];
omc_error_18 = [ 4.498113e-02 ; 3.029613e-02 ; 6.786217e-02 ];
Tc_error_18  = [ 1.117258e+02 ; 9.830808e+01 ; 1.638566e+02 ];

%-- Image #19:
omc_19 = [ 1.794676e+00 ; 1.971769e+00 ; 1.178636e-01 ];
Tc_19  = [ -1.524770e+03 ; 3.004489e+02 ; 2.543391e+03 ];
omc_error_19 = [ 6.422767e-02 ; 7.867726e-02 ; 1.199158e-01 ];
Tc_error_19  = [ 6.696847e+01 ; 6.268246e+01 ; 8.301333e+01 ];

%-- Image #20:
omc_20 = [ 2.452697e+00 ; 1.901395e+00 ; -2.416862e-01 ];
Tc_20  = [ 2.105469e+02 ; -2.121582e+02 ; 3.660001e+03 ];
omc_error_20 = [ 8.709743e-02 ; 5.287065e-02 ; 1.559909e-01 ];
Tc_error_20  = [ 8.557893e+01 ; 8.048512e+01 ; 1.010788e+02 ];

