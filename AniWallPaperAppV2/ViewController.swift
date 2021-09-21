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

// L. Snippit
//print(rightGestureImage)
//MainViewPicture.image = imageArray[rightGestureImage]
//rightGestureImage = (rightGestureImage + 1) % imageArray.count

import UIKit

class ViewController: UIViewController {
    
    let imageArray = [#imageLiteral(resourceName: "AnimePicture2"), #imageLiteral(resourceName: "EP43D2jU8AEoKKt"), #imageLiteral(resourceName: "AnimePicture1"), #imageLiteral(resourceName: "EcKixJmU0AAorf8"), #imageLiteral(resourceName: "Image1"), #imageLiteral(resourceName: "EsVEqQiUcAAnbJi"), #imageLiteral(resourceName: "AnimePicture2-1"), #imageLiteral(resourceName: "Ei_icTzVoAAJYuq")]
    var rightGestureImage = Int()
    var leftGestureImage = Int()
    @IBAction func CGesture(_ sender: Any) {
        
    }
    
    // The code will get the pictures from the image litral array and bring them to the front, so they can be played in order.
    @IBAction func RightGesture(_ gestureRecognizer : UISwipeGestureRecognizer) {
        // To make sure that the gesture is working
        print("Right Gesture Working")
        
        if rightGestureImage < leftGestureImage {
            print(rightGestureImage)
            MainViewPicture.image = imageArray[rightGestureImage]
            rightGestureImage += 1
            
        } else {
            // This gets executed when rightGestureImage is equal to the last index in the imageArray
            print(rightGestureImage)
            MainViewPicture.image = imageArray[rightGestureImage]
            rightGestureImage = 0
            
        }
    }
    
    @IBAction func LeftGesture(_ gestureRecognizer : UISwipeGestureRecognizer) {
        // To make sure that the gesture is working
        print("Left Gesture Working")
        
        if rightGestureImage > 0 {
            rightGestureImage -= 1
            MainViewPicture.image = imageArray[rightGestureImage]
            print(rightGestureImage)
        }
        else if rightGestureImage == 0 {
            print(rightGestureImage)
            rightGestureImage = leftGestureImage
            MainViewPicture.image = imageArray[rightGestureImage]
        }
    }
    
    @IBOutlet weak var MainViewPicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        MainViewPicture.image = imageArray[Int.random(in: 0...5)]
        // To prevent from going into a infintie number (setting a bound here).
        rightGestureImage = 0
        leftGestureImage = imageArray.count-1
        // MainViewPicture.image = imageArray[0]
        //        getRandomImage()
    }
    
    // The Function to get the imagees from the internet aka API
    //    func getRandomImage() {
    //        let urlString = "https://api.waifu.pics/sfw/waifu"
    //        let url = URL(string: urlString)!
    //
    //        guard let data = try? Data(contentsOf: url) else {
    //            return
    //        }
    //    }
    
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
        print("Download Button Being poressed")
    }
}

