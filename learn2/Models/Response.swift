//
//  Response.swift
//  learn2
//
//  Created by Tien Doan on 12/08/2021.
//

import Foundation

struct Response: Decodable {
	var items: [Video]?
	enum CodingKeys: String, CodingKey {
		case items
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.items = try container.decode([Video].self, forKey: CodingKeys.items)
	}
}
