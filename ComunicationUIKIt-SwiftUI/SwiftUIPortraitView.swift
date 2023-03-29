//
//  SwiftUIPortraitView.swift
//  ComunicationUIKIt-SwiftUI
//
//  Created by Raffaele Martone on 28/03/23.
//

import SwiftUI

struct SwiftUIPortraitView: View {
    @State var gesture : String = ""
    let gesturePublisher = NotificationCenter.default.publisher(for: NSNotification.Name("sendGesture"))
    
    var body: some View {
        ZStack{
            Color.black
            VStack{
                AnimationBallView()
                    .padding(50.0)
                Text("The Event is \(gesture)")
                    .foregroundColor(Color.white)
            }
        }
        .onReceive(
            NotificationCenter.default.publisher(for: NSNotification.Name("StringToPass"))) { notification in
            if let string = notification.userInfo?["string"] as? String {
                gesture = string
            }
        }
    }
}

struct SwiftUIPortraitView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPortraitView()
    }
}
