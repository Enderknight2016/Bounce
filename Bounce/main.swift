//
//  main.swift
//  Bounce
//
//  Created by Nicholas LaBelle on 2/18/20.
//  Copyright © 2020 Nicholas LaBelle. All rights reserved.
//

import Foundation
var toggle = true
var movement = ""
var moveCount = 0
func person(m:String){
    print(m+" --- ")
    print(m+"|***|")
    print(m+"|***|")
    print(m+" --- ")
    print(m+"  |  ")
    print(m+" /|\\ ")
    print(m+"/ | \\")
    print(m+"| | |")
    print(m+"* | *")
    print(m+" --- ")
    print(m+" | | ")
    print(m+" | | ")
    print(m+" !_!_")
    print(m+"     ")
    print(m+"     ")
}
func personJump(m:String){
    print(m+" --- ")
    print(m+"|***|")
    print(m+"|***|")
    print(m+" --- ")
    print(m+"  |  ")
    print(m+" /|\\ ")
    print(m+"/ | \\")
    print(m+"| | |")
    print(m+"* | *")
    print(m+" --- ")
    print(m+"  \\ \\")
    print(m+"  / /")
    print(m+" !_!_")
}

func backPerson(m:String){
    print(m+" --- ")
    print(m+"|***|")
    print(m+"|***|")
    print(m+" --- ")
    print(m+"  |  ")
    print(m+" /|\\ ")
    print(m+"/ | \\")
    print(m+"| | |")
    print(m+"* | *")
    print(m+" --- ")
    print(m+" | | ")
    print(m+" | | ")
    print(m+"_!_! ")
    print(m+"     ")
    print(m+"     ")
}

func backPersonJump(m:String){
    print(m+" --- ")
    print(m+"|***|")
    print(m+"|***|")
    print(m+" --- ")
    print(m+"  |  ")
    print(m+" /|\\ ")
    print(m+"/ | \\")
    print(m+"| | |")
    print(m+"* | *")
    print(m+" --- ")
    print(m+"/ /  ")
    print(m+"\\ \\")
    print(m+"_!_! ")
}
while(true){
    if(moveCount == 0){
        while(moveCount < 100){
            
            if(toggle){
                person(m:movement)
                usleep(200000)
                print("\u{001B}[2J")
                toggle = false
            }else{
                personJump(m:movement)
                usleep(200000)
                print("\u{001B}[2J")
                toggle = true
            }
            movement+=" "
            moveCount+=1
        }
    } else {
        while(moveCount > 0){
            if(toggle){
                backPerson(m:movement)
                usleep(200000)
                print("\u{001B}[2J")
                toggle = false
            }else{
                backPersonJump(m:movement)
                usleep(200000)
                print("\u{001B}[2J")
                toggle = true
            }
            movement = ""
            for _ in 1...moveCount{
                movement+=" "

            }
            moveCount-=1
            
        }
    }
}

