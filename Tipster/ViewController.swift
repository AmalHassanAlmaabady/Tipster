
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultNumber: UILabel!
    @IBOutlet weak var numberSeven: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var c: UIButton!
    @IBOutlet weak var numberThree: UIButton!
    @IBOutlet weak var numberTwo: UIButton!
    @IBOutlet weak var numberOne: UIButton!
    @IBOutlet weak var numberSix: UIButton!
    @IBOutlet weak var numberFive: UIButton!
    @IBOutlet weak var numberFour: UIButton!
    @IBOutlet weak var numberNine: UIButton!
    @IBOutlet weak var numberEight: UIButton!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var groupSlider: UISlider!
    @IBOutlet weak var groupNumber: UILabel!
    
    @IBOutlet weak var number1Of1: UILabel!
    @IBOutlet weak var number2Of1: UILabel!
    @IBOutlet weak var number1Of2: UILabel!
    @IBOutlet weak var number2Of2: UILabel!
    @IBOutlet weak var number1Of3: UILabel!
    @IBOutlet weak var number2Of3: UILabel!
    
    @IBOutlet weak var firstPercentage: UILabel!
    @IBOutlet weak var secondPercentage: UILabel!
    @IBOutlet weak var thirdercentage: UILabel!
    
    var tipNumber = 0.00
    var groupSizeNumber = 0.00
    var result = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstPercentage.text = String(Int(tipSlider.value)) + "%"
        secondPercentage.text = String(Int(tipSlider.value + 5)) + "%"
        thirdercentage.text = String(Int(tipSlider.value + 10)) + "%"

        groupNumber.text = String(Int(groupSlider.value))
    }
    
    
    @IBAction func numberSevenAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("7")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "7"
        }
        percentage()
        total()
    }
    
    @IBAction func numberEightAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("8")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "8"
        }
        percentage()
        total()
    }

    @IBAction func numberNineAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("9")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "9"
        }
        percentage()
        total()
    }
    
    @IBAction func numberFourAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("4")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "4"
        }
        percentage()
        total()
    }
    
    @IBAction func numberFiveAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("5")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "5"
        }
        percentage()
        total()
    }
    
    @IBAction func numberSixAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("6")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "6"
        }
        percentage()
        total()
    }
    
    @IBAction func numberOneAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("1")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "1"
        }
        percentage()
        total()
    }
    
    @IBAction func numberTwoAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("2")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "2"
        }
        percentage()
        total()
    }
    
    @IBAction func numberThreeAction(_ sender: Any) {
        if resultNumber.text == "0"{
            resultNumber.text = ("3")
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "3"
        }
        percentage()
        total()
    }
    
    @IBAction func cAction(_ sender: Any) {
        resultNumber.text = "0"
        percentage()
        total()
    }
    
    @IBAction func zeroAction(_ sender: Any) {
        if resultNumber.text == "0"{
            return
        }else{
            resultNumber.text = (resultNumber.text ?? "") + "0"
        }
        percentage()
        total()
    }
    
    @IBAction func dotAction(_ sender: Any) {
        resultNumber.text = (resultNumber.text ?? "") + "."
        percentage()
        total()
    }
    
    
    @IBAction func tipSliderAction(_ sender: Any) {
        if resultNumber.text == "0"{
        }
        if Int(tipSlider.value) <= 100 && Int(tipSlider.value) + 5 <= 100 && Int(tipSlider.value) + 10 <= 100{
            firstPercentage.text = String(Int(tipSlider.value)) + "%"
            secondPercentage.text = String(Int(tipSlider.value + 5)) + "%"
            thirdercentage.text = String(Int(tipSlider.value + 10)) + "%"
        }else{
            return
        }
        percentage()
        total()
    }
    
    @IBAction func groupSliderAction(_ sender: Any) {
        groupNumber.text = String(Int(groupSlider.value))
        
        percentage()
        total()
    }
    
    func percentage (){
        number1Of1.text = String(format: "%.2f", Double(Int(tipSlider.value)) / 100 * (Double(resultNumber.text!) ?? 0.00) / Double(Int(groupSlider.value)))
        number1Of2.text = String(format: "%.2f", Double(Int(tipSlider.value) + 5) / 100 * (Double(resultNumber.text!) ?? 0.00) / Double(Int(groupSlider.value)))
        number1Of3.text = String(format: "%.2f", Double(Int(tipSlider.value) + 10) / 100 * (Double(resultNumber.text!) ?? 0.00) / Double(Int(groupSlider.value)))
    }
    
    func total () {
        
        let beforeTotalOf1 = Double(Int(tipSlider.value)) / 100 * (Double(resultNumber.text!) ?? 0.00) + (Double(resultNumber.text!) ?? 0.00)
        let beforeTotalOf2 = Double(Int(tipSlider.value) + 5) / 100 * (Double(resultNumber.text!) ?? 0.00) + (Double(resultNumber.text!) ?? 0.00)
        let beforeTotalOf3 = Double(Int(tipSlider.value) + 10) / 100 * (Double(resultNumber.text!) ?? 0.00) + (Double(resultNumber.text!) ?? 0.00)
        
        let totalOf1 = beforeTotalOf1 / Double(Int(groupSlider.value))
        let totalOf2 = beforeTotalOf2 / Double(Int(groupSlider.value))
        let totalOf3 = beforeTotalOf3 / Double(Int(groupSlider.value))
        
        number2Of1.text = String(format: "%.2f", totalOf1)
        number2Of2.text = String(format: "%.2f", totalOf2)
        number2Of3.text = String(format: "%.2f", totalOf3)

    }
    
}

