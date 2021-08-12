//
//  ViewController.swift
//  learn2
//
//  Created by Tien Doan on 09/08/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

	var model = Model()
	var videos = [Video]()

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.dataSource = self
		tableView.delegate = self

		model.delegate = self

		model.getVideos()
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return videos.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_ID, for: indexPath)

		cell.textLabel?.text = videos[indexPath.row].title

		return cell
	}

	func videosFetched(videos: [Video]) {
		self.videos = videos
		tableView.reloadData()
	}
}
