//
//  AboutView.swift
//  PeriodicTarot
//
//  Created by Tomas Hooper on 07/05/2024.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            bg
            content
        }
    }
    
    private var bg: some View {
        Color("Blue")
            .ignoresSafeArea()
    }
    
    private var content: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 30, content: {
                Text("The Periodic Tarot of the Elements app is a companion to the book \(Text("“The Periodic Tarot of the Elements”").fontWeight(.bold)) by Mochi Kaimu. It replaces a physical deck of cards with a digital version you can use to connect with the intelligence that is deeply rooted in all things. Tarot Cards have been used as a spiritual guide and a way of connecting with the universe for centuries. Traditional Tarot Cards draw on imagery and symbolism associated with spiritual traditions that predate Science. \(Text("The Periodic Tarot of the Elements").fontWeight(.bold)) book and app seek to integrate Science with the Intelligence inherent in Nature. The founding tenet of the book is that intelligence is not just confined to Homo Sapiens but is everywhere; in plants and animals, in microbes, bacteria and single celled organisms, even in rocks and minerals. And what are all these made of? Elements in the Periodic Table. Everything on Earth is made up of elements which came into being during the creation of the universe and in the spectacular supernovas at the end of a star's life cycle. Homo Sapiens, along with everything else on the planet is created from elements born in the hearts of exploding stars. To say we are made of star dust is not just hyperbole.")
                
                Text("The 67 Elements that make up the Periodic Tarot are chosen because of their significance to life and life processes. By integrating Science with Spirituality and seeking guidance from the elements that make up ourselves and our world, it is hoped that we can come to see the divine in Nature. To elevate ourselves and our environment to the realm of the sacred will go a long way towards our survival as a species. By locating the source of the divine in the very elements which make up the Universe rather than in some abstract unknowable force or in a being which is no more than a projection of our evolving sense of self we can learn to place value upon what is currently not valued; the air we breathe, the water we drink, the food we eat and the planet we inhabit as well as all the species we share it with.")
                
                Image("Book")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Text("Thank you for downloading \(Text("The Periodic Tarot of the Elements App").fontWeight(.bold)). If you have not already done so you may wish to purchase the book which is available on Amazon. The book contains images of all 67 Periodic Tarot Elements along with descriptions and interpretations for each element.")
                
                Text("INSTRUCTIONS FOR USING THE APP")
                    .fontWeight(.bold)

                
                Text(
                    
                    """
                    Choose One of Three Options on the Draw Card Page
                    
                    \(Text("The One-Card Spread").fontWeight(.bold)) is a quick and accessible way to gain tarot guidance and can be used for daily insights, specific questions, or general reflection.
                    
                    \(Text("Draw a Single Card").fontWeight(.bold)) - The meaning of the card drawn is then interpreted in relation to the question or situation at hand. This can be done in various ways:
                    
                    \(Text("Question-Specific").fontWeight(.black)) - If one has a specific question in mind, the card's meaning is interpreted in the context of that question. For example, if the question is about a career decision, the card may provide insight into the best course of action or potential outcomes related to the career path.
                    
                    \(Text("Theme-Based").fontWeight(.bold)) - If one doesn't have a specific question but is seeking general guidance or insight, the card's meaning can be interpreted based on a chosen theme. For example, the card may provide insight into one's current emotional state, spiritual journey, or areas of personal growth.
                    
                    \(Text("Daily Guidance").fontWeight(.bold)) - Some people use a One-Card Spread as a daily practice for guidance or reflection. Each day, they draw a single card to gain insight into the energies or lessons they need to focus on for that day.
                    
                    \(Text("Reflection and Action").fontWeight(.bold)) - Once the card is interpreted, one can reflect on its message and consider how it applies to their life or the situation they're asking about. The card may offer advice, encouragement, warnings, or clarity, depending on its symbolism and one's interpretation.
                    
                    \(Text("Optional Additional Cards").fontWeight(.bold)) - Sometimes, a One-Card Spread can be expanded by drawing additional cards to clarify or deepen the message of the initial card. However, this is not always necessary, as a single card can often provide a clear and concise message on its own.
                    
                    \(Text("The Three-Card Spread").fontWeight(.bold)) is one of the simplest yet most versatile tarot spread. It provides insight into past, present, and future situations or represents mind, body, and spirit. It involves drawing three cards and interpreting each card's meaning in relation to its position in the spread.
                    
                    \(Text("I. Past - Present - Future").fontWeight(.bold)) This is the most common interpretation of the Three-Card Spread. Each card represents a different time period or aspect of the situation:
                    
                    \(Text("Past").fontWeight(.bold)) - The first card represents past influences or events that have led to the current situation. It can offer insight into the origins of the issue or the factors that have shaped the present circumstances.
                    
                    \(Text("Present").fontWeight(.bold)) - The second card represents the current situation or one's current state of mind. It provides insight into what is happening in the present moment and the energies at play.
                    
                    \(Text("Future").fontWeight(.bold)) - The third card represents potential future outcomes or the direction in which things are heading. It offers guidance on what might happen if the current path continues or if certain actions are taken.
                    
                    \(Text("II. Mind - Body - Spirit").fontWeight(.bold)) Another interpretation of the Three-Card Spread is to view each card as representing different aspects of one.
                    
                    \(Text("Mind").fontWeight(.bold)) - The first card represents mental aspects such as thoughts, beliefs, or attitudes. It can provide insight into one's mindset or what is occupying their thoughts.
                    
                    \(Text("Body").fontWeight(.bold)) - The second card represents physical aspects such as actions, behaviors, or external circumstances. It can offer insight into one's actions or the tangible factors affecting the situation.
                    
                    \(Text("Spirit").fontWeight(.bold)) - The third card represents spiritual aspects such as intuition, guidance, or higher wisdom. It offers insight into one's spiritual journey or the unseen forces at work.
                    
                    \(Text("III. Problem - Action - Outcome").fontWeight(.bold)) This interpretation focuses on addressing a specific problem or question.
                    
                    \(Text("Problem").fontWeight(.bold)) - The first card represents the issue or challenge at hand. It identifies what needs to be addressed or overcome.
                    
                    \(Text("Action").fontWeight(.bold)) - The second card represents the action or approach that can be taken to deal with the problem. It provides guidance on how to navigate the situation effectively.
                    
                    \(Text("Outcome").fontWeight(.bold)) - The third card represents the potential outcome or result of the chosen action. It offers insight into what might happen if the suggested course of action is followed.
                    
                    Regardless of the interpretation used, the Three-Card Spread offers concise but meaningful insights into a situation or question and can serve as a starting point for deeper exploration or reflection.
                    
                    \(Text("The Seven-Card Spread").fontWeight(.bold)) is a more comprehensive tarot spread that allows for a detailed exploration of a situation, question, or relationship.
                    
                    \(Text("Card 1 - Present Situation").fontWeight(.bold)) - This card represents the current circumstances or the central issue at hand. It provides insight into what is happening right now and sets the stage for the rest of the spread.
                    
                    \(Text("Card 2 - Challenges/Obstacles").fontWeight(.bold)) - This card reveals the obstacles or challenges that one may be facing in relation to the present situation. It helps identify what may be blocking progress or causing difficulties.
                    
                    \(Text("Card 3 - Subconscious Influences").fontWeight(.bold)) - This card represents subconscious influences or underlying factors that may be affecting the situation. It can reveal hidden motivations, fears, or desires that one may not be fully aware of.
                    
                    \(Text("Card 4 - Past Influences").fontWeight(.bold)) - This card reflects past events or influences that have led to the current situation. It provides context and helps understand how past experiences have shaped the present circumstances.
                    
                    \(Text("Card 5 - Strengths/Resources").fontWeight(.bold)) - This card identifies the strengths, resources, or positive qualities that one can draw upon to overcome challenges or achieve their goals. It highlights areas of resilience and potential support.
                    
                    \(Text("Card 6 - Future Outlook").fontWeight(.bold)) - This card offers insight into the potential future outcome or direction of the situation. It provides guidance on where things are heading based on current energies and actions.
                    
                    \(Text("Card 7 - Advice/Outcome").fontWeight(.bold)) - This final card offers advice or guidance on how to navigate the situation effectively. It may also represent the most likely outcome if one follows the suggested course of action.
                    
                    Interpreting the Seven-Card Spread involves considering the relationships between the cards, the overall narrative they create, and any patterns or themes that emerge. It allows for a holistic understanding of the situation, incorporating past influences, present challenges, and future possibilities, as well as offering actionable advice for moving forward.
                    
                    \(Text("The Elemental Spread").fontWeight(.bold)) is based on the four classical elements - Earth, Air, Fire, and Water - each representing different aspects of life and consciousness. Each card drawn represents the qualities and influences of its corresponding element in one's life or situation. The Elemental Spread provides a holistic view of different aspects of existence, offering guidance and insight into various realms of consciousness.
                    
                    \(Text("Earth (Physical Realm - Solid Elements)").fontWeight(.bold)) - This card represents the material world, the physical body, and practical concerns such as work, finances, health, and stability. It reflects the tangible aspects of life and the foundation upon which everything else is built. Instead of the classical element of Earth, you can choose elements from the solid state of matter. This can include elements like Carbon (C), Silicon (Si), Iron (Fe), or any other element commonly found in solid form.
                    
                    \(Text("Air (Mental Realm-Gas Elements)").fontWeight(.bold)) - This card represents thoughts, ideas, communication, and intellectual pursuits. It reflects the realm of the mind, including logic, reasoning, learning, and decision-making. Instead of the classical element of Air, you can choose elements from the gaseous state of matter. This can include elements like Oxygen (O), Nitrogen (N), Hydrogen (H), or any other element commonly found in gas form.
                    
                    \(Text("Fire (Spiritual Realm - Plasma Elements)").fontWeight(.bold)) - This card represents passion, inspiration, creativity, spirituality, and transformation. It reflects the inner fire that drives us, our desires, and our connection to higher purpose or divine energy. Instead of the classical element of Fire, you can choose elements that are commonly found in plasma state. Plasma is a state of matter similar to gas but with highly energized particles. Examples of plasma elements include Hydrogen (H), Helium (He), Neon (Ne), or any other element that forms plasma under certain conditions.
                    
                    \(Text("Water (Emotional Realm - Liquid Elements)").fontWeight(.bold)) - This card represents emotions, intuition, relationships, and the subconscious mind. It reflects the realm of feelings, empathy, intuition, and the ebb and flow of emotions. Instead of the classical element of Water, you can choose elements from the liquid state of matter. This can include elements like Hydrogen (H), Oxygen (O), Mercury (Hg), or any other element commonly found in liquid form.
                    
                    \(Text("Using the One Card Draw").fontWeight(.bold)) - Focus on the question or situation you want insight into. Then, draw four cards, one for each element.
                    
                    \(Text("Assign the Elements").fontWeight(.bold)) - Assign each card to one of the four elements based on its symbolism, imagery, and intuitive feeling. The correspondence between the elements and the tarot suits is often:
                    
                    \(Text("Interpretation").fontWeight(.bold))
                    
                    \(Text("Earth: Solid Elements").fontWeight(.bold)) - This card represents the material world, practical matters, finances, health, and stability. It reflects your physical environment and the resources you have at your disposal.
                    
                    \(Text("Air: Gas Elements").fontWeight(.bold)) - This card represents the realm of thoughts, ideas, communication, and intellect. It can indicate mental clarity, conflicts, or the need for clear communication.
                    
                    \(Text("Fire: Plasma Elements").fontWeight(.bold)) - This card represents passion, creativity, inspiration, and energy. It reflects your ambitions, desires, and the spark of initiative within you.
                    
                    \(Text("Water: Liquid Elements").fontWeight(.bold)) - This card represents emotions, intuition, relationships, and the subconscious mind. It reflects your feelings, dreams, and emotional connections.
                    
                    \(Text("Consider the Balance").fontWeight(.bold)) - Pay attention to the balance or imbalance of elements in the spread. For example, if you have multiple Earth cards, it may indicate a strong focus on practical matters but possibly neglecting emotional or spiritual needs.
                    
                    \(Text("Reflect on the Whole Picture").fontWeight(.bold)) - Look at how the cards interact with each other and the overall message they convey. Consider how the elements complement or conflict with each other, and what that might mean for your situation.
                    
                    \(Text("Apply the Insights").fontWeight(.bold)) - Use the insights gained from the Elemental Spread to navigate your situation or make decisions. Consider how you can balance different aspects of your life to achieve greater harmony and fulfillment.
                    
                    There are many more tarot spreads you can use to gain insight. I've listed some of them below. Search the internet for how to deploy and interpret them. You can also get creative and make up your own spread. Have fun and play around with different spreads, connecting with the universe, until you find the ones that work for you.
                    
                    \(Text("Celtic Cross Spread").fontWeight(.bold)) A classic spread that provides detailed information about the current situation, obstacles, influences, hopes, and potential outcomes.
                    
                    \(Text("Relationship Spread").fontWeight(.bold)) Focuses on the dynamics between two people, revealing strengths, weaknesses, and potential outcomes of the relationship.
                    
                    \(Text("Career Spread").fontWeight(.bold)) Designed to provide insight into career-related questions such as job opportunities, career paths, or professional development.
                    
                    \(Text("Decision-Making Spread").fontWeight(.bold)) Helps in making tough decisions by examining different options, potential outcomes, and factors to consider.
                    
                    \(Text("Chakra Spread").fontWeight(.bold)) Focuses on the body's energy centers to provide guidance on personal growth, emotional balance, and spiritual development.
                    
                    \(Text("Horseshoe Spread").fontWeight(.bold)) Provides insight into a specific question or situation by examining the past, present, future, as well as hidden influences and potential outcomes.
                    
                    \(Text("Tree of Life Spread").fontWeight(.bold)) Based on the Kabbalistic Tree of Life, this spread offers a comprehensive view of different aspects of life, including spirituality, emotions, intellect, and physicality.
                    """)
                    
            })
            .font(.custom("Segoe Print", fixedSize: 18))
            .fontWeight(.regular)
            .foregroundColor(Color("Black"))
            .padding(20)
        })
    }
}

#Preview {
    AboutView()
}
