//
//  ContentView.swift
//  KiloMile
//
//  Created by Sarah Sachs on 11/13/24.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput: Double = 0.0
    @State private var convertedInput: Double = 0.0
    
    @State private var baseUnit = "mi"
    var convertedUnit: String {
        if baseUnit == "mi" {
            return "km"
        } else {
            return "mi"
        }
    }
    
    let units = ["mi", "km"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Enter starting distance") {
                    HStack {
                        TextField("Enter your distance", value: $userInput, format: .number)
                            .keyboardType(.decimalPad)
                        Picker("Choose your base unit of distance", selection: $baseUnit) {
                            ForEach(units, id: \.self) { unit in
                                Text(unit)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                }
                
                Section {
                    Button("Convert to \(convertedUnit)") {
                        if baseUnit == "mi" {
                            convertedInput = userInput * 1.60934
                        } else if baseUnit == "km" {
                            convertedInput = userInput / 1.60934
                        }
                    }
                }
                
                Section {
                    Text("Your distance is \(convertedInput) \(convertedUnit)")
                }
            }
            .navigationTitle("KiloMile")
        }
    }
}

#Preview {
    ContentView()
}
