//
//  ContentView.swift
//  DropDownMenu
//
//  Created by ABDELAZiZ EL ARASSi on 7/6/2022.
//

import SwiftUI
import DropDown

struct ContentView: View {
    
    let menu:DropDown = {
        let menu = DropDown()
        menu.dataSource = [
            "Bookmark",
            "House",
            "Book"
        ]
        let icons  = [
            "bookmark",
            "house",
            "book"
        ]
        menu.direction = .top
        menu.cellNib = UINib(nibName: "CustomDropDownCell", bundle: nil)
        menu.customCellConfiguration = { (index: Index, item: String, cell: DropDownCell) -> Void in
           guard let cell = cell as? CustomDropDownCell else { return }

            // Setup your custom UI components
            cell.iconCell.image = UIImage(systemName: icons[index])
        }

        return menu
    }()
    
    var body: some View {
        Text("Demo — DropDown Menu!")
            .padding()
        
        Button("Show DropDown Menu") { actionOfButton()}
        
    }
    
    func actionOfButton() {
        print("Show DropDown Menu !")
        menu.show()
        menu.selectionAction = { (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
