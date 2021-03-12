#! bash

# PReNet
python test_PReNet.py --logdir logs/Rain1400/PReNet6 --save_path results/Rain12/PReNet --data_path datasets/test/Rain12/rainy

# PReNet_r
python test_PReNet_r.py --logdir logs/Rain1400/PReNet6_r --save_path results/Rain12/PReNet_r --data_path datasets/test/Rain12/rainy

# PRN
python test_PRN.py --logdir logs/Rain1400/PRN6 --save_path results/Rain12/PRN6 --data_path datasets/test/Rain12/rainy

# PRN_r
python test_PRN_r.py --logdir logs/Rain1400/PRN6_r --save_path results/Rain12/PRN_r --data_path datasets/test/Rain12/rainy
