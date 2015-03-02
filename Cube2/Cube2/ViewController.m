//
//  ViewController.m
//  Cube2
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
@import SceneKit;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SCNView *sceneView;

@property (nonatomic,strong) SCNNode *cubeNode;
@property (nonatomic,strong) SCNNode *pyramidNode;
@property (nonatomic,strong) SCNNode *sphereNode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self sceneSetUp];
    
}

- (void)sceneSetUp {
    
    
    self.sceneView.backgroundColor = [UIColor darkGrayColor];
    
    // Create the scene
    SCNScene *scene = [SCNScene scene];
    
    
    
    
    // Create a camera and attach it to a node
    SCNCamera *camera = [SCNCamera camera];
    camera.xFov = 10;
    camera.yFov = 45;
    
    SCNNode *cameraNode = [SCNNode node];
    cameraNode.camera = camera;
    cameraNode.position = SCNVector3Make(0, 0, 50);
    [scene.rootNode addChildNode:cameraNode]; // Place camera in the scene
    
    
    
    
    // Create a cube and place it in the scene
    SCNPyramid *pyramid = [SCNPyramid pyramidWithWidth:5 height:6 length:5];
    pyramid.firstMaterial.diffuse.contents = [UIColor colorWithRed:0.879 green:0.694 blue:0.859 alpha:1.000];
    SCNNode *pyramidNode = [SCNNode nodeWithGeometry:pyramid];
    [scene.rootNode addChildNode:pyramidNode];
    self.pyramidNode = pyramidNode;
    self.pyramidNode.position = SCNVector3Make(0, 8.5, 0);
    
    SCNBox *cube = [SCNBox boxWithWidth:8 height:7 length:6 chamferRadius:0];
    cube.firstMaterial.diffuse.contents = [UIColor colorWithRed:0.900 green:0.300 blue:0.100 alpha:1.000];
    SCNNode *cubeNode = [SCNNode nodeWithGeometry:cube];
    [scene.rootNode addChildNode:cubeNode];
    self.cubeNode = cubeNode;
    self.cubeNode.position = SCNVector3Make(0, -10, 0);
    
    SCNSphere *sphere = [SCNSphere sphereWithRadius:4];
    sphere.firstMaterial.diffuse.contents = [UIColor colorWithRed:0.100 green:0.800 blue:0.300 alpha:1.000];
    SCNNode *sphereNode = [SCNNode nodeWithGeometry:sphere];
    [scene.rootNode addChildNode:sphereNode];
    self.sphereNode = sphereNode;
    self.sphereNode.position = SCNVector3Make(0, 0, 0);
    
    
    
    // Add an animation to the cube.
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"rotation"];
    animation.values = @[[NSValue valueWithSCNVector4:SCNVector4Make(1, 1, 0.3, 0 * M_PI)],
                         [NSValue valueWithSCNVector4:SCNVector4Make(.5, .5, 0.6, 1 * M_PI)],
                         [NSValue valueWithSCNVector4:SCNVector4Make(1, 1, 0.3, 2 * M_PI)]];
    animation.duration = 5;
    animation.repeatCount = HUGE_VALF;
    [self.pyramidNode addAnimation:animation forKey:@"rotation"];
    self.pyramidNode.paused = YES; // Start out paused
    
    
    CAKeyframeAnimation *cubeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"scale"];
    cubeAnimation.values = @[[NSValue valueWithSCNVector3:SCNVector3Make(1, 1, 1)],
                             [NSValue valueWithSCNVector3:SCNVector3Make(.5, .5, .5)],
                             [NSValue valueWithSCNVector3:SCNVector3Make(1, 1, 1)]];
    cubeAnimation.duration = 5;
    cubeAnimation.repeatCount = HUGE_VALF;
    [self.cubeNode addAnimation:cubeAnimation forKey:@"scale"];
    self.cubeNode.paused = YES;
    
    CAKeyframeAnimation *sphereAnimation = [CAKeyframeAnimation animationWithKeyPath:@"scale"];
    sphereAnimation.values = @[[NSValue valueWithSCNVector3:SCNVector3Make(2, 2, 2)],
                               [NSValue valueWithSCNVector3:SCNVector3Make(.1, .1, .1)],
                               [NSValue valueWithSCNVector3:SCNVector3Make(1, 1, 1)]];
    sphereAnimation.duration = 5;
    sphereAnimation.repeatCount = HUGE_VALF;
    [self.sphereNode addAnimation:sphereAnimation forKey:@"scale"];
    self.sphereNode.paused = YES;
    
    self.sceneView.scene = scene;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.sceneView];
    SCNHitTestResult *hitTestResult = [[self.sceneView hitTest:touchPoint options:nil]firstObject];
    SCNNode *hitNode = hitTestResult.node;
    hitNode.paused = !hitNode.paused;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
