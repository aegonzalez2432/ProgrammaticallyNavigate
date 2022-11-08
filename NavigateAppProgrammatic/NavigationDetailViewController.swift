//
//  NavigationDetailViewController.swift
//  NavigateAppProgrammatic
//
//  Created by Consultant on 11/7/22.
//

import UIKit

class NavigationDetailViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    lazy var infoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemRed
        label.numberOfLines = 0
        label.text = "Details"
        return label
    }()
    
    var nameString: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel.text = nameString
    }
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.createTheView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTheView (){
        self.view.backgroundColor = .white
        self.title = "Detail page"
        
        let table2 = UITableView(frame : .zero)
        table2.translatesAutoresizingMaskIntoConstraints = false
        table2.backgroundColor = .systemCyan
        table2.dataSource = self
        table2.dataSource = self
        
        self.view.addSubview(table2)
        
        table2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: -8).isActive = true
        table2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table2.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        table2.addSubview(self.infoLabel)
        
        infoLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        infoLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 80).isActive = true
        infoLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -80).isActive = true
        infoLabel.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        
        
        
        
        
        
        
    }
    
    

}
