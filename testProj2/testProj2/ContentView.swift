//
//  ContentView.swift
//  testProj2
//
//  Created by Fabiola Villatoro on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7" //property wrapper
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Image(playerCard)
                        .padding()
                    Image(cpuCard)
                        .padding()
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .padding()
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .padding()
                    VStack{
                        Text("CPU")
                            .padding()
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .padding()
                }
                .padding()
                .fontWeight(.bold)
                .foregroundColor(.white)

            }
            
            
        }
        
    }
    
    func deal() {
        //Randomize the players card
        var playerCardVal = Int.random(in:2...14)
        var cpuCardVal = Int.random(in:2...14)
        playerCard = "card" + String(playerCardVal)
        //Randomize CPUs card
        cpuCard = "card" + String(cpuCardVal)
        //Update scores

        if playerCardVal > cpuCardVal {
            playerScore+=1
        }
        else if cpuCardVal > playerCardVal{
            cpuScore+=1
        } 
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
