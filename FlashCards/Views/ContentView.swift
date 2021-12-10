//
//  ContentView.swift
//  FlashCards
//
//  Created by Winston Wang on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            // Show questions
            Text("What is the \"prowerhouse\" of a cell?")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Check")
            })
                .buttonStyle(.plain)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        } else {
            // Fallback on earlier versions
        }
    }
}
