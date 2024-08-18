//
//  HomeView.swift
//  Vikas Raj Yadav
//
//  Created by Vikas Yadav on 07/08/24.
//

import SwiftUI
import RiveRuntime


struct HomeView: View {
    @State private var isActive: Bool = false

    var body: some View {
        let icon = RiveViewModel(fileName: "interaction", stateMachineName: "CARD")
        ZStack(){
            Button {
                    isActive.toggle()
                    icon.setInput("isActive", value: isActive)
                   }
                    label: {
                           icon.view().frame(width: 800, height: 600)
                }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(.white)
   }
}
#Preview {
    ContentView()
}
