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
var jumpHeight = 0;
var moveCount = 0
func person(m:String,j:Int){
    print(m+" ---  ")
    print(m+"|***> ")
    print(m+"|***{ ")
    print(m+" ---  ")
    print(m+"  |   ")
    print(m+" /|\\  ")
    print(m+"/ | \\ ")
    print(m+"| |  X")
    print(m+"* |  *")
    print(m+" ---  ")
    print(m+" | |  ")
    print(m+" | |  ")
    print(m+" !_!_ ")
    for _ in 1 ... j{
        print(" ")
    }
}
func personJump(m:String){
    print(m+" ---  ")
    print(m+"|***> ")
    print(m+"|***[ ")
    print(m+" ---  ")
    print(m+"  |   ")
    print(m+" /|\\  ")
    print(m+"/ | \\ ")
    print(m+"| | | ")
    print(m+"* | * ")
    print(m+" ---  ")
    print(m+"  \\ \\ ")
    print(m+"  / / ")
    print(m+" !_!_ ")
}

func backPerson(m:String, j:Int){
    print(m+"  --- ")
    print(m+" <***|")
    print(m+" }***|")
    print(m+"  --- ")
    print(m+"   |  ")
    print(m+"  /|\\ ")
    print(m+" / | \\")
    print(m+"X  | |")
    print(m+"*  | *")
    print(m+"  --- ")
    print(m+"  | | ")
    print(m+"  | | ")
    print(m+" _!_! ")
    for _ in 1 ... j{
        print(" ")
    }
}

func backPersonJump(m:String){
    print(m+"  --- ")
    print(m+" <***|")
    print(m+" ]***|")
    print(m+"  --- ")
    print(m+"   |  ")
    print(m+"  /|\\ ")
    print(m+" / | \\")
    print(m+" | | |")
    print(m+" * | *")
    print(m+"  --- ")
    print(m+" / /  ")
    print(m+" \\ \\")
    print(m+" _!_! ")
}
while(true){
    if(moveCount <= 0){
        while(moveCount < 100){
            jumpHeight = Int.random(in: 1 ... 5)
            if(toggle){
                person(m:movement,j:jumpHeight)
                usleep(250000)
                print("\u{001B}[2J")
                toggle = false
            }else{
                personJump(m:movement)
                usleep(450000)
                print("\u{001B}[2J")
                toggle = true
            }
            for _ in 1 ... jumpHeight{
                movement+=" "
            }
            moveCount+=jumpHeight
        }
    } else {
        while(moveCount > 0){
            jumpHeight = Int.random(in: 1 ... 5)
            if(toggle){
                backPerson(m:movement, j:jumpHeight)
                usleep(250000)
                print("\u{001B}[2J")
                toggle = false
            }else{
                backPersonJump(m:movement)
                usleep(450000)
                print("\u{001B}[2J")
                toggle = true
            }
            movement = ""
            for _ in 1...moveCount{
                movement+=" "

            }
            moveCount-=jumpHeight
            
        }
    }
}

