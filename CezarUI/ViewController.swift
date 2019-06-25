
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var keyText: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    let mass = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cezarPush(_ sender: UIButton) {
        labelResult.text = ""
        
        for value in textLabel?.text ?? "" {
            
            if let code = getCodeOfChar(value) {
                let key = getCodeOfChar((keyText.text?.first)!) ?? 0
                let res = (code + key) % mass.count
                
                labelResult.text! += String(Array(mass)[res])
            } else {
                labelResult.text! += String(value)
            }
        }
    }
    
    
    
    func getCodeOfChar(_ char: Character) -> Int? {
        for i in 0..<mass.count {
            if char == Array(mass)[i] {
                return i
            }
        }
        return nil
    }
}

