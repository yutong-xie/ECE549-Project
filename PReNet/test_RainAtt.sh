#! bash

# PReNet
python test_PReNet.py --logdir logs/RainAtt/PReNet --save_path results/RainAtt/PReNet --data_path datasets/test/test_b/data

# PReNet_r
python test_PReNet_r.py --logdir logs/RainAtt/PReNet_r --save_path results/RainAtt/PReNet_r --data_path datasets/test/test_b/data

# PRN
python test_PRN.py --logdir logs/RainAtt/PRN --save_path results/RainAtt/PRN --data_path datasets/test/test_b/data

# PRN_r
python test_PRN_r.py --logdir logs/RainAtt/PRN_r --save_path results/RainAtt/PRN_r --data_path datasets/test/test_b/data
