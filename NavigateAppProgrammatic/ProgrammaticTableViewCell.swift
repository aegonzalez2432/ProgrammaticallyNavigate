//
//  ProgrammaticTableViewCell.swift
//  NavigateAppProgrammatic
//
//  Created by Consultant on 11/7/22.
//

import UIKit

class ProgrammaticTableViewCell: UITableViewCell {
    
    var buttonIsPressed = false
    
    //make a stored value, pass from viewCONTROller to property here
    
    var updateStats : String = "Stats"
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Michael Jordan")
        
        return imageView
    }()
    lazy var progLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemYellow
        label.numberOfLines = 0
        label.text = "Michael Jordan"
        
        return label
    }()
    
    lazy var progressBar: UIProgressView = {
        let progBar = UIProgressView(frame: .zero)
        progBar.translatesAutoresizingMaskIntoConstraints = false
        progBar.backgroundColor = .white
        progBar.setProgress(1, animated: false)
        return progBar
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemPink
        button.setTitle("Push for stats", for: .normal)
        button.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var stats: UILabel = {
        let statLabel = UILabel(frame: .zero)
        statLabel.translatesAutoresizingMaskIntoConstraints = false
        statLabel.backgroundColor = .systemBrown
        statLabel.numberOfLines = 0
        statLabel.text = "Stats"
        return statLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.contentView.backgroundColor = .systemGray6
        
        self.contentView.addSubview(self.progImageView)
        self.contentView.addSubview(self.progLabel)
        self.contentView.addSubview(self.progressBar)
        self.contentView.addSubview(self.button)
        self.contentView.addSubview(self.stats)
        
        self.progImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.progImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true

        self.progImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true

        self.progImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true

        self.progLabel.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        self.progLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        self.progLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
//        self.progLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        //self.progLabel.bottomAnchor.constraint(equalTo: self.progressBar.topAnchor, constant: 8).isActive = true
        
        self.progressBar.topAnchor.constraint(equalTo: self.progLabel.bottomAnchor, constant: 8).isActive = true
        self.progressBar.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        self.progressBar.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        
        self.button.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        self.button.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        self.button.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
        self.stats.bottomAnchor.constraint(equalTo: self.button.topAnchor, constant: -8).isActive = true
        self.stats.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        self.stats.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        
    }
    @objc
    func buttonPressed() {
        print("button pressed")
        buttonIsPressed = true
        self.stats.text =  updateStats
    }

    

}
