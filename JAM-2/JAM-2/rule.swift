//
//  help.swift
//  JAM-2
//
//  Created by Charlotte Menet on 25/03/2023.
//

import SwiftUI

struct rule: View {
    
    @State var enterGame: Bool = false
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.white, .pink], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                title()
                para_rule()
                
                Button {
                    enterGame = true
                } label: {
                    Text("Enter Game")
                        .padding()
                        .font(.system(size: 30))
                        .shadow(radius: 6, x: -1, y: 1)
                        .frame(width: 320, height: 68)
                        .background(Color("Color_Button"))
                        .foregroundColor(.white)
                        .bold()
                }

                .padding()
                .shadow(radius: 6, x: -3, y: 3)
            }
            NavigationLink("", destination:  ContentView(), isActive: $enterGame)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct rule_Previews: PreviewProvider {
    static var previews: some View {
        rule()
    }
}

struct title: View {
    var body: some View {
        Text("Rule of the Game")
            .opacity(0.5)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.top, -150)
    }
}

struct para_rule: View {
    var body: some View {
        VStack {
            Text("The game is simple, just press the two keys you see on the screen at the same time.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.top, -100)
                
            
            Text("You win the game when you reach to 42 points.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("You loose the game when the timer reach 0.")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("GOOD LUCK !!")
                .opacity(0.5)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
    
    
    
        }
    }
    
}
