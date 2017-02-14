

import UIKit
class TeamDetailVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamNumber: UILabel!
    @IBOutlet weak var teamAutonomous: UILabel!
    @IBOutlet weak var teamRating: UIImageView!
    @IBOutlet weak var teamPosition: UILabel!
    @IBOutlet weak var teamPassedBreakLine: UILabel!
    @IBOutlet weak var teamHighGoals: UILabel!
    @IBOutlet weak var teamPlacedGears: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if selectedTeam != nil {
            teamLogo.image = selectedTeam!.image
           teamName.text = selectedTeam!.name
            teamNumber.text = "Team \(selectedTeam!.number)"
            teamAutonomous.text = "Autonomous = \(selectedTeam!.hasAuto)"
            teamPosition.text = "Position from Boiler: \(selectedTeam!.positionFromBoiler)"
            teamPassedBreakLine.text = "Passed Break Line: \(selectedTeam!.passedBreakLine)"
            teamHighGoals.text = "High goals: \(selectedTeam!.highGoals)"
            teamPlacedGears.text = "Placed Gears: \(selectedTeam!.placedGears)"
            
            
            
            if selectedTeam!.rating == "1Stars" {
                teamRating.image = UIImage(named: "1Stars")
            } else if selectedTeam!.rating == "2Stars" {
                teamRating.image = UIImage(named: "2Stars")
            } else if selectedTeam!.rating == "3Stars" {
                teamRating.image = UIImage(named: "3Stars")
            } else if selectedTeam!.rating == "4Stars" {
                teamRating.image = UIImage(named: "4Stars")
            } else if selectedTeam!.rating == "5Stars" {
                teamRating.image = UIImage(named: "5Stars")
            }
        }
    }
    @IBAction func star1Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "1Stars")
        selectedTeam!.rating = "1Stars"
    }
    @IBAction func star2Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "2Stars")
         selectedTeam!.rating = "2Stars"
    }
    @IBAction func star3Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "3Satrs")
         selectedTeam!.rating = "3Stars"
    }
    @IBAction func star4Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "4Stars")
         selectedTeam!.rating = "4Stars"
    }
    @IBAction func star5Pressed(_ sender: Any) {
        teamRating.image = UIImage(named: "5Stars")
         selectedTeam!.rating = "5Stars"
    }
    
    @IBAction func chooseImage(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            teamLogo.image = chosenImage
            selectedTeam?.image = chosenImage
        }
        
    }
    
    
}
