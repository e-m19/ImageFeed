//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Елена Михайлова on 25.05.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet var cellButton: UIButton!
    @IBOutlet var cellImage: UIImageView!
}
