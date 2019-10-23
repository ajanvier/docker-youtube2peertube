#!/bin/sh

sed -i 's/${VIDEO_DOWNLOAD_DIR}/'"$VIDEO_DOWNLOAD_DIR"'/g' "/app/config.toml"
sed -i 's/${USE_PT_HTTP_IMPORT}/'"$USE_PT_HTTP_IMPORT"'/g' "/app/config.toml"
sed -i 's/${DELETE_VIDEOS}/'"$DELETE_VIDEOS"'/g' "/app/config.toml"
sed -i 's/${POLL_FREQUENCY}/'"$POLL_FREQUENCY"'/g' "/app/config.toml"
sed -i 's/${YOUTUBE_CHANNEL_ID}/'"$YOUTUBE_CHANNEL_ID"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_NAME}/'"$PEERTUBE_CHANNEL_NAME"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_INSTANCE}/'"$PEERTUBE_INSTANCE"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_USERNAME}/'"$PEERTUBE_USERNAME"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_PASSWORD}/'"$PEERTUBE_PASSWORD"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_CATEGORY}/'"$PEERTUBE_CHANNEL_CATEGORY"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_DEFAULT_LANG}/'"$PEERTUBE_CHANNEL_DEFAULT_LANG"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_NSFW}/'"$PEERTUBE_CHANNEL_NSFW"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_COMMENTS_ENABLED}/'"$PEERTUBE_CHANNEL_COMMENTS_ENABLED"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_CHANNEL_PRIVACY}/'"$PEERTUBE_CHANNEL_PRIVACY"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_VIDEO_PREFERRED_EXTENSION}/'"$PEERTUBE_VIDEO_PREFERRED_EXTENSION"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_VIDEO_MAX_RESOLUTION}/'"$PEERTUBE_VIDEO_MAX_RESOLUTION"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_VIDEO_DESCRIPTION_PREFIX}/'"$PEERTUBE_VIDEO_DESCRIPTION_PREFIX"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_VIDEO_DESCRIPTION_SUFFIX}/'"$PEERTUBE_VIDEO_DESCRIPTION_SUFFIX"'/g' "/app/config.toml"
sed -i 's/${PEERTUBE_VIDEO_TAGS}/'"$PEERTUBE_VIDEO_TAGS"'/g' "/app/config.toml"

python /app/youtube2peertube.py
