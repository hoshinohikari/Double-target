% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 409.138896210599967 ; 412.698304684691436 ];

%-- Principal point:
cc = [ 346.654409418322302 ; 258.281921544979411 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.272674008736142 ; 0.065132022397213 ; -0.005436705283735 ; 0.001487592640589 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 7.598011121016732 ; 7.645496266307887 ];

%-- Principal point uncertainty:
cc_error = [ 11.266155718453247 ; 10.105055324825571 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.039080061893553 ; 0.071186275535181 ; 0.003666582406185 ; 0.003796137720477 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 12;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.144351e+00 ; 2.231388e+00 ; 1.433359e-01 ];
Tc_1  = [ -3.400536e+01 ; -3.888722e+01 ; 9.838126e+01 ];
omc_error_1 = [ 2.025535e-02 ; 1.750413e-02 ; 4.026198e-02 ];
Tc_error_1  = [ 2.810824e+00 ; 2.478615e+00 ; 2.461617e+00 ];

%-- Image #2:
omc_2 = [ -2.178538e+00 ; -1.838983e+00 ; 2.609291e-01 ];
Tc_2  = [ -4.035924e+01 ; -2.442629e+01 ; 1.291749e+02 ];
omc_error_2 = [ 1.997996e-02 ; 1.935682e-02 ; 3.847090e-02 ];
Tc_error_2  = [ 3.545751e+00 ; 3.130202e+00 ; 2.613634e+00 ];

%-- Image #3:
omc_3 = [ 1.653620e+00 ; 2.070425e+00 ; 5.184202e-01 ];
Tc_3  = [ -7.446076e+00 ; -5.011245e+01 ; 8.592392e+01 ];
omc_error_3 = [ 2.283706e-02 ; 2.053764e-02 ; 3.391329e-02 ];
Tc_error_3  = [ 2.459979e+00 ; 2.112190e+00 ; 2.395329e+00 ];

%-- Image #4:
omc_4 = [ 1.693286e+00 ; 1.684501e+00 ; -6.417682e-01 ];
Tc_4  = [ -3.691674e+01 ; -1.732479e+01 ; 1.572619e+02 ];
omc_error_4 = [ 1.957987e-02 ; 2.340770e-02 ; 3.242010e-02 ];
Tc_error_4  = [ 4.297409e+00 ; 3.839976e+00 ; 2.724729e+00 ];

%-- Image #5:
omc_5 = [ 1.813445e+00 ; 1.863671e+00 ; -1.103953e+00 ];
Tc_5  = [ -2.147942e+01 ; -1.072738e+01 ; 1.811768e+02 ];
omc_error_5 = [ 1.887815e-02 ; 2.539562e-02 ; 3.674559e-02 ];
Tc_error_5  = [ 4.946255e+00 ; 4.389849e+00 ; 2.612339e+00 ];

%-- Image #6:
omc_6 = [ 1.477859e+00 ; 1.424525e+00 ; -1.700240e-01 ];
Tc_6  = [ -3.607735e+01 ; -2.385457e+01 ; 1.334015e+02 ];
omc_error_6 = [ 2.146467e-02 ; 2.243200e-02 ; 2.770474e-02 ];
Tc_error_6  = [ 3.671103e+00 ; 3.266209e+00 ; 2.664924e+00 ];

%-- Image #7:
omc_7 = [ 1.721720e+00 ; 1.723673e+00 ; -7.351224e-01 ];
Tc_7  = [ -5.347539e+01 ; 3.565781e+01 ; 2.858229e+02 ];
omc_error_7 = [ 2.664013e-02 ; 3.021061e-02 ; 4.623001e-02 ];
Tc_error_7  = [ 7.908086e+00 ; 7.132165e+00 ; 5.449640e+00 ];

%-- Image #8:
omc_8 = [ 1.860539e+00 ; 1.879773e+00 ; -1.278468e+00 ];
Tc_8  = [ -4.015681e+01 ; 3.970042e+01 ; 3.034448e+02 ];
omc_error_8 = [ 2.396110e-02 ; 3.157985e-02 ; 4.590843e-02 ];
Tc_error_8  = [ 8.398562e+00 ; 7.493199e+00 ; 5.387081e+00 ];

%-- Image #9:
omc_9 = [ 1.550731e+00 ; 1.535818e+00 ; -1.765530e-01 ];
Tc_9  = [ -4.983472e+01 ; 1.637471e+01 ; 2.472545e+02 ];
omc_error_9 = [ 2.402608e-02 ; 2.496501e-02 ; 3.671242e-02 ];
Tc_error_9  = [ 6.891694e+00 ; 6.187929e+00 ; 5.391436e+00 ];

%-- Image #10:
omc_10 = [ -2.163069e+00 ; -2.167865e+00 ; -1.476342e-01 ];
Tc_10  = [ -4.019594e+01 ; 5.490884e+00 ; 2.068870e+02 ];
omc_error_10 = [ 2.622998e-02 ; 3.544473e-02 ; 6.848519e-02 ];
Tc_error_10  = [ 5.714597e+00 ; 5.144635e+00 ; 5.258160e+00 ];

%-- Image #11:
omc_11 = [ 1.827511e+00 ; 2.152924e+00 ; 4.163227e-01 ];
Tc_11  = [ -1.895413e+01 ; -7.993271e+00 ; 1.873083e+02 ];
omc_error_11 = [ 2.797667e-02 ; 2.252885e-02 ; 5.004471e-02 ];
Tc_error_11  = [ 5.172635e+00 ; 4.654562e+00 ; 4.764202e+00 ];

%-- Image #12:
omc_12 = [ -2.153642e+00 ; -1.850111e+00 ; 2.764198e-01 ];
Tc_12  = [ -4.910663e+01 ; 2.449837e+01 ; 2.623928e+02 ];
omc_error_12 = [ 2.975608e-02 ; 3.439491e-02 ; 6.192376e-02 ];
Tc_error_12  = [ 7.288602e+00 ; 6.484870e+00 ; 5.412930e+00 ];

