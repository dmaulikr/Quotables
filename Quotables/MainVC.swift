//
//  MainVC.swift
//  Quotables
//
//  Created by Khalid Naseem on 17/07/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    let quoteArray = [ "Don't cry because it's over, smile because it happened. ~ Dr. Seuss",
                       "Be yourself; everyone else is already taken. ~ Oscar Wilde",
                       "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe. ~ Albert Einstein",
                       "Be the change that you wish to see in the world. ~ Mahatma Gandhi",
                       "In three words I can sum up everything I've learned about life: it goes on. ~ Robert Frost",
                       "If you tell the truth, you don't have to remember anything. ~ Mark Twain",
                       "Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring. ~ Marilyn Monroe",
                       "Good friends, good books, and a sleepy conscience: this is the ideal life. ~ Mark Twain",
                       "“A woman is like a tea bag; you never know how strong it is until it's in hot water.  ~ Eleanor Roosevelt",
                       "“Yesterday is history, tomorrow is a mystery, today is a gift of God, which is why we call it the present.  ~ Bil Keane",
                       "I have not failed. I've just found 10,000 ways that won't work.  ~ Thomas A. Edison",
                       "It is not a lack of love, but a lack of friendship that makes unhappy marriages.  ~ Friedrich Nietzsche",
                       "Never put off till tomorrow what may be done day after tomorrow just as well.  ~ Mark Twain",
                       "Love all, trust a few, do wrong to none.  ~ William Shakespeare, All's Well That Ends Well",
                       "If you judge people, you have no time to love them.  ~ Mother Teresa",
                       "For every minute you are angry you lose sixty seconds of happiness.  ~ Ralph Waldo Emerson",
                       "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.  ~ Lao Tzu",
                       "It is never too late to be what you might have been.  ~ George Eliot",
                       "If you can't explain it to a six year old, you don't understand it yourself.  ~ Albert Einstein",
                       "Women and cats will do as they please, and men and dogs should relax and get used to the idea.  ~ Robert A. Heinlein",
                       "Sometimes the questions are complicated and the answers are simple.  ~ Dr. Seuss",
    ]
  

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = "Press button below or shake phone for next quote"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextQuoteButton(sender: AnyObject) {
        
        let random = Int(arc4random_uniform(UInt32(quoteArray.count)))
        quoteLabel.text = quoteArray[random]
        
    }

}

