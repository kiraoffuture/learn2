//
//  Constants.swift
//  learn2
//
//  Created by Tien Doan on 11/08/2021.
//

import Foundation

struct Constants {
	static let API_KEY = ""
	static let PLAYLIST_ID = "PLLsNA3KUWsIv4zC6PbQ4qv84IBWU2FdHj"

	static let API_URL =
		"https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
}
