//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Sarah Sachs on 11/26/24.
//

import SwiftUI

struct ContentView: View {
    let moves = ["Rock", "Paper", "Scissors"]
    
    @State private var userShouldWin = Bool.random()
    @State private var computerMove = Int.random(in: 0...2)
    
    @State private var turns = 10
    @State private var score = 0
    @State private var showingGameOverAlert = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.brown, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack (spacing: 50) {
                VStack (spacing: 10) {
                    Text(userShouldWin ? "Beat the computer!" : "Let the computer win!")
                        .font(.largeTitle.bold())
                }
                
                VStack (spacing: 10) {
                    Text("Computer chooses \(moves[computerMove].lowercased()).")
                    
                    Text("Make your move...")
                        .padding([.bottom], 10)
                    
                    VStack (spacing: 10) {
                        ForEach(moves, id: \.self) { move in
                            Button(move) {
                                userChoice(move)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                    }
                }
                
                VStack (spacing: 10) {
                    Text("Your score: \(score)")
                    Text("Turns left: \(turns)")
                }
                .font(.footnote)
                .textCase(.uppercase)
            }
            .foregroundColor(.white)
        }
        .alert("Game Over", isPresented: $showingGameOverAlert) {
            Button("Play again?", action: resetGame)
        }
    }
    
    func userChoice(_ choice: String) {
        switch (choice, moves[computerMove]) {
            case ("Rock", "Scissors"), ("Paper", "Rock"), ("Scissors", "Paper"):
                userShouldWin ? (score += 1) : (score -= 1)
            case ("Paper", "Scissors"), ("Scissors", "Rock"), ("Rock", "Paper"):
                userShouldWin ? (score -= 1) : (score += 1)
            default:
                break
        }
        
        turns -= 1
        
        if turns == 0 {
            showingGameOverAlert = true
        } else {
            nextTurn()
        }

    }
    
    func nextTurn() {
        userShouldWin = Bool.random()
        computerMove = Int.random(in: 0...2)
    }
    
    func resetGame() {
        turns = 10
        score = 0
        
        nextTurn()
    }
}

#Preview {
    ContentView()
}
