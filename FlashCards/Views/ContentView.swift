//
//  ContentView.swift
//  FlashCards
//
//  Created by Winston Wang on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    //mark: stored properties
    var currentCard = listOfCards.randomElement()!
        
        
    //mark: computed properties
    
    
    var body: some View {
        ScrollView{
            // Show questions
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
    
            }, label: {
                Text("Check")
            })
                .buttonStyle(.plain)
            
            
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
    
            }, label: {
                Text("Another")
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
