% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 886.130043801873626 ; 892.431031014127257 ];

%-- Principal point:
cc = [ 690.080328276835644 ; 524.204602992697573 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.405212719884885 ; 0.148630981528233 ; -0.000859394585081 ; 0.001802763777097 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 56.934851446788961 ; 57.050765713599503 ];

%-- Principal point uncertainty:
cc_error = [ 20.239011391863990 ; 30.081006413897214 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.045045479997711 ; 0.038283550263449 ; 0.005102290021317 ; 0.003066678073898 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 960;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 15;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.947464e+00 ; -2.344351e+00 ; 4.327882e-01 ];
Tc_1  = [ 2.717747e+03 ; -1.618102e+03 ; 6.317029e+03 ];
omc_error_1 = [ 3.993655e-02 ; 4.264083e-02 ; 8.940744e-02 ];
Tc_error_1  = [ 1.573186e+02 ; 2.288222e+02 ; 4.463122e+02 ];

%-- Image #2:
omc_2 = [ 1.740853e+00 ; 2.435774e+00 ; -8.348784e-01 ];
Tc_2  = [ 3.063614e+03 ; 8.470916e+02 ; 5.803868e+03 ];
omc_error_2 = [ 5.182849e-02 ; 3.345076e-02 ; 9.935025e-02 ];
Tc_error_2  = [ 1.574197e+02 ; 2.132788e+02 ; 4.404706e+02 ];

%-- Image #3:
omc_3 = [ -1.613300e+00 ; -2.389870e+00 ; 8.830777e-01 ];
Tc_3  = [ 2.925065e+03 ; 2.606260e+02 ; 5.821114e+03 ];
omc_error_3 = [ 3.618291e-02 ; 4.801559e-02 ; 9.035535e-02 ];
Tc_error_3  = [ 1.445049e+02 ; 2.101934e+02 ; 4.212946e+02 ];

%-- Image #4:
omc_4 = [ -2.328276e+00 ; -1.612744e+00 ; 1.461902e-01 ];
Tc_4  = [ -7.321061e+02 ; -1.276435e+03 ; 4.463588e+03 ];
omc_error_4 = [ 3.940732e-02 ; 1.772152e-02 ; 6.201055e-02 ];
Tc_error_4  = [ 1.032454e+02 ; 1.513423e+02 ; 2.733293e+02 ];

%-- Image #5:
omc_5 = [ -2.390224e+00 ; -1.719757e+00 ; 4.450355e-01 ];
Tc_5  = [ -2.958373e+02 ; 3.474711e+02 ; 4.361266e+03 ];
omc_error_5 = [ 2.596799e-02 ; 1.950052e-02 ; 6.141271e-02 ];
Tc_error_5  = [ 9.964775e+01 ; 1.474546e+02 ; 2.685149e+02 ];

%-- Image #6:
omc_6 = [ -2.282706e+00 ; -1.745210e+00 ; 3.307619e-01 ];
Tc_6  = [ -3.707815e+02 ; -6.071350e+02 ; 4.417603e+03 ];
omc_error_6 = [ 2.944089e-02 ; 1.766562e-02 ; 5.770406e-02 ];
Tc_error_6  = [ 1.008020e+02 ; 1.486608e+02 ; 2.712563e+02 ];

%-- Image #7:
omc_7 = [ -2.116103e+00 ; -2.113563e+00 ; 2.061347e-01 ];
Tc_7  = [ -1.582211e+03 ; -1.960352e+03 ; 3.964689e+03 ];
omc_error_7 = [ 3.431168e-02 ; 1.670284e-02 ; 7.509044e-02 ];
Tc_error_7  = [ 9.869798e+01 ; 1.433876e+02 ; 2.572913e+02 ];

%-- Image #8:
omc_8 = [ 2.246760e+00 ; 2.089362e+00 ; -2.505255e-01 ];
Tc_8  = [ -2.141886e+03 ; -6.817844e+02 ; 3.476027e+03 ];
omc_error_8 = [ 1.776310e-02 ; 3.340071e-02 ; 7.280193e-02 ];
Tc_error_8  = [ 8.401759e+01 ; 1.300888e+02 ; 2.220641e+02 ];

%-- Image #9:
omc_9 = [ 2.013064e+00 ; 2.012066e+00 ; -3.297354e-01 ];
Tc_9  = [ -1.618524e+03 ; -3.183776e+02 ; 3.298273e+03 ];
omc_error_9 = [ 1.873159e-02 ; 2.987162e-02 ; 5.923559e-02 ];
Tc_error_9  = [ 7.500783e+01 ; 1.189512e+02 ; 1.982835e+02 ];

%-- Image #10:
omc_10 = [ 2.169106e+00 ; 1.957837e+00 ; -6.420795e-01 ];
Tc_10  = [ -1.639046e+02 ; 4.935210e+02 ; 3.862494e+03 ];
omc_error_10 = [ 2.798197e-02 ; 2.390070e-02 ; 5.071158e-02 ];
Tc_error_10  = [ 8.837520e+01 ; 1.308739e+02 ; 2.309752e+02 ];

%-- Image #11:
omc_11 = [ -2.058745e+00 ; -2.117211e+00 ; 2.511721e-01 ];
Tc_11  = [ 3.384657e+02 ; -1.157018e+03 ; 6.078622e+03 ];
omc_error_11 = [ 4.939811e-02 ; 4.772808e-02 ; 9.360487e-02 ];
Tc_error_11  = [ 1.415725e+02 ; 2.051789e+02 ; 3.852949e+02 ];

%-- Image #12:
omc_12 = [ -1.997410e+00 ; -1.996764e+00 ; 9.513519e-01 ];
Tc_12  = [ 1.904842e+03 ; 1.153491e+03 ; 4.963179e+03 ];
omc_error_12 = [ 3.655952e-02 ; 6.384909e-02 ; 9.854922e-02 ];
Tc_error_12  = [ 1.233899e+02 ; 1.774966e+02 ; 3.528109e+02 ];

%-- Image #13:
omc_13 = [ -1.472917e+00 ; -2.184898e+00 ; 5.388016e-01 ];
Tc_13  = [ 3.118559e+03 ; -2.432227e+03 ; 5.508446e+03 ];
omc_error_13 = [ 5.397749e-02 ; 4.901601e-02 ; 9.471353e-02 ];
Tc_error_13  = [ 1.672367e+02 ; 2.160179e+02 ; 4.132307e+02 ];

%-- Image #14:
omc_14 = [ 1.692850e+00 ; 2.321323e+00 ; 1.879128e-01 ];
Tc_14  = [ -1.716977e+03 ; -2.357576e+03 ; 3.957581e+03 ];
omc_error_14 = [ 1.895198e-02 ; 4.792424e-02 ; 9.702003e-02 ];
Tc_error_14  = [ 9.704479e+01 ; 1.439859e+02 ; 2.600336e+02 ];

%-- Image #15:
omc_15 = [ 1.244999e+00 ; 2.162373e+00 ; -5.419994e-01 ];
Tc_15  = [ -2.224872e+03 ; 2.111336e+02 ; 3.762145e+03 ];
omc_error_15 = [ 1.257072e-02 ; 3.480345e-02 ; 5.835444e-02 ];
Tc_error_15  = [ 8.689321e+01 ; 1.402872e+02 ; 2.155276e+02 ];

