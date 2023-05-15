#!/bin/bash
# Ultralytics YOLO 🚀, AGPL-3.0 license
# Download latest models from https://github.com/ultralytics/assets/releases
# Example usage: bash ultralytics/yolo/data/scripts/download_weights.sh
# parent
# └── weights
#     ├── yolov8n.pt  ← downloads here
#     ├── yolov8s.pt
#     └── ...
# <<符号把后面内容喂给python    -表示从标准输入来读取代码.
python - <<EOF
from ultralytics.yolo.utils.downloads import attempt_download_asset

assets = [f'yolov8{size}{suffix}.pt' for size in 'nsmlx' for suffix in ('', '-cls', '-seg')]
for x in assets:
    attempt_download_asset(f'weights/{x}')

EOF
