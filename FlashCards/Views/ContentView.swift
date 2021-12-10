//
//  ContentView.swift
//  FlashCards
//
//  Created by Winston Wang on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    //mark: stored properties
    
    @State var currentCard = listOfCards.randomElement()!
    
        
        
    //mark: computed properties
    
    
    var body: some View {
        ScrollView{
            // Show questions
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            if #available(iOS 15.0, *) {
                Button(action: {
                }, label: {
                    Text("Check")
                })
                    .buttonStyle(.bordered)
            } else {
                // Fallback on earlier versions
            }
            
            
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            if #available(iOS 15.0, *) {
                Button(action: {
                    currentCard = listOfCards.randomElement()!
                }, label: {
                    Text("Another")
                })
                    .buttonStyle(.bordered)
            } else {
                // Fallback on earlier versions
            }
            
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
