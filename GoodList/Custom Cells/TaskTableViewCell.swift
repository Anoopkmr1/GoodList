//
//  TaskTableViewCell.swift
//  GoodList


import Foundation
import UIKit

class TaskTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label  
    }()
    
    lazy var priorityView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6.0
        button.layer.masksToBounds = true
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        button.backgroundColor = UIColor.orange
        return button
    }()
    
    //It is responsible for initializing the cell when you create it programmatically
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // addding to the view
    private func setupUI() {
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.priorityView)
        configureConstraints()
    }
    
    // set the constraints
    private func configureConstraints() {
        let marginGuide = self.contentView.layoutMarginsGuide
        let bottomConstraint = self.titleLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor, constant: -10)
        bottomConstraint.priority = UILayoutPriority(99)
        NSLayoutConstraint.activate([
            self.titleLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
            self.titleLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor, constant: 10),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.priorityView.leadingAnchor, constant: -10),
            self.priorityView.centerYAnchor.constraint(equalTo: marginGuide.centerYAnchor),
            self.priorityView.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor, constant: -10),
            self.priorityView.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
