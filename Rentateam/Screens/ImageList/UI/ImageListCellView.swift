//
//  ImageListCellView.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 12.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

final class ImageListCellView: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAppearance()
    }
    
    private func setupAppearance() {
        backgroundColor = .systemGray5
        setupImageLabel()
        setupDateLabel()
    }
    
    let imageLabel: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 1
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    
    
    private func setupImageLabel() {
        addSubview(imageLabel)
        NSLayoutConstraint.activate([
            imageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            imageLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            imageLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupDateLabel() {
        addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 5),
            dateLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            dateLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            dateLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

