//
//  TaskListTableViewController.swift
//  GoodList
//


import Foundation
import UIKit

class TaskListTableViewController: UITableViewController, AddTaskViewControllerDelegate {
    
    private var tasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .gray
        setupUI()
    }
    
    // a delegate method used to append the tasks
    func addTaskViewControllerDidSave(task: Task, viewController: UIViewController) {
        viewController.dismiss(animated: true, completion: nil)
        self.tasks.append(task)
        print(task)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    // Used for setting up the Tablview
    private func setupUI() {
        self.title = "GoodList"
        self.navigationController?.navigationBar.prefersLargeTitles = true 
        self.navigationController?.navigationBar.tintColor = .green
        let addTaskBarButton = UIBarButtonItem.barButtonItemForAddTask(target: self, selector: #selector(addTaskBarButtonPressed))
        self.navigationItem.rightBarButtonItem = addTaskBarButton
    }
    

    @objc func addTaskBarButtonPressed() {
        let addTaskVC = AddTaskViewController()
        addTaskVC.delegate = self
        let navC = UINavigationController()
        navC.pushViewController(addTaskVC, animated: true)
        self.present(navC, animated: true, completion: nil)
    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = self.tasks[indexPath.row]
        print("Anoop_task:\(task)")
//        var cell: TaskTableViewCell!
        var cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell") as? TaskTableViewCell
        if cell == nil {
            cell = TaskTableViewCell(style: .default, reuseIdentifier: "TaskTableViewCell")
        }
        cell!.titleLabel.text = task.title
        cell!.priorityView.setTitle(task.priority.displayTitle, for: .normal)
        return cell!
    }
}
