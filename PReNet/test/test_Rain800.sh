#! bash

# PReNet
python test_PReNet.py --logdir logs/Rain800/PReNet --save_path results/Rain800/PReNet --data_path datasets/test/Rain800

# PReNet_r
python test_PReNet_r.py --logdir logs/Rain800/PReNet_r --save_path results/Rain800/PReNet_r --data_path datasets/test/Rain800

# PRN
python test_PRN.py --logdir logs/Rain800/PRN --save_path results/Rain800/PRN --data_path datasets/test/Rain800

# PRN_r
python test_PRN_r.py --logdir logs/Rain800/PRN_r --save_path results/Rain800/PRN_r --data_path datasets/test/Rain800
