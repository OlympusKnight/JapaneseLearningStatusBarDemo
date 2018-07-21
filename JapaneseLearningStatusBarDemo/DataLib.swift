//
//  DataLib.swift
//  JapaneseLearningStatusBarDemo
//
//  Created by OlympusKnight on 2018/7/19.
//  Copyright © 2018 OlympusKnight. All rights reserved.
//

import Foundation

struct dataConfiguration {
    let words = ["ア", "イ", "ウ", "エ", "オ",
                 "カ", "キ", "ク", "ケ", "コ",
                 "サ", "シ", "ス", "セ", "ソ",
                 "タ", "チ", "ツ", "テ", "ト",
                 "ナ", "ニ", "ヌ", "ネ", "ノ",
                 "ハ", "ヒ", "フ", "ヘ", "ホ",
                 "マ", "ミ", "ム", "メ", "モ",
                 "ヤ", "ユ", "ヨ",
                 "ラ", "リ", "ル", "レ", "ロ",
                 "ワ", "ヲ",
                 "ン"]
    
    let pronounceArray = ["a", "i", "u", "e", "o",
                          "ka", "ki", "ku", "ke", "ko",
                          "sa", "shi", "su", "se", "so",
                          "ta", "chi", "tsu", "te", "to",
                          "na", "ni", "nu", "ne", "no",
                          "ha", "hi", "hu", "he", "ho",
                          "ma", "mi", "mu", "me", "mo",
                          "ya", "yu", "yo",
                          "ra", "ri", "ru", "re", "ro",
                          "wa", "wo",
                          "n"]
    
    let lessonArray = ["L1", "L2", "L3", "L4", "L5", "L6",
                       "L7", "L8", "L9", "L10", "L11", "L12",
                       "L13", "L14", "L15", "L16", "L17", "L18",
                       "L19", "L20", "L21", "L22", "L23", "L24",
                       "L25", "L26", "L27", "L28", "L29", "L30",
                       "L31", "L32", "L33", "L34", "L35", "L36",
                       "L37", "L38", "L39", "L40", "L41", "L42",
                       "L43", "L44", "L45", "L46", "L47", "L48",
                       "L49", "L50", "L51", "L52", "L53", "L54",
                       "L55", "L56", "L57", "L58", "L59", "L60", ]
    
    
}

var dataSource = dataConfiguration.init()
