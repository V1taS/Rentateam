//
//  ImageListTableView.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 12.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

final class ImageListTableView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAppearance()
    }
    
    private func setupAppearance() {
        backgroundColor = .systemBackground
        setupTableView()
        setupActivityIndicator()
        hideTableView()
    }
    
    var tableView: UITableView!
    
    private let activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .black
        return activityIndicator
    }()
    
    private func setupActivityIndicator() {
        addSubview(activityIndicator)
        activityIndicator.startAnimating()
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
    private func hideTableView() {
        tableView.isHidden = true
        activityIndicator.startAnimating()
    }
    
    func showTableView() {
        tableView.isHidden = false
        activityIndicator.stopAnimating()
    }
    
    private func setupTableView() {
        
        tableView = UITableView(frame: frame)
        tableView.register(ImageListCellView.self, forCellReuseIdentifier: "cell")
        tableView.rowHeight = 330
        tableView.backgroundColor = .systemBackground
        addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
