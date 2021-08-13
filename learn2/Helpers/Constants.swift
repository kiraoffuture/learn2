//
//  Constants.swift
//  learn2
//
//  Created by Tien Doan on 11/08/2021.
//

import Foundation

struct Constants {
	static let API_KEY = "AIzaSyApHyzr72fEbdT6jdjTcgz5e3lGpPDYElM"
	static let PLAYLIST_ID = "PLLsNA3KUWsIv4zC6PbQ4qv84IBWU2FdHj"

	static let API_URL =
		"https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
    static let VIDEO_ID = "video_id"
    static let YOUTUBE_VIDEO_EMBED_URL = "https://www.youtube.com/embed/"
}
