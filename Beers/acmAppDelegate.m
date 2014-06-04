//
//  acmAppDelegate.m
//  Beers
//
//  Created by Antonio Chamorro on 02/06/14.
//  Copyright (c) 2014 acm. All rights reserved.
//

#import "acmAppDelegate.h"
#import "Beer.h"
#import "person.h"

@implementation acmAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*se comenta por el ejemplo del storyboard
     
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
*/
    //declaro la clase Beer y le mando un mesaje de tipo alloc y el init para instanciarlo
    Beer *mahou = [[Beer alloc] init];
    Beer *cruzcampo = [Beer new]; //bulling
    Beer *estrellaDamm = [[Beer alloc] init];
    Beer *coronita = [[Beer alloc] init];
    
    /*mahou->name=@"Mahou";
    cruzcampo->name=@"Cruzcampo";
    estrellaDamm->name=@"Estrella Damm";
    coronita->name=@"Coronita";*/
    
    [mahou setName:@"Mahou"];
    [cruzcampo setName:@"Cruzcampo"];
    [estrellaDamm setName:@"Estrella Damm"];
    [coronita setName:@"Coronita"];
    
    [mahou setColor:@"Red"];
    [cruzcampo setColor:@"Rubia"];
    [estrellaDamm setColor:@"Mas rubia"];
    [coronita setColor:@"Clara"];
    
    [mahou setGrade:4];
    [cruzcampo setGrade:5];
    [estrellaDamm setGrade:6];
    [coronita setGrade:7];

    //se añadio como mejora al lenguaje
    //invoca el metodo con el "."
    mahou.name = @" nueva mahou";
    //estas dos linea son iguales
    [mahou setName:@"Mahou"];
    //importante: no se pueden llamar a otros métodos con el ".", solo a los setters y getters
    //los metodos se deben llamar setXXXX y getXXXX
    
    
    
    
    //se envia un mensaje al objeto mahou
    [mahou printBeerInfo];
    
    [mahou printBeerInfoWithHeader:@"------"];
    [mahou printBeerInfoWithHeader:@"------" andFooter:@"------"];
    [mahou printBeerInfoWithHeader:@"------" andFooter:@"------" andNumberOfEmojis:10];
    
    
    
    // [mahou printBeerInfoWithHeader:[@"------" andFooter:@""];
      
    
    //se envia un mensaje al objeto mahou
    [mahou printBeerInfoWithHeader:@"CABECERA" andFooter:@"PIE" andNumberOfEmojis:10];
    
    
    
    /* ----person-------   */
    Person *diego = [[Person alloc] init];
    //son lo mismo
    diego.name = @"Diego";
    [diego setName:@"Diego"];
    
    //son lo mismo
    diego.address = @"calle blas";
    [diego setAddress:@"calle blas"];
    
    diego.age = 30;
    [diego setAge:30];
    
    //sintaxis normal
    Person *g = [[Person alloc] init];
    
    //ejemplo metodos de conveniencia
    Person *k = [Person personWithName:@"pepe"];
    
    //el nil hace falta como valor centinela, por si no peta
    NSArray *pList = [NSArray arrayWithObjects:g, k, nil];
    
    //otra forma de crearse un array
    NSArray *p2List = @[g, k];
    
    /*
     no se puede redimensionar un NSArray
     Person *h = [Person personWithName:@"hhhh"];
    p2List.a
    */
    
    for(Person *pe in pList)
    {
        
        NSLog(@"%@", pe.name);
        
    }
    

    
    //otra forma de crearse un array mutable
    NSMutableArray *partyList = [NSMutableArray arrayWithObjects:g,k, nil];
    //lo mismo
    partyList = [NSMutableArray arrayWithArray:@[g,k]];
    for(int i=0; i<100; i++)
    {
        NSString *s = [NSString stringWithFormat:@"Persona %d",i];
        Person *pi = [Person personWithName:s];
        [partyList addObject:pi];
                     
    }
    
    
    
    
    //p2MutableList
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
