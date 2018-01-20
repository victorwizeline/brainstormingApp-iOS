//
//  ViewController.swift
//  brainstormingapp
//
//  Created by Victor Mariano Lopez Medina on 1/19/18.
//  Copyright © 2018 Brainstorming App. All rights reserved.
//

import UIKit

class HostController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var firebaseManager: FirebaseManager!
    var rooms = [Room]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listenForRooms()
    }
    
    func listenForRooms() {
        firebaseManager = FirebaseManager()
        firebaseManager.requestRooms { (rooms) in
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "room", for: indexPath) as! RoomViewCell
        let room = rooms[indexPath.row]
        cell.name.text = room.name
        return cell
    }
    
    
    @IBAction func createRoom(_ sender: UITapGestureRecognizer) {
    }
}
