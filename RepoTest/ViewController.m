//
//  ViewController.m
//  RepoTest
//
//  Created by Andrew-S-Loptop on 2017/3/24.
//  Copyright © 2017年 shanghaiwow. All rights reserved.
//

#import "ViewController.h"
#import "RedViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>

@interface ViewController ()

@property (strong, nonatomic) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.button];
    
}


- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self.button sizeToFit];
    [self.button centerEqualToView:self.view];
}

#pragma mark - event response
- (void)buttonDidTapped:(UIButton *)button {
    
    RedViewController *viewController = [[RedViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    
}


#pragma mark - getters and setters
- (UIButton *)button {
    if (!_button) {
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_button setTitle:@"show red view controller" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(buttonDidTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
