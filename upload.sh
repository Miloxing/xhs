#!/bin/bash
# 持续上传 downloads 目录到 1f:milo/xhs，上传成功后删除本地文件

cd "$(dirname "$0")" || exit 1

python3 rclone_upload.py \
    --watch \
    --dest "1f:milo/xhs" \
    --mode move \
    --scan-interval 30 \
    --min-age 60
