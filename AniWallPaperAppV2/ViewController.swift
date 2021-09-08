//
//
//  AniWallPaperAppV2
//  Created by Adam O. on 1/31/21.
//

//////snippit
//let imageArray = [#imageLiteral(resourceName: "AnimePicture2-1"), #imageLiteral(resourceName: "AnimePicture1"), #imageLiteral(resourceName: "ErNBko1VEAAxdeL"), #imageLiteral(resourceName: "EcKixJmU0AAorf8"), #imageLiteral(resourceName: "Image1"), #imageLiteral(resourceName: "EsVEqQiUcAAnbJi")]
////        imageArray.shuffle()
//let image = imageArray[Int.random(in: 0...5)]
//MainViewPicture.image = image

import UIKit

class ViewController: UIViewController {
    
    var imageArray = [#imageLiteral(resourceName: "AnimePicture2"), #imageLiteral(resourceName: "EP43D2jU8AEoKKt"), #imageLiteral(resourceName: "AnimePicture1"), #imageLiteral(resourceName: "EcKixJmU0AAorf8"), #imageLiteral(resourceName: "Image1"), #imageLiteral(resourceName: "EsVEqQiUcAAnbJi"), #imageLiteral(resourceName: "AnimePicture2-1"), #imageLiteral(resourceName: "Ei_icTzVoAAJYuq")]
    var imageDisplay = Int()
    var imageDisplayMax = Int()
    @IBAction func CGesture(_ sender: Any) {
        
    }
    // The code will get the pictures from the image litral array and bring them to the front, so they can be played in order.
    @IBAction func LeftGesture(_ gestureRecognizer : UISwipeGestureRecognizer) {
        print("Right Gesture Working")
        
        print(imageDisplay)
        MainViewPicture.image = imageArray[imageDisplay]
        imageDisplay = (imageDisplay + 1) % imageArray.count

//        if imageDisplay < imageDisplayMax {
//            print(imageDisplay)
//            MainViewPicture.image = imageArray[imageDisplay]
//            imageDisplay += 1
//
//        } else {
//            // this gets executed when imageDisplay is equal to the last index in the imageArray
//            print(imageDisplay)
//            MainViewPicture.image = imageArray[imageDisplay]
//            imageDisplay = 0
//
//        }
    }
    
    // TODO: make the left gesture go back to the previues picture.
    // The code will get the pictures from the image litral array and bring them to the front, so they can be played in order.
    @IBAction func RightGesture(_ gestureRecognizer : UISwipeGestureRecognizer) {
        print("Left")
        
       //MainViewPicture.image = imageArray[imageDisplay]
        if imageDisplay > 0 {
            imageDisplay -= 1
            MainViewPicture.image = imageArray[imageDisplay]
            print(imageDisplay)
        }
        
        else if imageDisplay == 0 {
            print(imageDisplay)
            imageDisplay = imageDisplayMax
            MainViewPicture.image = imageArray[imageDisplay]
        }
    }
    
    @IBOutlet weak var MainViewPicture: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        MainViewPicture.image = imageArray[Int.random(in: 0...5)]
        // To prevent from going into a infintie number (setting a bound here).
//        imageDisplay = 0
//        imageDisplayMax = imageArray.count-1
       // MainViewPicture.image = imageArray[0]

        getRandomImage()
        
    }
    
    // The Function to get the imagees from the internet aka API
    func getRandomImage() {
        let urlString = "https://api.waifu.pics/sfw/waifu"
        let url = URL(string: urlString)!
        
        guard let data = try? Data(contentsOf: url) else {
            return
        }
    }
    //TODO: find something else to add here instead of adding an info button!
    @IBAction func infoButton(_ sender: Any) {
        print("Info Button Being Pressed")
        
    }
    // TODO: a pop up that would have the user inter a comment, and like the picture.
    @IBAction func heartButton(_ sender: Any) {
        print("Heart Button Being Pressed")
        
    }
    //TODO: let the user download the picture to the device.
    @IBAction func downloadButton(_ sender: Any) {
        print("Download Button Being poressed!")
    }
    
    
}

