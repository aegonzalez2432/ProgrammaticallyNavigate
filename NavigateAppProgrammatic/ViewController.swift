//
//  ViewController.swift
//  NavigateAppProgrammatic
//
//  Created by Consultant on 11/7/22.
//

import UIKit

class ViewController: UIViewController {

    var data: [String] = ["Michael Jordan", "Scottie Pippen", "Derrick Rose", "Artis Gilmore", "Bob Love", "Chet Walker", "Jerry Sloan", "Jimmy Butler", "Horace Grant", "Dennis Rodman", "Joakim Noah", "Toni Kukoc", "Luol Deng", "Norm Van Lier", "Reggie Theus", "Kirk Hinrich", "Ben Gordon", "B.J. Armstrong", "Orlando Woolridge", "Steve Kerr", "John Paxson", "Bill Cartwright", "Tom Boerwinkle", "Taj Gibson", "Bob Boozer", "David Greenwood", "Pau Gasol", "Elton Brand", "Clifford Ray", "Charles Oakley"]
    var about: [String] = ["The GOAT, any other argument is invalid", "The GOAT's right hand man, so good", "One of my fav players to watch growing up. Unstoppable force", "Mr. Fro man was pretty good, before my time but still a dawg", "Another mans that is very high praised in Chicago", "Chet was pretty good, but I think he got placed a little higher than he shouldve", "Jerry is in his rightful place, very good and very well known", "Jimmy Buckets was the hero we needed after D.Rose got injured. He really stepped his game up for the team and put the directionless team on his back", "Horace, the big 4 eyes was a solid presence on Jordans championship team. Definitely deserves to be here", "Dennis should be placed higher, definitely an underrated presence. The man was a bulldog", "Joakim was D.Rose's right hand man. The two of them got a lot of work done. Very animated player, loved watching him play.", "Toni was a solid player, got a lot of hate from his teammates due to internal conflicts with the organization but he deserves a spot up here", "Luol was such a solid player that got less credit than he deserved. Silent assassin", "Dont know much about Norm but his name makes him sound like he should have a different profession", "Reggie needs more veggies, should not be up here", "CAPTAIN KIRK: this man was a solid guard for the bulls when we were not so good. Kirkie gets all my love, def deserves a spot here", "Great shooter, was almost automatic", "Okay, not going to lie, I think he changed his name on purpose...", "Orlando is not a person im familiar with, after some research, hes alright i guess. he can stay.", "This man is known for making a game winning shot for the finals championship. Sharpshooter and now coach of the GSW. He gets a spot.", "This man could defend just about anybody and you wouldnt have to worry too much about him. Not great offensively but on defence, monster", "Billy boy was alright i guess", "Boerwinkle was a pretty good big man", "Solid presence in the paint. Very animated player and got work done.", "Thought he might be related to Carlos Boozer, sadly is not. That would be a cool father son moment.", "Greenwood i have never heard of before this assignment, not going to lie", "Pau!!! This Spanish machine was a good big man that helped us out a lot, even though he didnt stay with the bulls long", "Idk who this is", "Okay now were getting to the scrubbs.", "This man shouldnt be here. Some better options for the 30 spot for sure."]
    var playerRating: [Double] = [100, 97, 95, 94, 93.5, 93, 92.7, 92.4, 91.5, 91.4, 91, 90, 89.8, 89.5, 89.4, 89, 88.7, 88, 87.8, 87.6, 87.5, 87.4, 87, 86.9, 86.7, 86.5, 86.4, 86.1, 86, 85]
    var ppg: [Double] = [30.12, 16.1, 25, 17.1, 17.6, 18.2, 14, 17.8, 11.2, 7.3, 8.8, 11.6, 14.8, 11.8, 18.5, 10.9, 14.9, 9.8, 16, 6, 7.2, 13.2, 7.2, 9, 14.8, 10.2, 17, 15.9, 7.4, 9.7]
    
    var sendData: String = ""
    
    var tableView: UITableView?
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.setUpUI()
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        self.setUpUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setUpUI()
        // Do any additional setup after loading the view.
    }
    
    private func setUpUI(){
        self.view.backgroundColor = .systemRed
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .systemBlue
        table.dataSource = self
        //register cell
        //table.register(UITableViewCell.self, forCellReuseIdentifier: "SampleCell")
        let navController = NavigationDetailViewController()
        
        table.register(ProgrammaticTableViewCell.self, forCellReuseIdentifier: "ProgCell")
        //table.register(UITableViewCell.self, forCellReuseIdentifier: "NavigationDetailViewController")
        //table.register(ProgrammaticTableViewCell.self, forCellReuseIdentifier: "NavigationDetailViewController")
        table.delegate = self
        
        self.view.addSubview(table)
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        

        
        //create instance of NavigationDetailViewController
        

        
        
//        detailVC.nameString = self.about[0]
//        self.navigationController?.pushViewController(detailVC, animated: true)
        
        
//        table.register(navController, forCellReuseIdentifier: "NavigationDetailViewController")
//        table.delegate = self
        
        self.tableView = table
    }
    



}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgCell", for: indexPath) as? ProgrammaticTableViewCell else {
            fatalError("Something went wrong")
        }
        //cell.textLabel?.text = "\(indexPath)"
        cell.progImageView.image = UIImage(named: "\(self.data[indexPath.row])")
        cell.progLabel.text = self.data[indexPath.row]
        cell.progressBar.setProgress(Float((self.playerRating[indexPath.row])/100), animated: false)
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let navController = NavigationDetailViewController()
        navController.infoLabel.text = about[indexPath.row]
        self.navigationController?.pushViewController(navController, animated: true)
        //navigationController, ViewCOntroller
        
//        self.sendData = about[indexPath.row]
        print("The selected path is \(indexPath)")
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let info = segue.destination as! NavigationDetailViewController
//        info.nameString = self.sendData
//    }
}

