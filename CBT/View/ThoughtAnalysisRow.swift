//
//  ThoughtAnalysisRow.swift
//  CBT
//
//  Created by Peter Mitchell on 2/21/21.
//

import SwiftUI

struct ThoughtAnalysisRow: View {
    let thought: Thought
    @State var selectedCd: Int = 0
    var body: some View {
        
        
        VStack {
            Text(thought.thoughtBefore)
                .mukta(20)
            
            Picker(selection: $selectedCd, label: Text((selectedCd == 0 ? " --- " : (cds.byId(selectedCd)?.name ?? "")
            ))) {
                ForEach(cds) {cd in
                    Text(cd.name)
                }
            }.frame(height: 100)
            .pickerStyle(MenuPickerStyle())
            
            if (selectedCd == 0) {
                Text("Please Select a Cognitive Distortion")
                    .mukta(20)
            } else {
                Text(cds.byId(selectedCd)?.summary ?? "")
                    .mukta(20)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

struct ThoughtAnalysisRow_Previews: PreviewProvider {
    static var previews: some View {
        ThoughtAnalysisRow(thought: Thought(thought: "dang"))
    }
}
