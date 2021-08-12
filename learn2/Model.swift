//
//  Model.swift
//  learn2
//
//  Created by Tien Doan on 11/08/2021.
//

import Foundation

struct Model {

	func getVideos() {
		let url = URL(string: Constants.API_URL)
		guard url != nil else {
			return
		}
		let session = URLSession.shared
		let dataTask = session.dataTask(with: url!) { data, response, error in
			if error != nil || data == nil {
				return
			}
			do {
				let decoder = JSONDecoder()
				decoder.dateDecodingStrategy = .iso8601
				let response = try decoder.decode(Response.self, from: data!)
			} catch {

			}
		}
		dataTask.resume()
	}
}
