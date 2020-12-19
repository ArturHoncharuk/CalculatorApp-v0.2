import UIKit
class ViewController: UIViewController {
    var firstNumber: Double = 0;
    var secondNumber: Double = 0;
    var mathOperation: Int = 0;
    var mathSign: Bool = false;
    var errorText: String = "Error"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var labelResult: UILabel!
    @IBAction func digitsActionButton(_ sender: UIButton) {
        if mathSign == true
        {
            labelResult.text = String(sender.tag)
            mathSign = false
        } else {
        labelResult.text = labelResult.text! + String(sender.tag)
        }
        firstNumber = Double(labelResult.text!)!
    }
    
    @IBAction func logicAction(_ sender: UIButton) {
        if labelResult.text != "" && sender.tag != 10 && sender.tag != 17 {
            secondNumber = Double(labelResult.text!)!
        
        if sender.tag == 13 {
            labelResult.text = "÷";
        }
            else if sender.tag == 14 {
                labelResult.text = "×"
            }
            else if sender.tag == 15 {
                labelResult.text = "-"
            }
            else if sender.tag == 16 {
                labelResult.text = "+"
            }
            else if sender.tag == 12 {
                labelResult.text = "%"
            }
        

        mathSign = true;
        mathOperation = sender.tag;
    }
        else if sender.tag == 17 {
            if mathOperation == 13 {
                labelResult.text = String(secondNumber / firstNumber)
            }
            else if mathOperation == 14 {
                labelResult.text = String(secondNumber *  firstNumber)
            }
            else if mathOperation == 15 {
                labelResult.text = String (secondNumber - firstNumber)
            }
            else if mathOperation == 16 {
                labelResult.text = String( secondNumber + firstNumber)
            }
            else if mathOperation == 12 {
                labelResult.text = String (secondNumber * firstNumber / 100)
            }
            }
        else if sender.tag == 10 {
            labelResult.text = ""
            firstNumber = 0
            secondNumber = 0
            mathOperation = 0
            }
        if labelResult.text == nil {
            labelResult.text = errorText
        }
    
        }
    }


    



