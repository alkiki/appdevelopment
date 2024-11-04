//
//  ScheduleData1.swift
//  devappfilm
//
//  Created by алина on 08.06.2024.
//

import Foundation

//dataset to show the selected cinema screenings 
struct ScheduleData1: Identifiable {
    let ImageName: String
    let title: String
    let time: String
    let description: String
    let url: URL
    let id = UUID()
    
    static func examples() -> [ScheduleData1] {
        [ScheduleData1(ImageName: "challengers", title: "Challengers", time:("8:15pm"), description: "Tennis player turned coach Tashi has taken her husband, Art, and transformed him into a world-famous Grand Slam champion. To jolt him out of his recent losing streak, she signs him up for a 'Challenger' event — close to the lowest level of pro tournament — where he finds himself standing across the net from his former best friend and Tashi's former boyfriend.", url: URL(string: "https://princecharlescinema.com/prince-charles-cinema/booknow/31617917/")!),
         ScheduleData1(ImageName: "chimera", title: "Chimera", time:"3:45pm", description:"Just out of jail, crumpled English archaeologist Arthur reconnects with his wayward crew of tombaroli accomplices – a happy-go-lucky collective of itinerant grave-robbers who survive by looting Etruscan tombs and fencing the ancient treasures they dig up.", url: URL(string: "https://princecharlescinema.com/prince-charles-cinema/booknow/31618016/")!),
        /* ScheduleData1(ImageName: "chimera", title: "Chimera", time:"3:45pm", description:"Just out of jail, crumpled English archaeologist Arthur reconnects with his wayward crew of tombaroli accomplices – a happy-go-lucky collective of itinerant grave-robbers who survive by looting Etruscan tombs and fencing the ancient treasures they dig up.", url: URL(string: "https://princecharlescinema.com/prince-charles-cinema/booknow/31618016/")!)*/]
    }
}
