//
//  GameLayer.m
//  Tricolors
//
//  Created by Aakash on 6/24/13.
//
//

#import "GameLayer.h"
#import "StartPageLayer.h"
#import "GameOverLayer.h"
#import "GameOverLayer.m"

//240 = w and 300 = h


//320 and 480


@implementation GameLayer

-(id) init
{
    if (self = [super initWithColor:ccc4(0,0,0,100)])
        
        
        //background
        
        
    Background = [CCSprite spriteWithFile:@"grid3.png"];
    Background.position = ccp(160,240);
    [self addChild:Background z:-1];
    
    
              
              
      //background
    
    
    
    
        //operation
        
        operationCount = 15;
        
    OperationCount = [CCLabelTTF labelWithString:@"Mixes Left = 15" fontName:@"Arial" fontSize:20];
    OperationCount.position = ccp(70, 400);
    [self addChild:OperationCount z:1];
    
        
        
        //pause
        pauseButton = [CCMenuItemImage itemWithNormalImage:@"pauseButton.png"
                                                              selectedImage:@"pauseSel.png" target:self selector:@selector(pauseButtonTapped:)];
    pauseButton.position = ccp(70,410);

        //pause
    
    
    
    
    
        //TIMER
        [self schedule:@selector(timerUpdate:) interval:1];
    timerSeconds = 3;
    timerSecondsString = [NSString stringWithFormat:@"%d", timerSeconds];
    
    timerLabel = [CCLabelTTF labelWithString:timerSecondsString
                                  dimensions:CGSizeMake(100, 100) alignment:UITextAlignmentCenter
                                    fontName:@"Arial" fontSize:25.0];
    timerLabel.position = ccp(295, 420);
    timerLabel.color=ccc3(255,255,255);
    [self addChild:timerLabel];
    
    [self schedule:@selector(timerUpdate:) interval:1];

    //TIMER
    
    
    
    
   i1x1 = arc4random_uniform(3);
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(15,120);

    
    i1x2 = arc4random_uniform(3);
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(85,120);
    
    i1x3 = arc4random_uniform(3);
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(155,120);
    
    i1x4 = arc4random_uniform(3);
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    NSLog(@"%@", imageSet1x4);
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(225,120);
    
    
    i2x1 = arc4random_uniform(3);
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(15,190);
    
    
    
    do {    i2x2 = arc4random_uniform(3);
        
        
    }
    while ( i2x2 == 2);
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(85,190);
    
    
    do {    i2x3 = arc4random_uniform(3);
        
        
    }
    while ( i2x3 == 2);
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(155,190);
    
    i2x4 = arc4random_uniform(3);
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(225,190);
    
    
    i3x1 = arc4random_uniform(3);
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(15,260);
    
    
    do {    i3x2 = arc4random_uniform(3);
        
        
    }
    while ( i3x2 == 2);
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(85,260);
    
    
    do {    i3x3 = arc4random_uniform(3);
        
        
    }
    while ( i3x3 == 2);
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(155,260);
    
    i3x4 = arc4random_uniform(3);
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(225,260);
    
    i4x1 = arc4random_uniform(3);
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(15,330);
    
    i4x2 = arc4random_uniform(3);
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(85,330);
    
    i4x3 = arc4random_uniform(3);
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(155,330);
    
    i4x4 = arc4random_uniform(3);
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(225,330);

    
    
    
    
    
    game = [CCMenu menuWithItems:int1x1toggle, int1x2toggle, int1x3toggle, int1x4toggle, int2x1toggle, int2x2toggle, int2x3toggle, int2x4toggle, int3x1toggle, int3x2toggle, int3x3toggle, int3x4toggle, int4x1toggle, int4x2toggle, int4x3toggle, int4x4toggle, pauseButton, nil];
    
    
    game.position = ccp(40, 30);
    
    [self addChild: game];


  
    return self;
	
}










//**************timer*******************

