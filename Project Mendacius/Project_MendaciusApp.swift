//
//  Project_MendaciusApp.swift
//  Project Mendacius
//
//  Created by Praneet S and Meghana Khuntia on 26/11/20.
//

import SwiftUI

@main
struct Project_MendaciusApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands(content: {
            CommandMenu(Text("Downloads"), content: {
                VStack{
                    Button("initrd - Ubuntu Server", action: {
                        NSWorkspace.shared.open(URL(string: "https://cloud-images.ubuntu.com/releases/focal/release/unpacked/ubuntu-20.04-server-cloudimg-amd64-initrd-generic")!)
                    })
                    Button("vmlinuz - Ubuntu Server", action: {
                        NSWorkspace.shared.open(URL(string: "https://cloud-images.ubuntu.com/releases/focal/release/unpacked/ubuntu-20.04-server-cloudimg-amd64-vmlinuz-generic")!)
                    })
                    Button("cloud image - Ubuntu Server", action: {
                        NSWorkspace.shared.open(URL(string: "https://drive.google.com/file/d/1RR6cbFwBq4bJh7sgIPByOexXQqdu0Urq/view?usp=sharing")!)
                    })
                }
            })
        })
    }
}
