//
//  AnimationBallView.swift
//  ComunicationUIKIt-SwiftUI
//
//  Created by Raffaele Martone on 28/03/23.
//

import SwiftUI

struct AnimationBallView: View {
    @State var xpos : Double = 0
    @State var gesture : String = ""
    @State var andata = true
    @State var scaleFlag : Double = 0
    @State var doubleDown : Bool = false
    @State var upOutside : Bool = false
    let timer = Timer
        .publish(every: 0.05, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        AnimationBall(xpos: xpos, scaleFlag: scaleFlag, doubleDown: doubleDown, upOutside: upOutside)
            .onReceive(NotificationCenter.default.publisher(for: NSNotification.Name("StringToPass"))) { notification in
                if let string = notification.userInfo?["string"] as? String {
                    gesture = string
                }
            }
            .onReceive(timer) { time in
                if gesture == "Touch Down"{
                    if andata{
                        xpos = xpos + 10
                        if xpos == 20{
                            andata = false
                        }
                    }else{
                        xpos = xpos - 10
                        if xpos == -20 {
                            andata = true
                        }
                    }
                }
                if gesture != "Touch Down" {
                    xpos = 0
                }
                if gesture == "Touch Drag Inside"{
                    scaleFlag = 1.5
                }
                if gesture != "Touch Drag Inside" {
                    scaleFlag = 1
                }
                if gesture == "Touch Drag Outside"{
                    scaleFlag = 2.5
                }
                if gesture == "Touch Up Outside"{
                    scaleFlag = 3
                    upOutside = true
                }
                if gesture != "Touch Up Outside"{
                    upOutside = false
                }
                if gesture == "Touch Up Inside"{
                    scaleFlag = 0.7
                }
                if gesture == "Touch Down Repeat"{
                    doubleDown = true
                }
                if gesture != "Touch Down Repeat" {
                    doubleDown = false
                }
            }
    }
}


struct AnimationBall: View{
    let xpos : Double
    let scaleFlag : Double
    let doubleDown : Bool
    let upOutside : Bool

    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100,height: 100)
                .foregroundColor(doubleDown ? .gray : .black)
                .animation(.easeInOut)
            Circle()
                .frame(width: 50,height: 50)
                .foregroundColor(.white)
                .offset(x: xpos)
                .scaleEffect(scaleFlag)
                .animation(.easeInOut)
            if upOutside{
                Circle()
                    .frame(width: 75,height: 75)
                    .foregroundColor(.gray)
                    .animation(.easeInOut)
            }
        }

    }
}

