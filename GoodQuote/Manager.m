//
//  Manager.m
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Manager.h"

@implementation Manager

-(id)init {
    UIImage* grace_img = [UIImage imageNamed:@"grace_img"];
    UIImage* bob_img = [UIImage imageNamed:@"bob_img"];
    UIImage* alan_img = [UIImage imageNamed:@"alan_img"];
    UIImage* anitta_img = [UIImage imageNamed:@"anitta_img"];
    UIImage* oprah_img = [UIImage imageNamed:@"oprah_img"];
    UIImage* emicida_img = [UIImage imageNamed:@"emicida_img"];
    
    Author* graceHopper = [[Author alloc] initWithName:@"Grace Hopper" andBio:@"Grace Brewster Murray Hopper was an American computer scientist and United States Navy rear admiral. One of the first programmers of the Harvard Mark I computer, she was a pioneer of computer programming who invented one of the first compiler related tools. She popularized the idea of machine-independent programming languages, which led to the development of COBOL, an early high-level programming language still in use today." andImage: grace_img];
    Author* alanTuring = [[Author alloc] initWithName:@"Alan Turing" andBio:@"Alan Mathison Turing was an English computer scientist, mathematician, logician, cryptanalyst, philosopher, and theoretical biologist. Turing was highly influential in the development of theoretical computer science, providing a formalisation of the concepts of algorithm and computation with the Turing machine, which can be considered a model of a general purpose computer. Turing is widely considered to be the father of theoretical computer science and artificial intelligence." andImage: alan_img];
    Author* bobMarley = [[Author alloc] initWithName:@"Bob Marley" andBio:@"Robert Nesta Marley was a Jamaican singer-songwriter who became an international musical and cultural icon, blending mostly reggae, ska and rocksteady in his compositions. Starting out in 1963 with the group the Wailers, he forged a distinctive songwriting and vocal style that would later resonate with audiences worldwide. The Wailers would go on to release some of the earliest reggae records with producer Lee \"Scratch\" Perry." andImage: bob_img];
    Author* anitta = [[Author alloc] initWithName:@"Anitta" andBio:@"Larissa de Macedo Machado known by her stage name Anitta is a Brazilian singer, songwriter, actress, dancer and businesswoman. Anitta is managed by John Shahidi of Shots Studios, a US based company backed by Justin Bieber. Anitta began singing at age 8 in a choir from a Catholic church in the Honório Gurgel neighborhood in Rio de Janeiro. At the age of 16, she attended a technical school and was called to work at Vale. In 2010, after posting a video on YouTube, Renato Azevedo, then producer of the independent record company Furacão 2000, called her to sign a contract with the label. Due to the success of the song \"Meiga e Abusada\" in 2012, she signed a contract with Warner Music Brasil the following year." andImage: anitta_img];
    Author* oprah = [[Author alloc] initWithName:@"Oprah Winfrey" andBio:@"Oprah Winfrey is an American media proprietor, talk show host, actress, producer, and philanthropist. She is best known for her talk show The Oprah Winfrey Show, which was the highest-rated television program of its kind in history and was nationally syndicated from 1986 to 2011 in Chicago, Illinois. Dubbed the \"Queen of All Media\",she is the richest African-American and North America's first multi-billionaire black person and has been ranked the greatest black philanthropist in American history. Several assessments rank her as the most influential woman in the world." andImage: oprah_img];
    Author* emicida = [[Author alloc] initWithName:@"Emicida" andBio:@"Leandro Roque de Oliveira, better known by his stage name Emicida, is a Brazilian MC. The rapper is known for his impromptu rhymes, that made him one of the most respected MCs in Brazil. Regarded as one of the biggest revelations of underground hip hop in his country, Emicida accumulates thousands of hits on every battle in his YouTube page and about 900 thousand views on his MySpace page." andImage: emicida_img];
    
    Quote* q1 = [[Quote alloc] initWithText:@"Challenges are gifts that force us to search for a new center of gravity. Don’t fight them. Just find a new way to stand." andAuthor:oprah];
    Quote* q2 = [[Quote alloc] initWithText:@"I believe that at the end of the century the use of words and general educated opinion will have altered so much that one will be able to speak of machines thinking without expecting to be contradicted." andAuthor:alanTuring];
    Quote* q3 = [[Quote alloc] initWithText:@"Life without love is a life in black in white." andAuthor:anitta];
    Quote* q4 = [[Quote alloc] initWithText:@"Life is one big road with lots of signs. So when you riding through the ruts, don't complicate your mind. Flee from hate, mischief and jealousy. Don't bury your thoughts, put your vision to reality. Wake Up and Live!" andAuthor:bobMarley];
    Quote* q5 = [[Quote alloc] initWithText:@"Life comes down to making choices, getting right and wrong, losing and winning, crying and smiling, loving and suffering, and be prepared for both sides." andAuthor:anitta];
    Quote* q6 = [[Quote alloc] initWithText:@"I am now going to make you a gift that will stay with you the rest of your life. For the rest of your life, every time you say, \"We've always done it that way,\" my ghost will appear and haunt you for twenty-four hours." andAuthor:graceHopper];
    Quote* q7 = [[Quote alloc] initWithText:@"One good thing about music, when it hits you, you feel no pain." andAuthor:bobMarley];
    Quote* q8 = [[Quote alloc] initWithText:@"Those who can imagine anything, can create the impossible." andAuthor:alanTuring];
    Quote* q9 = [[Quote alloc] initWithText:@"You not supposed to feel down over whatever happen to you. I mean, you're supposed to use whatever happen to you as some type of upper, not a downer." andAuthor:bobMarley];
    Quote* q10 = [[Quote alloc] initWithText:@"Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough." andAuthor:oprah];
    Quote* q11 = [[Quote alloc] initWithText:@"To lose myself, to find me, with every wind that blows." andAuthor:emicida];
    Quote* q12 = [[Quote alloc] initWithText:@"The look is more sincere than the words." andAuthor:anitta];
    
    _quotes = [[NSMutableArray alloc] initWithObjects:q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12, nil];
    
    
    _simbols = [[NSMutableArray alloc] initWithObjects:@"#",@"$",@"%",@"&",@"+",@":D",@"£", @"∞", @"≠", @"π", @"ø", @"¥", @"œ", @"ß", @"∂", @"∆", @"æ", @"÷",@"≥", @"≤", @"µ", @"√", @"≈", @"Ω", @"€", @"±", @"Ø", @"‰", @"", @"Æ", @"◊", nil];
    
    
    _titles = [[NSMutableArray alloc] initWithObjects:@"Old but gold",@"(G)old",@"Cute Quote",@"Quite Good",@"Once upon a quote",@"A good quote",@"Quotastic", nil];
    
    return self;
}

-(Quote*) randomQuote {
    return [_quotes objectAtIndex:arc4random_uniform(_quotes.count)];
}

-(NSString*) randomSimbol {
    return [_simbols objectAtIndex:arc4random_uniform(_simbols.count)];
}
-(NSString*) randomTitle {
    return [_titles objectAtIndex:arc4random_uniform(_titles.count)];
}

@end
