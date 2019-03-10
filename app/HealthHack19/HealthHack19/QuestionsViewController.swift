//
//  QuestionsViewController.swift
//  HealthHack19
//
//  Created by Rémi Uzel on 10/03/2019.
//  Copyright © 2019 Samuel Martin. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    struct Questionaire {
        var cold_sores: Question
        var chancre: Question
        var white_patches: Question
        var dark_gums: Question
        var healthy: String
    }
    
    struct Question {
        var q: [String]
        var a: [String]
    }
    
    var form = Questionaire(
        // If there is a YES, print a[0], otherwise print a[1] after all NO.
        // Order of print:
        // If ANY Yes - a[0]
        // If ALL No - a[1]
        cold_sores: Question(
            q: ["Have the symptoms been present for more than 10 days?",
                "Do you have any active disease effecting your immune system?",
                "Have you noticed similar symptoms more than 3 or 4 times in the last year?"],
            a: ["This is not something to worry about, what you have are called cold sores and are most probably experiencing an outburst of Oral Herpes. Over 80% of the adult population is infected and experience similar symptoms. However, our questions have flagged some potential factors they may require medical attention and so we would recommend seeing a professional as soon as possible.\n Please also note, even though this is not a serious condition it is highly infectious and so you should be particularly cautious around babies and young children.",
                " This a not something to worry about, what you have are called cold sores and are most probably experiencing an outburst of Oral Herpes. Over 80% of the adult population is infected and experience similar symptoms regularly. \n If these symptoms persist for over 10 to 14 days, we would recommend seeing a medical professional.\n If you are experiencing any pain, please see a pharmacist as he will be able to prescribe some medication that may help alleviate pain and symptoms. \n Please also note, even though this is not a serious condition it is highly infectious and so you should be particularly cautious around babies and young children. \n https://www.nhs.uk/conditions/cold-sores/"]
        ),
        // Order of print:
        // q[0] Yes - a[0]
        // q[1] Yes - a[1]
        // q[2] No - a[4]
        // q[3] Yes ->
        //     q[4] Yes - a[2]
        //     q[4] No - a[3]
        chancre: Question(
            q:["Have you noticed similar sores on any other part of your body? More specifically your genital area or your hands?",
               "Have you suffered from a malaise, fever, headache or any joint pain since the first onset of your symptoms?",
               "Has this ulcer been present for more than two weeks?",
               "Have you noticed it starting to heal?"],
            a:["Please contact a medical professional as soon as possible as this may indicate a Syphilis infection and thus require urgent medical attention - https://www.nhs.uk/conditions/syphilis/",
               "Please contact a medical professional as soon as possible as this may indicate a Syphilis infection and thus require urgent medical attention - https://www.nhs.uk/conditions/syphilis/",
               "This is nothing to worry about for now, please see a pharmacist if it is causing you any particular discomfort or pain and contact a medical professional if it hasn’t disappeared within a month - https://www.nhs.uk/conditions/mouth-ulcers/",
               "This is not an urgent matter as long as none of the above symptoms appear, however we would recommend contacting a medical professional as this may be a sign of a more systematic problem. https://www.nhs.uk/conditions/mouth-ulcers/",
               "If this have not healed within 3 to 6 weeks of its first appearances please contact a medical professional. In the meantime, if you feel any particular pain or discomfort, we would recommend asking for the advice or a pharmacist https://www.nhs.uk/conditions/mouth-ulcers/"]
        ),
        // Order of prints:
        // q[0] No ->
        //    q[1] - No - a[0]
        //    q[1] - Yes - a[1]
        //        q[2] - Yes - a[2]
        //        q[2] - No - a[3]
        // q[0] Yes ->
        //    q[3] - Yes - a[4]
        //    q[3] - No ->
        //        q[4] - Yes - a[5]
        //        q[4] - No ->
        //            q[5] - Yes - a[6]
        //            q[5] - No - a[7]
        white_patches: Question(
            q:["After cleaning your mouth & tongue with a soft toothbrush do you still notice this white coating?",
               "Does it regularly come back within a couple of days?",
               "Have these patches lasted longer than two weeks?",
               "This may indicate a range of different conditions. To help us advise you further please answer the following questions:\n Are you a smoker? Have you noticed any unexplained weight loss? Has this worsened over the last 10 days?",
               "Are these white plaques limited to the tongue?",
               "Have you noticed any other problems or sores around your body? Specifically, around your hands or genital area?"],
            a:["This is nothing to worry about, if it persists for more than 2 or 3 weeks please contact a medical professional as a more thorough investigation may need to be performed.",
               "This is indicative of a condition called Oral Leukoplakia:  “Excessive cell growth in the mouth produces white patches on the tongue, this is a condition known as leukoplakia. Tobacco users are more prone to it than non-smokers.",
               "Please contact your dentist or another medical professional as this may be an early sign of oral cancer.",
               "This is nothing to worry about for now, however if these symptoms persist then please contact a medical professional",
               "Contact a medical professional as this may require a more thorough investigation to make sure this isn’t oral cancer.",
               "If these have persisted for more than 2 weeks please seek further medical attention",
               "Please seek medical advice as this may be a Syphilitic infection",
               "This is probably a condition called Oral lichen plannus – this is nothing to worry about and there is no specific treatment – it should heal itself within the next few weeks. If this is not the case please seek medical advice.\nIf this hurts and progresses further please ask a pharmacist for advice.\nThis is an infectious condition – please be careful"]
        ),
        // Order of prints
        // q[0] - Yes - a[0]
        // q[0] - No ->
        //     q[1] - Yes - a[0]
        //     q[1] - No ->
        //         q[2] - Yes - a[1]
        //         q[2] - No - a[0]
        dark_gums: Question(
            q:["Are these discolouration patches painful?",
               "Have they changed shape, size or colour?",
               "Has this discolouration on your gums directly followed a dentist appointment or a specific mouth trauma?"],
            a:["Please seek medical advice as soon as possible as you require further testing to make sure this is not a serious problem.",
               "This is probably a bruising or an amalgam tattoo (due to dentist fillings) and can wait until your next dentist appointment for more specific diagnosis – however if you notice a change in size, colour or shape please seek faster medical advice and testing."]
        ),
        healthy: "our system has noot detected any anoomalies. If you are still woried, please contact your pharmacist for further recommendations."
    )
    
    
    
    @IBOutlet weak var questionTxt: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func YesButton(_ sender: UIButton) {
        
    }
    @IBAction func NoButton(_ sender: UIButton) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
