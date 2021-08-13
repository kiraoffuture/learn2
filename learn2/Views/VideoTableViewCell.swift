//
//  VideoTableViewCell.swift
//  learn2
//
//  Created by Tien Doan on 13/08/2021.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

	@IBOutlet weak var thumbnailImageView: UIImageView!

	@IBOutlet weak var titleLabel: UILabel!

	@IBOutlet weak var dateLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}

	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)

		// Configure the view for the selected state
	}

	func setCell(video: Video) {
		titleLabel.text = video.title

		let df = DateFormatter()
		df.dateFormat = "EEEE, MMM d, yyyy"
		dateLabel.text = df.string(from: video.published)

		guard video.thumbnail != "" else {
			return
		}

		if let cacheData = CacheManager.getVideoData(url: video.thumbnail) {

			self.thumbnailImageView.image = UIImage(data: cacheData)

			return
		}

		print("Down image")
		let thumbnailUrl = URL(string: video.thumbnail)
		guard thumbnailUrl != nil else {
			return
		}
		let session = URLSession.shared
		let dataTask = session.dataTask(with: thumbnailUrl!) { data, response, error in

			if error == nil && data != nil {
				if thumbnailUrl?.absoluteString != video.thumbnail {
					return
				}
				CacheManager.setVideoData(url: video.thumbnail, data: data)
				DispatchQueue.main.async {
					self.thumbnailImageView.image = UIImage(data: data!)
				}
			}

		}

		dataTask.resume()
	}
}
