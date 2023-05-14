//
//  SeasonPickerView.swift
//  Netflix Clone
//
//  Created by MEI on 14.05.2023.
//

import SwiftUI

struct SeasonPickerView: View {
    
    var numberOfSeasons: Int
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    var body: some View {
        Group {
            Color.black.opacity(0.9)
            VStack (spacing: 40) {
                Spacer()
                
                ForEach(0..<numberOfSeasons) { season in
                    Button(action: {
                        self.selectedSeason = season + 1
                        self.showSeasonPicker = false
                    }, label: {
                        Text("Season \(season + 1)")
                            .foregroundColor(self.selectedSeason == season + 1 ? .white : .gray)
                            .bold()
                            .font(self.selectedSeason == season + 1 ? .title : .title2)
                    })
                }
                
                Spacer()
                Button(action: {
                    self.showSeasonPicker = false
                }, label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .scaleEffect(x: 1.1)
                })
                .padding(.bottom, 30)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SeasonPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonPickerView(numberOfSeasons: 3, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
    }
}