-(void) timerUpdate:(ccTime)delta
{    if(timerSeconds != 0 && timerBonusSeconds <= 0){
        timerSeconds--;
    
    
        timerSecondsString = [NSString stringWithFormat:@"%d", timerSeconds];
    
        [timerLabel setString:timerSecondsString];

}
else if(timerSeconds == 0)
{

    [self GameOverYouLose];
}
     
}

//**************timer*******************



//******Pause********

-(void) pauseButtonTapped: (id)sender
{
    [[CCDirector sharedDirector] pause];
    
    
    
    pauseLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 250) width: 320 height: 480];
    
    
    
    
    pauseLayer.position = ccp(0,0);
    
    
    [self addChild: pauseLayer z:8];
    
    resumePause = [CCMenuItemImage itemWithNormalImage:@"resume.png" selectedImage:@"resumeSel.png" target:self selector:@selector(resumeGame:)];
    
    mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
    
    restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
 
    
    pauseMenu = [CCMenu menuWithItems:resumePause, mainMenuPause, restartPause, nil];
    
    resumePause.position = ccp(0, 80);
    restartPause.position = ccp(0, 0);
    mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:pauseMenu z:10];
    
    game.isTouchEnabled = NO;
    
    
}



-(void) menuButtonTapped: (id)sender
{
    [[CCDirector sharedDirector] replaceScene: [[StartPageLayer alloc] init]];
}


-(void)resumeGame: (id)sender {
    
    [self removeChild:pauseMenu cleanup:YES];
    
    [self removeChild:pauseLayer cleanup:YES];
    game.isTouchEnabled = YES;
    [[CCDirector sharedDirector] resume];
}

-(void)restartButtonTapped: (id)sender {
    
    [self removeChild:pauseMenu cleanup:YES];
    
    [self removeChild:pauseLayer cleanup:YES];
    game.isTouchEnabled = YES;
    [[CCDirector sharedDirector] resume];
    [[CCDirector sharedDirector] replaceScene:[[GameLayer alloc] init]];
   
}


//*************pause***************

//************************************IsGameOver?*****************************

//15,120  225,330
-(void)CheckGameOver
{
    if (i1x2 == 2 )
    {
        
        [self GameOverLevelCompleted];
    }
}



-(void) GameOverLevelCompleted
{
    [[CCDirector sharedDirector] pause];
    
  

    
    border = [CCSprite spriteWithFile:@"border.png"];
    border.position = ccp(160,240);
    [self addChild:border z:8];
    
    
    gameOverLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 0) width: 240 height: 320];
    
    gameOverLayer.position = ccp(15, 120);
    
    
    [self addChild: gameOverLayer z:8];
    
    
    
        
        gameOver = [CCLabelTTF labelWithString:@"NICE JOB!" fontName:@"Arial" fontSize:20];
        gameOver.position = ccp(160, 330);
        [self addChild:gameOver z:9];
    
    
        gameOver = [CCLabelTTF labelWithString:@"You beat the level!" fontName:@"Arial" fontSize:20];
        gameOver.position = ccp(160, 300);
        [self addChild:gameOver z:9];
    
    
    
    mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
    
    restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
    
    
    GameOverMenu = [CCMenu menuWithItems: mainMenuPause, nil];
    
    mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:GameOverMenu z:8];
    
    game.isTouchEnabled = NO;
    
    
}

//200 , 238

-(void) GameOverYouLose
{
    [[CCDirector sharedDirector] pause];
    
    
    //background
    
    
    border = [CCSprite spriteWithFile:@"border.png"];
    border.position = ccp(160,240);
    [self addChild:border z:8];
    
    
    
    
    //background
    
    
    gameOverLayer = [CCLayerColor layerWithColor: ccc4(0, 0, 0, 0) width: 200 height: 238];
    
    gameOverLayer.position = ccp(40, 95);
    
    
    [self addChild: gameOverLayer z:2];
    
    gameOver = [CCLabelTTF labelWithString:@"You Lose!" fontName:@"Arial" fontSize:20];
    gameOver.position = ccp(160, 300);
    [self addChild:gameOver z:9];
    

    gameOver = [CCLabelTTF labelWithString:@"GAME OVER" fontName:@"Arial" fontSize:30];
    gameOver.position = ccp(160, 330);
    [self addChild:gameOver z:9];
    

    gameOver.color=ccc3(200,0,0);
    
        mainMenuPause = [CCMenuItemImage itemWithNormalImage:@"MainMenu.png" selectedImage:@"menuPausebuttonSel.png" target:self selector:@selector(menuButtonTapped:)];
        
        restartPause = [CCMenuItemImage itemWithNormalImage:@"restart.png" selectedImage:@"restartSel.png" target:self selector:@selector(restartButtonTapped:)];
        
        
        GameOverMenu = [CCMenu menuWithItems: mainMenuPause, nil];
        
        mainMenuPause.position = ccp(0, -80);
    
    
    [self addChild:GameOverMenu z:3];
    
    game.isTouchEnabled = NO;
    
    

}



