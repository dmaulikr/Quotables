//
//  MainVC.swift
//  Quotables
//
//  Created by Khalid Naseem on 17/07/2016.
//  Copyright © 2016 Khalid Naseem. All rights reserved.
//

import UIKit

import AVFoundation

class MainVC: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    
    let quoteArray = [ "Don't cry because it's over, smile because it happened. ~ Dr. Seuss",
                       "Be yourself; everyone else is already taken. ~ Oscar Wilde",
                       "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe. ~ Albert Einstein",
                       "Be the change that you wish to see in the world. ~ Mahatma Gandhi",
                       "In three words I can sum up everything I've learned about life: it goes on. ~ Robert Frost",
                       "If you tell the truth, you don't have to remember anything. ~ Mark Twain",
                       "Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring. ~ Marilyn Monroe",
                       "Good friends, good books, and a sleepy conscience: this is the ideal life. ~ Mark Twain",
                       "A woman is like a tea bag; you never know how strong it is until it's in hot water.  ~ Eleanor Roosevelt",
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
                       "Everything you can imagine is real.  ~ Pablo Picasso",
                       "I'm not afraid of death; I just don't want to be there when it happens.  ~ Woody Allen",
                       "If you want your children to be intelligent, read them fairy tales. If you want them to be more intelligent, read them more fairy tales.  ~ Albert Einstein",
                       "It is impossible to live without failing at something, unless you live so cautiously that you might as well not have lived at all - in which case, you fail by default.  ~ J.K. Rowling",
                       "Logic will get you from A to Z; imagination will get you everywhere.  ~ Albert Einstein",
                       "The more that you read, the more things you will know. The more that you learn, the more places you'll go.  ~ Dr. Seuss, I Can Read With My Eyes Shut!",
                       "Not all of us can do great things. But we can do small things with great love.  ~ Mother Teresa",
                        "To the well-organized mind, death is but the next great adventure.  ~ J.K. Rowling, Harry Potter and the Sorcerer's Stone",
                        "The difference between genius and stupidity is: genius has its limits.  ~ Alexandre Dumas-fils",
                        "If you can make a woman laugh, you can make her do anything.  ~ Marilyn Monroe",
                        "Life isn't about finding yourself. Life is about creating yourself.  ~ George Bernard Shaw",
                        "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.  ~ Helen Keller",
                        "Life is like riding a bicycle. To keep your balance, you must keep moving.  ~ Albert Einstein",
                        "Do one thing every day that scares you.  ~ Eleanor Roosevelt",
                        "If I had a flower for every time I thought of you...I could walk through my garden forever.  ~ Alfred Tennyson",
                        "Success is not final, failure is not fatal: it is the courage to continue that counts.  ~ Winston S. Churchill",
                        "Things change. And friends leave. Life doesn't stop for anybody.  ~ Stephen Chbosky, The Perks of Being a Wallflower",
                        "Anyone who has never made a mistake has never tried anything new.  ~ Albert Einstein",
                        "To die will be an awfully big adventure.  ~ J.M. Barrie, Peter Pan",
                        "But better to get hurt by the truth than comforted with a lie.  ~ Khaled Hosseini",
                        "Choose a job you love, and you will never have to work a day in your life.  ~ Anonymous",
                        "In order to be irreplaceacle, one must always be different.  ~ Coco Chanel",
                        "Success is most often achieved by those who don't know that failure is inevitable. ~ Coco Chanel",
                        "If you are not willing to risk the usual, you will have to settle for the ordinary.  ~ Jim Rohn",
                        "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.  ~ Albert Einstein",
                        "All our dreams can come true if we have the courage to pursue them.  ~ Walt Disney",
                        "It does not matter how slowly you go, so long as you do not stop.  ~ Confucius",
                        "Someone is sitting in the shade today because someone planted a tree a long time ago. ~ Warren Buffett",
                        "Whenever you see a successful person, you only see the public glories, never the private sacrifices to reach them. ~ Vaibhav Shah",
                        "Once you choose hope, anything's possible.  ~ Christopher Reeve",
                        "Try not to become a person of success, but rather try to become a person of value.  ~ Albert Einstein",
                        "Great minds discuss ideas; average minds discuss events; small minds discuss people.  ~ Eleanor Roosevelt",
                        "The best revenge is massive success.  ~ Frank Sinatra",
                        "The difference between winning and losing is most often not quitting.  ~ Walt Disney",
                        "When you cease to dream you cease to live.  ~ Malcolm Forbes",
                        "Failure is another steppingstone to greatness.  ~ Oprah Winfrey",
                         "To me, business isn't about wearing suits or pleasing stockholders. It's about being true to yourself, your ideas and focusing on the essentials.  ~ Richard Branson",
                         "You must expect great things of yourself before you can do them.  ~ Michael Jordan",
                         "Don't limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.  ~ Mary Kay Ash",
                         "Success is the sum of small efforts, repeated day-in and day-out.  ~ Robert Collier",
                         "The biggest risk is not taking any risk... In a world that's changing really quickly, the only strategy that is guaranteed to fail is not taking risks.  ~ Mark Zuckerberg",
                         "Don't worry about failure; you only have to be right once.  ~ Drew Houston",
                         "If you love what you do and are willing to do what it takes, it's within your reach. And it'll be worth every minute you spend alone at night, thinking and thinking about what it is you want to design or build.  ~ Steve Wozniak",
                         "In the midst of movement and chaos, keep stillness inside of you.  ~ Deepak Chopra",
                         "As we look ahead into the next century, leaders will be those who empower others.  ~ Bill Gates",
                         "Many of life's failures are people who did not realize how close they were to success when they gave up.  ~ Thomas A. Edison",
                         ]
  

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = "Press button below or shake phone for next quote!!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextQuoteButton(sender: AnyObject) {
        
        let random = Int(arc4random_uniform(UInt32(quoteArray.count)))
        quoteLabel.text = quoteArray[random]
        
        // play sound here:
        playSound(beep)
        
    }
    
    // MARK:  Motion Detection
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        nextQuoteButton(UIEvent)
    }
    
    
    
    func playSound (sound: Sound) {
        let dispatchQueue =
            dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        
        dispatch_async(dispatchQueue, {[weak self] in
            let mainBundle = NSBundle.mainBundle()
            
            /* Find the location of our file to feed to the audio player */
            let filePath = mainBundle.pathForResource(sound.fileName, ofType:sound.fileExtension)
            
            if let path = filePath{
                let fileData = NSData(contentsOfFile: path)
                
                var error:NSError?
                
                do {
                    /* Start the audio player */
                    self!.audioPlayer = try AVAudioPlayer(data: fileData!)
                } catch let error1 as NSError {
                    error = error1
                    self!.audioPlayer = nil
                } catch {
                    fatalError()
                }
                
                /* Did we get an instance of AVAudioPlayer? */
                if let player = self!.audioPlayer {
                    /* Set the delegate and start playing */
                    player.delegate = self
                    if player.prepareToPlay() && player.play(){
                        /* Successfully started playing */
                    } else {
                        /* Failed to play */
                    }
                } else {
                    /* Failed to instantiate AVAudioPlayer */
                }
            }
            
            })
    }


}

