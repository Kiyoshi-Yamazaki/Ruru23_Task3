//
//  ViewController.swift
//  Task3App
//
//  Created by 山崎喜代志 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwichBtn: UISwitch!
    @IBOutlet private weak var rightSwichBtn: UISwitch!
    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        leftTextField.keyboardType = UIKeyboardType.numberPad
        rightTextField.keyboardType = UIKeyboardType.numberPad

        leftSwichBtn.setOn(false, animated: false)
        rightSwichBtn.setOn(false, animated: false)
    }

    @IBAction func culculatedBtn(_ sender: Any) {
        // switchの状態を確認して合算しLabelに表示
        let leftNum  = culculate(btnSwitch: leftSwichBtn, textField: leftTextField)
        let rightNum = culculate(btnSwitch: rightSwichBtn, textField: rightTextField)
        let totalNum = leftNum + rightNum
        leftLabel.text = String(leftNum)
        rightLabel.text = String(rightNum)
        totalLabel.text = String(totalNum)
    }

    func culculate(btnSwitch: UISwitch, textField: UITextField ) -> Int {
        var num = Int(textField.text ?? "") ?? 0

        if btnSwitch.isOn {num = -num}
        return num
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
