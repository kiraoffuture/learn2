//
//  CacheManager.swift
//  learn2
//
//  Created by Tien Doan on 13/08/2021.
//

import Foundation

class CacheManager {
	static var videoDictionary = [String: Data]()

	static func setVideoData(url: String, data: Data?) {
		videoDictionary[url] = data
	}

	static func getVideoData(url: String) -> Data? {
		return videoDictionary[url]
	}
}
