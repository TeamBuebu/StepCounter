import UIKit
import AVFoundation

class SpeechSynthesizer: NSObject {
    let languageCode = "de-DE"
    var mySpeechSynthesizer:AVSpeechSynthesizer = AVSpeechSynthesizer()
    var mySpeechUtterance:AVSpeechUtterance = AVSpeechUtterance()

    
    override init() {
        super.init()
        
        mySpeechUtterance.voice = AVSpeechSynthesisVoice(language: languageCode)
    }
    
    func speak(text:String, onComplete:()->()) {
        // TODO: gebe den Text aus und rufe den onComplete-Callback auf
        
        mySpeechUtterance = AVSpeechUtterance(string: text)
        mySpeechSynthesizer.speakUtterance(mySpeechUtterance)
        
        onComplete()
    }
}