//************************************IsGameOver?*****************************


-(void)int1x1ToggleTapped:(id)sender
{
    
    
    if((int1x1toggle.selectedItem == int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x1;
        NSLog(@"define selected number 1 as from i1x1 and %d", selectedNumber1);
        intselected1 = int1x1toggle;
    }
            
    
                
         else   if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
        
            
                       
            {
            selectedNumber2 = i1x1;
            NSLog(@"define selectedNumber 2 as from i1x1 and %d", selectedNumber2);
            intselected2 = int1x1toggle;
            intselected2.visible = NO;
            [intselected1 setSelectedIndex:0];
            intselected1.selectedIndex = 0;
            [self doOperation];
            i1x1 = result;
            [self new1x1];
            [self deleteToggles];
            [self CheckGameOver];
            
            }
 
    
           
        

}



-(void)int1x2ToggleTapped:(id)sender
{
    if((int1x2toggle.selectedItem == int1x2Sel && int1x1toggle.selectedItem != int1x1Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x2;
        NSLog(@"define selected number 1 as from i1x2 and %d", selectedNumber1);
        intselected1 = int1x2toggle;
    }
    
    
    else    if (selectedNumber1 == i1x1 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
        {
            
            
            
            selectedNumber2 = i1x2;
            NSLog(@"define selectedNumber 2 as from i1x2 and %d", selectedNumber2);
            intselected2 = int1x2toggle;
            intselected2.visible = NO;
            [self doOperation];
            [intselected1 setSelectedIndex:0];
            intselected1.selectedIndex = 0;
            i1x2 = result;
            [self new1x2];
            [self deleteToggles];
            [self CheckGameOver];

            
        }
    
  
    
}

-(void)int1x3ToggleTapped:(id)sender
{
    if((int1x3toggle.selectedItem == int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x3;
        NSLog(@"define selected number 1 as from i1x3 and %d", selectedNumber1);
        intselected1 = int1x3toggle;
    }
    
    
    else    if (selectedNumber1 == i1x1 || selectedNumber1 == i1x2 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i1x3;
        NSLog(@"define selectedNumber 2 as from i1x3 and %d", selectedNumber2);
        intselected2 = int1x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x3 = result;
        [self new1x3];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
    
}

-(void)int1x4ToggleTapped:(id)sender
{
    
    
    if((int1x4toggle.selectedItem == int1x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x1toggle.selectedItem != int1x1Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i1x4;
        NSLog(@"define selected number 1 as from i1x4 and %d", selectedNumber1);
        intselected1 = int1x4toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x1 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i1x4;
        NSLog(@"define selectedNumber 2 as from i1x4 and %d", selectedNumber2);
        intselected2 = int1x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i1x4 = result;
        [self new1x4];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int2x1ToggleTapped:(id)sender
{
    
    
    if((int2x1toggle.selectedItem == int2x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int1x1toggle.selectedItem != int1x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x1;
        NSLog(@"define selected number 1 as from i2x1 and %d", selectedNumber1);
        intselected1 = int2x1toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i1x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i2x1;
        NSLog(@"define selectedNumber 2 as from i2x1 and %d", selectedNumber2);
        intselected2 = int2x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x1 = result;
        [self new2x1];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int2x2ToggleTapped:(id)sender
{
    
    
    if((int2x2toggle.selectedItem == int2x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int1x1toggle.selectedItem != int1x1Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x2;
        NSLog(@"define selected number 1 as from i2x2 and %d", selectedNumber1);
        intselected1 = int2x2toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i1x1 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i2x2;
        NSLog(@"define selectedNumber 2 as from i2x2 and %d", selectedNumber2);
        intselected2 = int2x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x2 = result;
        [self new2x2];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int2x3ToggleTapped:(id)sender
{
    
    
    if((int2x3toggle.selectedItem == int2x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int1x1toggle.selectedItem != int1x1Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)
    {
        selectedNumber1 = i2x3;
        NSLog(@"define selected number 1 as from i2x3 and %d", selectedNumber1);
        intselected1 = int2x3toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i1x1 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i2x3;
        NSLog(@"define selectedNumber 2 as from i2x3 and %d", selectedNumber2);
        intselected2 = int2x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x3 = result;
        [self new2x3];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}


-(void)int2x4ToggleTapped:(id)sender
{
    
    
    if((int2x4toggle.selectedItem == int2x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int1x1toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i2x4;
        NSLog(@"define selected number 1 as from i2x4 and %d", selectedNumber1);
        intselected1 = int2x4toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i1x1 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i2x4;
        NSLog(@"define selectedNumber 2 as from i2x4 and %d", selectedNumber2);
        intselected2 = int2x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i2x4 = result;
        [self new2x4];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int3x1ToggleTapped:(id)sender
{
    
    
    if((int3x1toggle.selectedItem == int3x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int1x1toggle.selectedItem != int1x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x1;
        NSLog(@"define selected number 1 as from i3x1 and %d", selectedNumber1);
        intselected1 = int3x1toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i1x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i3x1;
        NSLog(@"define selectedNumber 2 as from i3x1 and %d", selectedNumber2);
        intselected2 = int3x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x1 = result;
        [self new3x1];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}


-(void)int3x2ToggleTapped:(id)sender
{
    
    
    if((int3x2toggle.selectedItem == int3x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x2;
        NSLog(@"define selected number 1 as from i3x2 and %d", selectedNumber1);
        intselected1 = int3x2toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i1x1 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i3x2;
        NSLog(@"define selectedNumber 2 as from i3x2 and %d", selectedNumber2);
        intselected2 = int3x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x2 = result;
        [self new3x2];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}


-(void)int3x3ToggleTapped:(id)sender
{
    
    
    if((int3x3toggle.selectedItem == int3x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x3;
        NSLog(@"define selected number 1 as from i3x3 and %d", selectedNumber1);
        intselected1 = int3x3toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i1x1 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i3x3;
        NSLog(@"define selectedNumber 2 as from i3x3 and %d", selectedNumber2);
        intselected2 = int3x3toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x3 = result;
        [self new3x3];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int3x4ToggleTapped:(id)sender
{
    
    
    if((int3x4toggle.selectedItem == int3x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int1x1toggle.selectedItem != int1x1Sel && int3x3toggle.selectedItem != int3x3Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i3x4;
        NSLog(@"define selected number 1 as from i3x4 and %d", selectedNumber1);
        intselected1 = int3x4toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i1x1 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i3x4;
        NSLog(@"define selectedNumber 2 as from i3x4 and %d", selectedNumber2);
        intselected2 = int3x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i3x4 = result;
        [self new3x4];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int4x1ToggleTapped:(id)sender
{
    
    
    if((int4x1toggle.selectedItem == int4x1Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int1x1toggle.selectedItem != int1x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x1;
        NSLog(@"define selected number 1 as from i4x1 and %d", selectedNumber1);
        intselected1 = int4x1toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i1x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i4x1;
        NSLog(@"define selectedNumber 2 as from i4x1 and %d", selectedNumber2);
        intselected2 = int4x1toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x1 = result;
        [self new4x1];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}


-(void)int4x2ToggleTapped:(id)sender
{
    
    
    if((int4x2toggle.selectedItem == int4x2Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int1x1toggle.selectedItem != int1x1Sel && int4x3toggle.selectedItem != int4x3Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x2;
        NSLog(@"define selected number 1 as from i4x2 and %d", selectedNumber1);
        intselected1 = int4x2toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i1x1 || selectedNumber1 == i4x3 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i4x2;
        NSLog(@"define selectedNumber 2 as from i4x2 and %d", selectedNumber2);
        intselected2 = int4x2toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x2 = result;
        [self new4x2];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int4x3ToggleTapped:(id)sender
{
    
    
    if((int4x3toggle.selectedItem == int4x3Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int1x1toggle.selectedItem != int1x1Sel && int4x4toggle.selectedItem != int4x4Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x3;
        NSLog(@"define selected number 1 as from i4x3 and %d", selectedNumber1);
        intselected1 = int4x3toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i1x1 ||selectedNumber1 == i4x4)
    {
        
        
        
        selectedNumber2 = i4x3;
        NSLog(@"define selectedNumber 2 as from i4x3 and %d", selectedNumber2);
        intselected2 = int4x3toggle;
        intselected2.visible = NO;
        
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x3 = result;
        [self new4x3];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}

-(void)int4x4ToggleTapped:(id)sender
{
    
    
    if((int4x4toggle.selectedItem == int4x4Sel && int1x2toggle.selectedItem != int1x2Sel && int1x3toggle.selectedItem != int1x3Sel && int1x4toggle.selectedItem != int1x4Sel && int2x1toggle.selectedItem != int2x1Sel && int2x2toggle.selectedItem != int2x2Sel && int2x3toggle.selectedItem != int2x3Sel && int2x4toggle.selectedItem != int2x4Sel && int3x1toggle.selectedItem != int3x1Sel && int3x2toggle.selectedItem != int3x2Sel && int3x3toggle.selectedItem != int3x3Sel && int3x4toggle.selectedItem != int3x4Sel && int4x1toggle.selectedItem != int4x1Sel && int4x2toggle.selectedItem != int4x2Sel && int4x3toggle.selectedItem != int4x3Sel && int1x1toggle.selectedItem != int1x1Sel) || selectedNumber1 == 9999)

    {
        selectedNumber1 = i4x4;
        NSLog(@"define selected number 1 as from i4x4 and %d", selectedNumber1);
        intselected1 = int4x4toggle;
    }
    
    
    
    else if (selectedNumber1 == i1x2 || selectedNumber1 == i1x3 || selectedNumber1 == i1x4 || selectedNumber1 == i2x1 || selectedNumber1 == i2x2 || selectedNumber1 == i2x3 || selectedNumber1 == i2x4 || selectedNumber1 == i3x1 || selectedNumber1 == i3x2 || selectedNumber1 == i3x3 || selectedNumber1 == i3x4 || selectedNumber1 == i4x1 || selectedNumber1 == i4x2 || selectedNumber1 == i4x3 ||selectedNumber1 == i1x1)
    {
        
        
        
        selectedNumber2 = i4x4;
        NSLog(@"define selectedNumber 2 as from i4x4 and %d", selectedNumber2);
        intselected2 = int4x4toggle;
        intselected2.visible = NO;
        [self doOperation];
        [intselected1 setSelectedIndex:0];
        intselected1.selectedIndex = 0;
        i4x4 = result;
        [self new4x4];
        [self deleteToggles];
        [self CheckGameOver];

        
    }
    
    
}



-(void) deleteToggles
{
    
    selectedNumber1 = 9999;
    selectedNumber2 = 9999;
    intselected1 = NULL;
    
    
}



//***************** color switching Operation *********************

//Operation
-(void) doOperation
{
    operationCount--;
    
    [OperationCount setString:[NSString stringWithFormat:@"Mixes Left = %i", operationCount]];
    
  
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    if (selectedNumber1 == 0 && selectedNumber2 == 0)
    {
        result = 0;
    }
    else if (selectedNumber1 == 0 && selectedNumber2 == 1)
    {
        result = 2;
    }

    else if (selectedNumber1 == 0 && selectedNumber2 == 2)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 3)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 0 && selectedNumber2 == 4)
    {
        result = 2;
    }
  
    else if (selectedNumber1 == 0 && selectedNumber2 == 5)
    {
        result = 3;
    }
    
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 1 && selectedNumber2 == 0)
    {
        result = 2;
    }

    else if (selectedNumber1 == 1 && selectedNumber2 == 1)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 2)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 3)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 4)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 1 && selectedNumber2 == 5)
    {
        result = 2;
    }
    
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 2 && selectedNumber2 == 0)
    {
        result = 1;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 1)
    {
        result = 0;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 2)
    {
        result = 2;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 3)
    {
        result = 1;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 4)
    {
        result = 0;
    }

    else if (selectedNumber1 == 2 && selectedNumber2 == 5)
    {
        result = 3;
    }
    
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 3 && selectedNumber2 == 0)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 1)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 2)
    {
        result = 5;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 3)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 4)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 3 && selectedNumber2 == 5)
    {
        result = 2;
    }
    
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    else if (selectedNumber1 == 4 && selectedNumber2 == 0)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 1)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 2)
    {
        result = 5;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 3)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 4)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 4 && selectedNumber2 == 5)
    {
        result = 0;
    }
    
    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 0)
    {
        result = 1;
    }
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 1)
    {
        result = 3;
    }
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 2)
    {
        result = 4;
    }
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 3)
    {
        result = 2;
    }
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 4)
    {
        result = 0;
    }
    
    else if (selectedNumber1 == 5 && selectedNumber2 == 5)
    {
        result = 5;
    }
    
    

    //0 = green; 1 = red; 2 = light blue; 3 = pink; 4 = blue; 5 = yellow

    [self checkOperationCount];
    NSLog(@"result is %i", result);
}




-(void) checkOperationCount
{
    if(operationCount == 0)
        
    {
        [self GameOverYouLose];

    }
}

//Operation


// Replace with New Image
-(void) new1x1
{
    NSLog(@"new1x1 called with %d", i1x1);
    NSString *imageSet1x1 = [NSString stringWithFormat:@"circle%d.png", i1x1];
    NSString *imageSet1x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x1];
    int1x1 = [CCMenuItemImage itemWithNormalImage:imageSet1x1
                                    selectedImage:imageSet1x1Sel target:nil selector:nil];
    int1x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x1Sel
                                       selectedImage:imageSet1x1 target:nil selector:nil];
    int1x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x1ToggleTapped:) items:int1x1, int1x1Sel, nil];
    int1x1toggle.position = ccp(15,120);
    game = [CCMenu menuWithItems:int1x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];

}

-(void) new1x2
{
    NSString *imageSet1x2 = [NSString stringWithFormat:@"circle%d.png", i1x2];
    NSString *imageSet1x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x2];
    
    int1x2 = [CCMenuItemImage itemWithNormalImage:imageSet1x2
                                    selectedImage:imageSet1x2Sel target:nil selector:nil];
    int1x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x2Sel
                                       selectedImage:imageSet1x2 target:nil selector:nil];
    int1x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x2ToggleTapped:) items:int1x2, int1x2Sel, nil];
    int1x2toggle.position = ccp(85,120);
    game = [CCMenu menuWithItems:int1x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x3
{
    NSString *imageSet1x3 = [NSString stringWithFormat:@"circle%d.png", i1x3];
    NSString *imageSet1x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x3];
    
    int1x3 = [CCMenuItemImage itemWithNormalImage:imageSet1x3
                                    selectedImage:imageSet1x3Sel target:nil selector:nil];
    int1x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x3Sel
                                       selectedImage:imageSet1x3 target:nil selector:nil];
    int1x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x3ToggleTapped:) items:int1x3, int1x3Sel, nil];
    int1x3toggle.position = ccp(155,120);
    game = [CCMenu menuWithItems:int1x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new1x4
{ 
    NSString *imageSet1x4 = [NSString stringWithFormat:@"circle%d.png", i1x4];
    NSString *imageSet1x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i1x4];
    
    int1x4 = [CCMenuItemImage itemWithNormalImage:imageSet1x4
                                    selectedImage:imageSet1x4Sel target:nil selector:nil];
    int1x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet1x4Sel
                                       selectedImage:imageSet1x4 target:nil selector:nil];
    int1x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int1x4ToggleTapped:) items:int1x4, int1x4Sel, nil];
    int1x4toggle.position = ccp(225,120);
    game = [CCMenu menuWithItems:int1x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x1
{
    NSString *imageSet2x1 = [NSString stringWithFormat:@"circle%d.png", i2x1];
    NSString *imageSet2x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x1];
    
    int2x1 = [CCMenuItemImage itemWithNormalImage:imageSet2x1
                                    selectedImage:imageSet2x1Sel target:nil selector:nil];
    int2x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x1Sel
                                       selectedImage:imageSet2x1 target:nil selector:nil];
    int2x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x1ToggleTapped:) items:int2x1, int2x1Sel, nil];
    int2x1toggle.position = ccp(15,190);
    game = [CCMenu menuWithItems:int2x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new2x2
{
    NSString *imageSet2x2 = [NSString stringWithFormat:@"circle%d.png", i2x2];
    NSString *imageSet2x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x2];
    
    int2x2 = [CCMenuItemImage itemWithNormalImage:imageSet2x2
                                    selectedImage:imageSet2x2Sel target:nil selector:nil];
    int2x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x2Sel
                                       selectedImage:imageSet2x2 target:nil selector:nil];
    int2x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x2ToggleTapped:) items:int2x2, int2x2Sel, nil];
    int2x2toggle.position = ccp(85,190);
    game = [CCMenu menuWithItems:int2x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x3
{
    NSString *imageSet2x3 = [NSString stringWithFormat:@"circle%d.png", i2x3];
    NSString *imageSet2x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x3];
    
    int2x3 = [CCMenuItemImage itemWithNormalImage:imageSet2x3
                                    selectedImage:imageSet2x3Sel target:nil selector:nil];
    int2x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x3Sel
                                       selectedImage:imageSet2x3 target:nil selector:nil];
    int2x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x3ToggleTapped:) items:int2x3, int2x3Sel, nil];
    int2x3toggle.position = ccp(155,190);
    
    game = [CCMenu menuWithItems:int2x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new2x4{
    NSString *imageSet2x4 = [NSString stringWithFormat:@"circle%d.png", i2x4];
    NSString *imageSet2x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i2x4];
    
    int2x4 = [CCMenuItemImage itemWithNormalImage:imageSet2x4
                                    selectedImage:imageSet2x4Sel target:nil selector:nil];
    int2x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet2x4Sel
                                       selectedImage:imageSet2x4 target:nil selector:nil];
    int2x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int2x4ToggleTapped:) items:int2x4, int2x4Sel, nil];
    int2x4toggle.position = ccp(225,190);
    
    game = [CCMenu menuWithItems:int2x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x1{
    NSString *imageSet3x1 = [NSString stringWithFormat:@"circle%d.png", i3x1];
    NSString *imageSet3x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x1];
    
    int3x1 = [CCMenuItemImage itemWithNormalImage:imageSet3x1
                                    selectedImage:imageSet3x1Sel target:nil selector:nil];
    int3x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x1Sel
                                       selectedImage:imageSet3x1 target:nil selector:nil];
    int3x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x1ToggleTapped:) items:int3x1, int3x1Sel, nil];
    int3x1toggle.position = ccp(15,260);
    game = [CCMenu menuWithItems:int3x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new3x2{
    NSString *imageSet3x2 = [NSString stringWithFormat:@"circle%d.png", i3x2];
    NSString *imageSet3x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x2];
    
    int3x2 = [CCMenuItemImage itemWithNormalImage:imageSet3x2
                                    selectedImage:imageSet3x2Sel target:nil selector:nil];
    int3x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x2Sel
                                       selectedImage:imageSet3x2 target:nil selector:nil];
    int3x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x2ToggleTapped:) items:int3x2, int3x2Sel, nil];
    int3x2toggle.position = ccp(85,260);
    game = [CCMenu menuWithItems:int3x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x3{
    NSString *imageSet3x3 = [NSString stringWithFormat:@"circle%d.png", i3x3];
    NSString *imageSet3x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x3];
    
    int3x3 = [CCMenuItemImage itemWithNormalImage:imageSet3x3
                                    selectedImage:imageSet3x3Sel target:nil selector:nil];
    int3x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x3Sel
                                       selectedImage:imageSet3x3 target:nil selector:nil];
    int3x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x3ToggleTapped:) items:int3x3, int3x3Sel, nil];
    int3x3toggle.position = ccp(155,260);
    
    game = [CCMenu menuWithItems:int3x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new3x4{
    NSString *imageSet3x4 = [NSString stringWithFormat:@"circle%d.png", i3x4];
    NSString *imageSet3x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i3x4];
    
    int3x4 = [CCMenuItemImage itemWithNormalImage:imageSet3x4
                                    selectedImage:imageSet3x4Sel target:nil selector:nil];
    int3x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet3x4Sel
                                       selectedImage:imageSet3x4 target:nil selector:nil];
    int3x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int3x4ToggleTapped:) items:int3x4, int3x4Sel, nil];
    int3x4toggle.position = ccp(225,260);
    
    game = [CCMenu menuWithItems:int3x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x1{
    NSString *imageSet4x1 = [NSString stringWithFormat:@"circle%d.png", i4x1];
    NSString *imageSet4x1Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x1];
    
    int4x1 = [CCMenuItemImage itemWithNormalImage:imageSet4x1
                                    selectedImage:imageSet4x1Sel target:nil selector:nil];
    int4x1Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x1Sel
                                       selectedImage:imageSet4x1 target:nil selector:nil];
    int4x1toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x1ToggleTapped:) items:int4x1, int4x1Sel, nil];
    int4x1toggle.position = ccp(15,330);
    
    game = [CCMenu menuWithItems:int4x1toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}

