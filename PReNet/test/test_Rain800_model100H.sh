#! bash

# PReNet
python test_PReNet.py --logdir logs/Rain100H/PReNet6 --save_path results/Rain800/PReNet_model100H --data_path datasets/test/Rain800

# PReNet_r
python test_PReNet_r.py --logdir logs/Rain100H/PReNet6_r --save_path results/Rain800/PReNet_r_model100H --data_path datasets/test/Rain800

# PRN
python test_PRN.py --logdir logs/Rain100H/PRN6 --save_path results/Rain800/PRN_model100H --data_path datasets/test/Rain800

# PRN_r
python test_PRN_r.py --logdir logs/Rain100H/PRN6_r --save_path results/Rain800/PRN_r_model100H --data_path datasets/test/Rain800
