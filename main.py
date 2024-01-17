from pathlib import Path
import sys
sys.path.insert(0, str(Path("../").resolve()))
import subprocess
from exrecord import run_test_program

model_path = "punishment.pt"
tsv_file = "punishment.tsv"
output_file = "punishment_st.txt"

# 不需要設定 target_epoch 和 epoch
run_test_program(model_path, tsv_file, output_file)
