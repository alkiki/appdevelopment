//
//  File1.swift
//  appdev
//
//  Created by алина on 21.05.2024.
//

import Foundation
import SwiftUI

//layout fo the article
struct File1: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Ways of Worldmaking: Hong Sang-soo’s Late Period")
                    .font(.title)
                Text("The apparent aesthetic “flatness” of the director's recent films is neither lax nor indifferent but strategic.")
                    .foregroundColor(.gray)
                    .padding(3)
                HStack{
                    Text("Lawrence Garcia").bold()
                    Text("20 MAY 2024")
                        .foregroundColor(.gray)
                }
                Color.gray.frame(height: 1 / UIScreen.main.scale)
                Image("File1img1")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("In Our Day (Hong Sang-soo, 2023).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("      In the cinema, as elsewhere, the notion of “late style” has become a critical commonplace—shorthand for dealing with an artist’s “mature” work, particularly when said artists are dismissed or misunderstood after a period of acclaim. The problem with shorthand, of course, is that not everyone can read it, the result being that appeals to “late style” can come across as abdications of critical responsibility, promissory notes that have yet to be fulfilled. Such debts are in many cases eventually paid, obscure references to “late style” giving way to fuller, more perspicuous accounts of an artist’s achievement. Few would now dispute the considered analyses of how Howard Hawks, pivoting on the success of Rio Bravo (1959), made a deliberate move into the late-career languor of Hatari! (1962), Man’s Favorite Sport? (1964), and Red Line 7000 (1965). In the case of Hong Sang-soo, however, this critical due has yet to be discharged—and interest is accruing.")
                    .padding(20)
                Text("      To a certain extent, all working directors are under-considered, given the constraints imposed on the contemporary critic by a constant deluge of new releases. But, especially since the time of Right Now, Wrong Then (2015), writing on Hong’s work has all but calcified into a Dictionary of Received Ideas, with many reviews partaking of a certain formula: First, there is the usual charge that Hong only makes one sort of movie, along with the rejoinder that this charge is reductive, and that his repetition of motifs (filmmaker characters, drinking sessions, romantic foibles) in fact makes salient narrative patterns of immense variety. Then, there might be an excursus on how the apparent “smallness” of his works is a virtue, getting us away from clichéd “beautiful images” and toward a deeper appreciation of the quotidian rhythms of life. Next might follow a stray reference to some philosophical notion of time, such as the “eternal return,” usually without elaboration. At some point, Cézanne might be mentioned, with Hong’s professed admiration of the painter used to analogize the two.")
                    .padding(20)
                Text("While none of these notes are necessarily incorrect, they have become increasingly incapable of accounting for the distinctiveness of Hong’s recent output. Writing of Hong’s first three features, The Day a Pig Fell into the Well (1996), The Power of Kangwon Province (1998), and Virgin Stripped Bare by Her Bachelors (2000), David Bordwell had already identified the filmmaker with a distinct “minimalism”: no more than four or five main characters, muted and mundane subject matter, simple setups and long takes, and so forth. But since Right Now, Wrong Then, Hong has taken his cinema in directions that are not easily characterized as merely minimalist. His production methods can certainly be discussed on those terms: in addition to writing and directing duties, Hong has recently taken over sound, music, and cinematography, in the process dispensing with many of the technical standards that such roles would ordinarily demand. But to say that Hong has simply redoubled his commitment to “smallness” evades the challenge of articulating the unique charge of his late period. In his recent monograph on Tale of Cinema (2005), Dennis Lim attempts to advance a non-formulaic route into Hong’s cinema, and to that end avoids imposing a chronological or topical treatment of the director’s oeuvre, writing that “In a garden of forking paths, maps are of limited use.” Although what follows does not qualify as a definitive map, it is offered with the conviction that, when confronting Hong’s cinema, getting lost is not the only option.")
                    .padding(20)
                Image("article1")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("Right Now, Wrong Then (Hong Sang-soo, 2015).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("Before considering Hong’s late period in any detail, however, it is necessary to give a sense of how his earlier films laid the stylistic groundwork that he would later build upon. The first thing to note is that Hong is foremost a narrative filmmaker—not as a matter of course, but in ways that are intrinsic to his achievement. Since The Day a Pig Fell into the Well, he has continually experimented with a range of storytelling gambits—particularly the diptych structures and narrative doublings for which he is now well known. In the first half of The Power of Kangwon Province, a young woman flees a relationship with a married man, vacationing in the eponymous region with a couple of friends; in the second, a professor travels to the same region over the same period of time, crossing only briefly with the woman from the first half, but largely moving on a separate path. Only later do we find out that the two are lovers. Only in retrospect do we realize that we have been watching not just the end of an affair, but both sides of it.")
                    .padding(20)
                Text("Virgin Stripped Bare by Her Bachelors has a similar story hook, presenting the relationship between Jae-hoon (Jeong Bo-seok) and Soo-jung (Lee Eun-ju) in two segmented, numbered story blocks, each attached to a character’s point-of-view. As in Kangwon, each half of the film, here divided by an interlude in a suspended cable car, presents events unseen in, but related to, the other. But in addition, key events are included in both, with noticeable disparities in dialogue, scene length, object-motifs, and character behavior. In one scene, Jaehoon and Soojung meet in a park, with the latter acting reservedly in the first version, and more forthrightly in the second. The focus of another encounter shifts between sections, from a dropped chopstick to a set of napkins. As Christopher Small suggests, it’s as if the rocking motion of the suspended cable car at the film’s midpoint had reshuffled the events ever so slightly. By prompting us to recall quite specific details across the two parts, Hong shows us just how unstable our grasp on the past really is—the extent to which our presumptive certainty about prior events is founded on selective memory. The cumulative effect is to unsettle the basic narrative assumption of a fixed past flowing into an open future. ")
                    .padding(20)
                Text("On the face of it, On the Occasion of Remembering the Turning Gate (2002) obeys a more conventional structure, following as an actor meets two women in succession and alerting us to the parallels between the encounters. If anything, though, the film goes deeper in demonstrating that the perspectival dislocations of Kangwon and Virgin can show up even within a linear narrative. Early on in Turning Gate, the title is explained by the retelling of an ancient myth about a Chinese princess loved by a commoner—a story whose significance emerges at the film’s climax, when the actor finds himself pulled out of his ordinary experience of time, all but reliving the myth. While Virgin’s doublings created a unique memory game for the viewer, its discombobulating effects remained external to the narrative. The key difference in Turning Gate is that the déjà vu of its climax cannot be so easily attributed to either viewer or artist, but emerges fully within the protagonist’s experience. The upshot is that the temporal dislocation we find in Hong’s films is not confined to overtly marked structural play, and can emerge even within the flow of ordinary existence, in those moments when, as Béla Balázs puts it, “the spectre of one event seems to shine through another, making the entire surrounding world transparent.”")
                    .padding(20)
                Image("File1img2")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("On the Occasion of Remembering the Turning Gate (Hong Sang-soo, 2002).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("It should be clear from all this that Hong is invested in the mechanics of storytelling. As Lim writes, “Beyond the stories they tell, Hong’s films call attention to how they are told.” It should also be clear, however, that such an assessment is inadequate. Already in the 1940s, as Bordwell has shown, American studio filmmakers made concerted and conspicuous use of devices which had up to then been used only sporadically: dead narrators and multiple flashbacks, surprise voiceovers and bizarre dream sequences, point-of-view switches, hallucinations, false memories, and the like. As the film producer Darryl F. Zanuck put it back in 1947: “It is not enough just to tell an interesting story. Half the battle depends on how you tell the story.” Hong has probably made more concerted use of such storytelling devices than any other filmmaker of his generation. But to say that he prioritizes the how of the story over the what doesn’t come close to accounting for his singular narrative innovations.")
                    .padding(20)
                Text("How, then, should we understand what Hong is after? In Hill of Freedom (2014), the protagonist carries around a book which argues that our habitual conception of time, conceived as an empirical succession of nows, one clock-tick after another, is in fact unreal. Hong’s work may be understood as allowing us to reach a similar position—as getting us to entertain the idea that there’s more to reality than this conventional view of clock-time. Since the early cinema, film artists have confronted the fundamental problem of how to link images together in space and time to create the convincing impression of an independent world. The filmmakers of what André Bazin calls the classical cinema found various ways of answering this question, but they shared the assumption of an extendable narrative world unfolding in clock-time—which is to say the paradigm of empirical succession. Hong’s structural innovations may be taken to accentuate, and thereby question, this paradigm. Hong, then, is not merely reviving the storytelling devices of a prior era, but probing their conditions of possibility. If this indicates a new sort of narrative engagement, it is to the extent that Hong’s methods sensitize us to how naturally we slip into the film-worlds with which we are presented, and how much we take for granted in the process.")
                    .padding(20)
                Image("FIle1img3")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("Night and Day (Hong Sang-soo, 2008).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("In Night and Day (2008), a painter, Sung-nam (Kim Young-ho), travels to Paris to escape arrest for smoking marijuana, leaving his wife behind in Korea. Unusually for Hong, there is no narrative doubling: Sung-nam’s time in Paris, explicitly marked by date cards, unfolds chronologically, conforming to the contours of a Rohmerian “Moral Tale,” and developing what Dan Sallitt identifies as a tension “between what matters to the protagonist (his married life in Korea) and what matters most to the audience (the Parisian interlude which is developed in detail for us).” Significantly, Hong also orchestrates a multiplicity of potential narrative developments, some of which will take on appreciable momentum, with others leading only to dead ends. Early on in the film, Sung-nam picks up a Bible after being told about its transformative properties, strongly suggesting a potential narrative line. And though it does recur later on, as an excuse for Sung-nam to avoid sleeping with his former lover, Hong’s emphasis here turns out to be a red herring: the religious encounter ultimately serves no large-scale significance in the film. But as Sallitt points out, Hong generates many such emphases across the runtime, and it is often only in retrospect that the film’s sundry narrative digressions can properly be recognized as such. Thus, although Night and Day unfolds according to a chronological timeline, Hong also underlines its contingency, leaving us with a sense that what matters within a narrative can never be given in advance.")
                    .padding(20)
                Text("In HaHaHa (2010), Hong goes even further: the chronology is no longer a given, but ours to reconstruct. In the film’s frame story, Jo Moon-kyung (Kim Sang-kyung) and his friend Bang Joong-sik (Yoo Jun-sang) swap memories about the trips they both made to the town of Tongyeong. HaHaHa accordingly unfolds as a series of alternating flashbacks, revealing that the two were not only in the same place at the same time, but also interacting with the same people. Significantly, Hong uses the structural device to undermine our ability to assimilate things into a coherent chronology. Again and again, scenes begin and end at unexpected moments, momentarily challenging our ability to assimilate events into an ordered timeline. In the most conspicuous instance of this, Moon-kyung drunkenly berates his restaurateur mother for wearing a “revealing” top. Much earlier in the film, we had heard her tell Joong-sik that her “ungrateful” son had done just this—so either Hong has slyly presented an episode out of order, or this is not Moon-kyung’s first filial impertinence. The deciding factor in this case—and it is by no means a definitive one—is that Moon-kyung is wearing the same clothes that we glimpsed in the preceding scene. Since early films like D. W. Griffith’s A Corner in Wheat (1909), we have become accustomed to the conventions of parallel montage, whereby crosscutting establishes simultaneous occurrences within the same world. The alternating flashbacks of HaHaHa may be seen as engaging directly with this familiar editing pattern, showing how the cause-and-effect relations that give it coherence can so easily be pulled apart.")
                    .padding(20)
                Image("File1img4")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("HaHaHa (Hong Sang-soo, 2010).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("Whereas the filmmakers of a prior era innovated with the assumption of a stable film-world, Hong’s methods may be seen as gradually pushing on this premise. It is in this respect that Right Now, Wrong Then stands as Hong’s most explicit statement of principles. In the film, an arthouse director Cheon-soo (Jung Jaeyoung) has a chance encounter with a budding artist Hee-jung (Kim Min-hee), with whom he then spends the day. The scenario plays out twice, in two discrete parts, with variations both major and minor. The first part (titled “Right Then, Wrong Now”) ends poorly between the characters, while the second part (titled “Right Now, Wrong Then”) ends well. Where previous films had pressed up against the limits of empirical succession, Right Now, Wrong Then explodes it altogether, presenting two iterations that are not merely contradictory but incompossible, occupying entirely different worlds. Now that the film’s images are no longer capable of being assimilated into a single timeline, nor bound by any discernible cause-effect relation, the result is a proliferation of narrative possibilities—or, as Hong himself has put it, “an infinite possibility of worlds.”")
                    .padding(20)
                Text("In addition to winning the Golden Leopard at the 2015 Locarno Film Festival, Right Now, Wrong Then marked a breakthrough in Hong’s global visibility. If only for that reason, it would have been a watershed moment in his career. But the film’s significance goes even further—for having so forcefully confronted the limits of empirical succession, Hong evidently no longer felt the need to explicitly signpost his structural gamesmanship in the films that followed. The title cards which divide Right Now, Wrong Then, the numbered headings in Virgin Stripped Bare By Her Bachelors, the shuffled letters which motivate the achronological structure of Hill of Freedom, the frame story of HaHaHa: such explicit markers could be dispensed with. If Right Now, Wrong Then divides Hong’s career into an “early” and “late” period, it is because henceforth, any sort of transition or element could be enough to rupture the film in the way that those explicit story markers previously did. Paying close attention to the clothes Manhee (Kim Min-hee) wears in the Cannes-set Claire’s Camera (2017), Sean Gilman concocted a charmingly outlandish theory involving multiple Manhees and a time machine hidden somewhere on the Croisette. However absurd the suggestion, it is in a way perfectly apposite to Hong’s cinema, where false continuity is not the exception but the rule—indeed increasingly so. Having been sensitized to the contingencies of a causal timeline, we accordingly notice how any element or transition—whether a cut, one of Hong’s signature zooms, or some other detail—may rupture the narrative, potentially leading into another world")
                    .padding(20)
                Image("File1img5")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("Yourself and Yours (Hong Sang-soo, 2016).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("At the beginning of Yourself and Yours (2016) a young woman, Min-jung (Lee Yoo-young), parts ways with her boyfriend Young-soo (Kim Joo-hyuk) after he hears that she got drunk in public yet again and refuses to believe her protestations to the contrary. During their separation, she is approached by different men who claim to know her, while she in turn claims to not to be the person they supposedly know—a pattern that becomes more outrageous with every encounter. It is practically a joke at the expense of a possessive male ego: each time she moves out of the men’s immediate vicinity, she literally becomes a different person. But while the film may be read as a comedy of escalation, with Min-jung piling lie on top of outrageous lie, it is far stranger and more ambiguous than that. For there remains the possibility of alcohol-induced memory lapses on her part, genuine cases of mistaken identity on the part of the men, and the outside chance of a twin sister roaming the city, as she once suggests.")
                    .padding(20)
                Text("It is a measure of the film’s intricate structure that it is impossible to recount its narrative without ruling out a set of other possible accounts. Depending on how one reads any given scene, one creates a different causal chain through the film—and there seems to be no way to definitively choose between alternatives. At the end of Yourself and Yours, Min-jung reunites with Young-soo, a resolution that places the film in dialogue with Hollywood remarriage comedies such as The Awful Truth (1937) and The Lady Eve (1941). But as she pulls the same “I’m not really Min-jung” routine on him, their reunion has an entirely different charge, for Hong has placed us in the same vertiginous position as Young-soo, unable to decide between the myriad of possible causal chains that have led up to that point. If Yourself and Yours offers a vision of trust and change that may rightly be called “metaphysical,” then, it is because Young-soo does what he was unable to do at the film’s start and accepts Min-jung completely—every version of her.")
                    .padding(20)
                Text("Given the brazen flouting of conventional narrative causality we find in Right Now, Wrong Then and Yourself and Yours, Hong’s post-2015 work may be characterized as revealing the minimal conditions necessary for empirical succession to emerge—or, equivalently, the limits at which it might be said to collapse. Whereas his earlier films did so quite explicitly, however, his films since Yourself and Yours have increasingly maintained the outward impression that they have no structural gamesmanship at all, or else employ structures whose purpose remains obscure. With this in mind, we can begin to make sense of the uninviting surface qualities of Hong’s most recent works. In addition to the technical infelicities that have resulted from Hong taking over as his own DP since Introduction (2021)—Hong has, it seems, never seen a window he did not want to blow out—there is an apparent compositional laxity in films like In Front of Your Face (2021) that stands in stark contrast to earlier films like Kangwon and Virgin. And despite the fact that Hong dispensed with the demands of a conventional script as early as Turning Gate, recent works like The Day After (2017), Grass (2018), and The Woman Who Ran (2020) feature an improvisatory dead air that is not present in the films of the early to mid-2010s. Given Hong’s prolific pace, these might seem like signs of a filmmaker resting on their laurels. What I want to suggest, though, is that the apparent aesthetic “flatness” of these films is neither lax nor indifferent but strategic.")
                    .padding(20)
                Image("File1img6")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("Walk Up (Hong Sang-soo, 2022).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("Take for instance Walk Up (2022), which comprises four segments, each of which takes place on a different floor of a walk-up apartment. In the first, a film director, Byung-soo, brings his daughter Jeong-su (Park Mi-so) to meet Ms. Kim (Lee Hye-yeong), the owner of the building, who takes them on a brief tour as all the tenants happen to be out. The first and second floors are occupied by a restaurant whose owner does all the cooking herself. On the third floor is a cozy apartment which Ms. Kim initially thought of using herself, but which she rents out to a couple. On the fourth floor lives a rather reclusive man who doesn’t pay his rent on time, but who is set to move out shortly. The three then move to the basement, Ms. Kim’s work studio, for a glass of wine. Shortly, Byung-soo is called away to a meeting, leaving Jeong-su and Ms. Kim to talk and drink. A few bottles of wine later—a characteristically Hongian ellipsis—Jeong-su petitions Ms. Kim to take her on as an assistant. No promises are made, but Ms. Kim doesn’t refuse Jeong-su, either. Finally, the latter leaves to fetch yet another bottle of wine. As she walks down the street away from the building, soft guitar music fills the soundtrack, closing the first of the film’s four parts.")
                    .padding(20)
                Text("The second segment then begins with an unremarkable shot of the entrance to the building—only it isn’t unremarkable, because we then notice that the first segment, too, began with a nearly identical shot, leading us to wonder whether we are witnessing a subsequent visit or another iteration of the same day. And for a time we have no way of knowing. Byung-soo and Ms. Kim again share a meal, this time on the second floor of the building, where they are joined by the restaurant owner (Song Sun-mi), who turns out to be a fan of his work. It is only later, when Byung-soo’s daughter comes up in conversation, and Ms. Kim talks about how she had taken her on, only to have her quit within a month of starting, that the hypothesis of an alternate storyline fades into the background. When the film’s third segment begins, however, and we find Byung-soo now living with the restaurateur on the third floor, having apparently replaced the couple that Ms. Kim had said were originally there, we find our sense of narrative coincidence strained. And when, in the fourth and final segment, we find Byung-soo now occupying the fourth floor, as if having transformed into the reclusive man who doesn’t pay his rent on time, our inclination to keep to a causal timeline gives way altogether.")
                    .padding(20)
                Image("File1img7")
                    .resizable()
                    .frame(width: 350, height: 200)
                Text("The Novelist's Film (Hong Sang-soo, 2022).").italic()
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("At least one result of Hong’s ostensible compositional indifference is that it is only during the film’s second segment that we notice the opening shot of the walk-up apartment as a composition. The halting, improvisatory air of the conversation scenes, likewise, means that it is only later—sometimes much later—that any very statement takes on the significance of a line of dialogue at all. And a similar dynamic can apply to virtually any filmic element. In the films since Right Now, Wrong Then, Hong has consistently moved back and forth between shooting in color and shooting in monochrome, betraying no preference for one or the other, seemingly motivated by mood more than anything else. And so we presume that the monochrome palette of The Novelist’s Film (2022) is incidental, until we catch a glimpse of the eponymous film within the film, at which point the screen bursts into brilliant color, overturning our sense of how one film-world is contained in the other. Like Tale of Cinema and Oki’s Movie (2010) before it, the film has up to now explored familiar themes of creativity, authorship, and the life/art divide. But if The Novelist’s Film ventures into new territory, it is because its meta-fictional play, to which the flash of color is integral, is more confounding for being impossible to definitively “frame.” Without going so far as to embrace the aesthetic “flattening” of Hong’s post–Right Now, Wrong Then period as an intrinsic virtue, we should recognize how it makes possible such unanticipated effects. From this perspective, the notion that Hong “makes the same film” over and over is simply mistaken—for to say this is to impose on his images a presumptive significance that his recent work especially has resisted. For the viewer, the unique thrill of these works is not simply that any formal or narrative element can leap into unanticipated light, but that what even counts as a formal or narrative element is never given in advance.")
                    .padding(20)
                Text("It is a quirk of film history—and perhaps history more generally—that it is only after a detour in evolution that certain techniques or elements may be said to reveal possibilities that were there all along. The purpose of articulating an artist’s “late style,” then, is not to extend their mythos according to some criterion of consistency, but to uncover heretofore unappreciated aspects of their cinema, and indeed the medium itself. It is to show how the introduction of a new work changes how we see all the others—a fact we are apt to miss if we hold on to critical clichés. In Hong’s case, these revelations encompass not just his own films, and the vast range of storytelling devices they employ, but also the more basic cinematic elements that we take as given. in water (2023), in which every shot is out of focus, may be seen as pushing on the basic capacity to visually re-identify people, places, things; while In Our Day (2023), by alternating between two ambiguously related narratives, may be seen as taking Hong’s explorations of parallel montage one step further, dispensing with even the frame story of HaHaHa. This is not mere minimalism, but rather an uncovering of the minimum conditions under which any cinematic element takes on significance at all. “The cinema,” Gilles Deleuze writes, “does not just present images, it surrounds them with a world.” Hong probes as deeply as any filmmaker I know the conditions that make this possible, asking how it is that images should be more than just images, taking on the gravity of a world.")
                    .padding(20)
            }
        }
    }
}

struct File1_Previews: PreviewProvider {
    static var previews: some View {
        File1()
    }
}
