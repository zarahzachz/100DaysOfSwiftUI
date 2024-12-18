    //
    //  ContentView.swift
    //  GuessTheFlag
    //
    //  Created by Sarah Sachs on 11/14/24.
    //

import SwiftUI

struct FlagImage: View {
    var country: String
    
    var body: some View {
        Image(country)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentTitle() -> some View {
        modifier(ProminentTitle())
    }
}

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State private var score = 0
    @State private var turn = 1
    @State private var showingReset = false
    
// animation vars
    @State private var tappedButton: Int? = nil
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
//            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
//                            .font(.largeTitle.weight(.semibold))
//                            .modifier(ProminentTitle())
                            .prominentTitle()
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            FlagImage(country: countries[number])
                        }
                        .rotation3DEffect(
                            .degrees(tappedButton == number && isAnimating ? 360 : 0),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .scaleEffect(
                            tappedButton == number || tappedButton == nil ? 1.0 : 0.8
                        )
                        .opacity(
                            tappedButton == number || tappedButton == nil ? 1.0 : 0.25
                        )
                        .animation(.easeInOut(duration: 0.5), value: tappedButton)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Game Over", isPresented: $showingReset) {
            Button("Play Again", action: resetGame)
        } message: {
            Text("Your final score is \(score)")
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct!"
            
            if score < 8 {
                score += 1
            }
            
            withAnimation {
                isAnimating = true
            }
            
            tappedButton = number
        } else {
            scoreTitle = "Wrong! That's the \(countries[number]) flag."
            
            if score > 0 {
                score -= 1
            }
        }
        
        if turn == 8 {
            showingReset = true
        } else {
            turn += 1
            showingScore = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        tappedButton = nil
        isAnimating = false
    }
    
    func resetGame() {
        askQuestion()
        
        turn = 1
        score = 0
    }
}

#Preview {
    ContentView()
}
