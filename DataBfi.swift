

import Foundation

//dataset to show the selected cinema screenings 
struct DataBfi: Identifiable {
    let ImageName: String
    let title: String
    let time: String
    let description: String
    let url: URL
    let id = UUID()
    
    static func examples() -> [DataBfi] {
        [DataBfi(ImageName: "iusedtobefunny", title: "I used to be funny", time:"3:15pm", description: "TSam (Rachel Sennott - Shiva Baby, Bodies, Bodies, Bodies) is a comic struggling to rebuild her life after a traumatic incident. When Brooke (Olga Petsa), a precocious 14-year-old girl she used to nanny for goes missing, she helps out with the search, though it opens up old wounds.", url: URL(string: "https://princecharlescinema.com/prince-charles-cinema/booknow/31617917/")!)]
    }
}
