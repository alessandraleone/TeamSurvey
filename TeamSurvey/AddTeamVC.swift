

import UIKit

class AddTeamVC: UIViewController {

    @IBOutlet weak var teamNameTextField: UITextField!
    
    @IBOutlet weak var teamNumberTextField: UITextField!
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        if let newName = teamNameTextField.text,
        let numberString = teamNumberTextField.text,
            let newNumber = Int(numberString) {
            
            newTeam = Team(name: newName, number: newNumber)
            print("Created Team \(newNumber)-(newName)")
            performSegue(withIdentifier: "GotoAutonomousVC", sender: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
