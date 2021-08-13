//
//  DetailViewController.swift
//  learn2
//
//  Created by Tien Doan on 13/08/2021.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

	@IBOutlet weak var titleLabel: UILabel!

	@IBOutlet weak var dateLabel: UILabel!

	@IBOutlet weak var videoWebView: WKWebView!

	@IBOutlet weak var descriptionTextView: UITextView!

	var video: Video?

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	override func viewWillAppear(_ animated: Bool) {

		titleLabel.text = ""
		dateLabel.text = ""
		descriptionTextView.text = ""

		guard video != nil else {
			return
		}

		titleLabel.text = video!.title

		let df = DateFormatter()
		df.dateFormat = "EEEE, MMM d, yyyy"
		dateLabel.text = df.string(from: video!.published)

		let url = URL(string: Constants.YOUTUBE_VIDEO_EMBED_URL + video!.videoId)
		if url != nil {
			videoWebView.load(URLRequest(url: url!))
		}

		descriptionTextView.text = video!.description
	}
}
