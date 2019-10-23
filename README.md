Youtube2Peertube on Alpine Linux with Docker
==============================================
![Docker Build Status](https://img.shields.io/docker/build/ajanvier/youtube2peertube.svg)
![Docker Image Size](https://img.shields.io/microbadger/image-size/ajanvier/youtube2peertube.svg)

A Docker image for [Youtube2Peertube](https://github.com/mister-monster/YouTube2PeerTube).

Usage
-----
Start the Docker container:

    docker run ajanvier/youtube2peertube

Or use the example docker-compose.yml.


Environment variables
-----

| Name                         | Description                                                                  | Default value |
| ---------------------------- |:-----------------------------------------------------------------------------| :-------------|
| **VIDEO_DOWNLOAD_DIR** | Destination of the downloaded videos. (must end with a slash) | /videos/ |
| **USE_PT_HTTP_IMPORT** | Peertube supports sending HTTP links to videos instead of downloading and uploading them. Use this option if you do not want to archive videos and have limited bandwidth. Setting this to true negates delete_videos as videos will not be downloaded, and disables transcoding. | false |
| **DELETE_VIDEOS** | Delete videos and metadata after upload to peertube. | false |
| **POLL_FREQUENCY** | Poll frequency in minutes. | 180 |
| **YOUTUBE_CHANNEL_ID** | YT channel ID (can be found at https://www.youtube.com/account_advanced) |  |
| **PEERTUBE_INSTANCE** | URL of PeerTube instance. |  |
| **PEERTUBE_USERNAME** | Peertube username. |  |
| **PEERTUBE_PASSWORD** | Peertube password. |  |
| **PEERTUBE_CHANNEL_NAME** | PeerTube channel handle to upload video to. |  |
| **PEERTUBE_CHANNEL_CATEGORY** | Category of channel contents. see [yt_pt_languages_categories.txt](https://github.com/mister-monster/YouTube2PeerTube/blob/master/yt_pt_languages_categories.txt) for categories. | 10 |
| **PEERTUBE_CHANNEL_DEFAULT_LANG** | Language of the channel, see [yt_pt_languages_categories.txt](https://github.com/mister-monster/YouTube2PeerTube/blob/master/yt_pt_languages_categories.txt) for languages | en |
| **PEERTUBE_CHANNEL_NSFW** | Is this channel NSFW? | false |
| **PEERTUBE_CHANNEL_COMMENTS_ENABLED** | Do you want comments enabled in this channel? | true |
| **PEERTUBE_CHANNEL_PRIVACY** | 1 = public, 2 = unlisted, 3 = private, privacy for entire channel. | 1 |
| **PEERTUBE_VIDEO_TAGS** | Tags to be added to uploaded video in Peertube, comma separated, max 5, between 2 and 30 char each (incomplete) |  |
| **PEERTUBE_VIDEO_DESCRIPTION_PREFIX** | This description will be added to the beginning of the YT description. |  |
| **PEERTUBE_VIDEO_DESCRIPTION_SUFFIX** | This description will be appended to the end of the YT description. |  |
| **PEERTUBE_VIDEO_PREFERRED_EXTENSION** | Preferred extension of download and upload. | mp4 |
| **PEERTUBE_VIDEO_MAX_RESOLUTION** | Maximum resolution of videos to download. | 1080 |
