//
//  ViewController9.swift
//  ChillChatApp2
//
//  Created by Scholar on 8/18/22.
//

import UIKit

class ViewController9: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table:UITableView!
    @IBOutlet var label: UILabel!
    
    var models: [(title: String,note: String)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Journal"
    
    }
    @IBAction func didTapNewNote(){
        guard let vc = storyboard?.instantiateViewController(identifier: "new") as? EntryViewController else{
                return
        }
        vc.title = "New Journal Entry"
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.completion = { noteTitle, note in self.models.append((title: noteTitle, note: note))
            self.navigationController?.popToRootViewController(animated: true)
            self.label.isHidden = true
            self.table.isHidden = false
            
            
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return models.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = models[indexPath.row].title
    cell.detailTextLabel?.text = models[indexPath.row].note

    return cell
}

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
    
        let model = models[indexPath.row]
    //Show note controller
    
        guard let vc = storyboard?.instantiateViewController(identifier: "journal")as? NoteViewController else{
            return
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title = "Journal"
        vc.noteTitle = model.title
        vc.note = model.note
        navigationController?.pushViewController(vc,animated: true)



    }
}