-(void) new4x2{
    NSString *imageSet4x2 = [NSString stringWithFormat:@"circle%d.png", i4x2];
    NSString *imageSet4x2Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x2];
    
    int4x2 = [CCMenuItemImage itemWithNormalImage:imageSet4x2
                                    selectedImage:imageSet4x2Sel target:nil selector:nil];
    int4x2Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x2Sel
                                       selectedImage:imageSet4x2 target:nil selector:nil];
    int4x2toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x2ToggleTapped:) items:int4x2, int4x2Sel, nil];
    int4x2toggle.position = ccp(85,330);
    game = [CCMenu menuWithItems:int4x2toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x3{
    NSString *imageSet4x3 = [NSString stringWithFormat:@"circle%d.png", i4x3];
    NSString *imageSet4x3Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x3];
    
    int4x3 = [CCMenuItemImage itemWithNormalImage:imageSet4x3
                                    selectedImage:imageSet4x3Sel target:nil selector:nil];
    int4x3Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x3Sel
                                       selectedImage:imageSet4x3 target:nil selector:nil];
    int4x3toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x3ToggleTapped:) items:int4x3, int4x3Sel, nil];
    int4x3toggle.position = ccp(155,330);
    game = [CCMenu menuWithItems:int4x3toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
-(void) new4x4{
    NSString *imageSet4x4 = [NSString stringWithFormat:@"circle%d.png", i4x4];
    NSString *imageSet4x4Sel = [NSString stringWithFormat:@"circle%dsel.png", i4x4];
    
    int4x4 = [CCMenuItemImage itemWithNormalImage:imageSet4x4
                                    selectedImage:imageSet4x4Sel target:nil selector:nil];
    int4x4Sel = [CCMenuItemImage itemWithNormalImage:imageSet4x4Sel
                                       selectedImage:imageSet4x4 target:nil selector:nil];
    int4x4toggle = [CCMenuItemToggle itemWithTarget:self
                                           selector:@selector(int4x4ToggleTapped:) items:int4x4, int4x4Sel, nil];
    int4x4toggle.position = ccp(225,330);
    
    game = [CCMenu menuWithItems:int4x4toggle, nil];
    game.position = ccp(40, 30);
    [self addChild:game];
    
}
//Replace with New Image


//***************** color switching Operation *********************

@end
