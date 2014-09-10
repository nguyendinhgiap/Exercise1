//
//  WordCounter.swift
//  DemoClass
//
//  Created by techmaster on 9/9/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
infix operator == {}
class Words {
    var word: NSString
    var count: Int = 1
    init(word: String) {
        self.word = word
    }
    func increment() {
        self.count += 1
    }
}

func == (word1:Words,word2:Words){
    word1.word = word2.word
    word1.count = word2.count
}
class WordCounter: GenericVC {

    var WordCountNSort: [Words] = [Words]()
    override func viewDidLoad() {
        super.viewDidLoad()
      /*  if let plainString = self.readFileToString("data.txt") {
            self.countWord(plainString)
        }*/
       
        self.countWord("I like this. i hate that dog. Cat is fun,joke,love: is it cool?. dog,flower;dog. hate is bad hate.Love is all around. Red blue green yellow violet sexy,fun,like,like,flower,flower")
        //self.countWord("aa nn mm cc kk ee cc bb bb ee dd aa")
        //self.countWord("cc kk cc")
    }
    
    func readFileToString(textFile: String) -> String? {
        let fileNameArr = textFile.componentsSeparatedByString(".")
        if fileNameArr.count != 2 { return nil }
        
        let filePath = NSBundle.mainBundle().pathForResource(fileNameArr[0], ofType: fileNameArr[1])
        println("\(filePath)")
        
        return String.stringWithContentsOfFile(filePath!, encoding: NSUTF8StringEncoding, error: nil)
    }
    func shouldRemoveThisWord(word: String) -> Bool {
    
        let dummyWords = ["", " ","a", "all", "an", "i", "in", "is", "it", "are", "were", "he", "she", "they", "it's", "my", "his", "her", "their", "this", "that", "very", "much"]
        if contains(dummyWords, word) { return true }
        return false;
    }
    
    func countWord(inputString: String) {
        let separator = NSMutableCharacterSet(charactersInString: " .,:;?!")
                let rawWordArray = inputString.lowercaseString.componentsSeparatedByCharactersInSet(separator)
       
        /* ok nhung khong sort duoc
        let wordSet = NSCountedSet()
        for word in rawWordArray {
            if !self.shouldRemoveThisWord(word) {
                wordSet.addObject(word)
            }
        }
        
        for word in wordSet {
            self.inRa("\(word) : \(wordSet.countForObject(word))")
        }*/
        
        for word in rawWordArray {
            if !self.shouldRemoveThisWord(word) {
                self.insertWordToWordCountNSort(word)
            }
        }
        
        
        for var index1 = 0;index1 < WordCountNSort.count - 1;++index1 {
            
            for var index2 = index1 + 1; index2 < WordCountNSort.count;++index2 {
                var a = WordCountNSort[index1]
                var b = WordCountNSort[index2]
                if a.word.characterAtIndex(0) == b.word.characterAtIndex(0) {
                    
                  self.sorted(&a, word2: &b)
                    
                    
                                   }
            }
        }
       var s = WordCountNSort[0].word
        self.inRa(s)
        for item in WordCountNSort {
            self.inRa("\(item.word) : \(item.count)")
        }
        
    }
    
    func insertWordToWordCountNSort(word: String) {
        var index = 0
        if (WordCountNSort.count == 0) {
            WordCountNSort.append(Words(word: word))
            return
        }
        
        for item in WordCountNSort {
            if (word > item.word) {
                WordCountNSort.insert(Words(word: word), atIndex: index)
                return
            } else if (word == item.word) {
                item.increment()
                return
            } else if (word < item.word) {
                index++
                if (index == WordCountNSort.count) {
                    WordCountNSort.append(Words(word: word))
                }
            }
        }
    
    }
    func sorted(inout word1:Words,inout word2:Words){
        if word1.count < word2.count{
        var tg:Words = Words(word: " ")

        tg == word1
        word1 == word2
        word2 == tg
    }
    }
    func s(inout a:Int,inout b:Int){
        var tg:Int
        tg = a
        a = b
        b = tg
    }
    func hv(inout a:Int,inout b:Int){
        var tg : Int
        tg = a
        a = b
        b = tg
        
    }
    
}
