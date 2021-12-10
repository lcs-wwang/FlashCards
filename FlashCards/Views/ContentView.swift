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
    
    // this controls whether the answer is visible
    @State var isAnswerShowing = false
        
    //mark: computed properties
    
    
    var body: some View {
        ScrollView{
            // Show questions
            HStack{
                Spacer()
                
                Text(currentCard.question)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            
            //Check answer
            if #available(iOS 15.0, *) {
                Button(action: {
                    //reveal the answer
                    isAnswerShowing = true
                    withAnimation{
                        isAnswerShowing = true
                    }
                    
                }, label: {
                    Text("Check")
                })
                    .buttonStyle(.bordered)
        } else {}
            
            
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            //Check answer
            if #available(iOS 15.0, *) {
                Button(action: {
                    currentCard = listOfCards.randomElement()!
                    
                    isAnswerShowing = false
                }, label: {
                    Text("Another")
                })
                    .opacity(isAnswerShowing ? 1.0 : 0.0)
                    .buttonStyle(.bordered)
        } else {
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
