import Foundation
import UIKit

var teams = [Team]()
var selectedTeam : Team?
var newTeam : Team?


//Data model        
class Team {
   
    //properties -- variables
    var name : String
    var number : Int
    var hasAuto : Bool
    var image : UIImage
    var rating : String
    var passedBreakLine: Bool
    var highGoals: Int
    var placedGears: Int
    var positionFromBoiler : Int
    
    
    // initializers
    init(name : String, number : Int, hasAuto : Bool, position : Int, image : UIImage, rating : String, passedBreakLine: Bool, highGoals: Int, placedGears: Int) {
        self.name = name
        self.rating = rating
        self.number = number
        self.hasAuto = hasAuto
        self.image = image
        self.passedBreakLine = passedBreakLine
        self.highGoals = highGoals
        self.placedGears = placedGears
        self.positionFromBoiler = position
        
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
        self.image = UIImage(named: "First-horizontal")!
        self.rating = "1Stars"
        hasAuto = false
        positionFromBoiler = 1
        passedBreakLine = false
        highGoals = 0
        placedGears = 0
        
    }
    //other methods
    
}
