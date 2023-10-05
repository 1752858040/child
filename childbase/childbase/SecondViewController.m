//
//  SecondViewController.m
//  childbase
//
//  Created by liht29 on 2023/10/5.
//  Copyright © 2023年 liht29. All rights reserved.
//

#import "SecondViewController.h"
#import "model/Student.h"

@interface SecondViewController()

@property (nonatomic, strong) UITextField *usernameTextField;
@property (nonatomic, strong) UITextField *userIDTextField;
@property (nonatomic, strong) UIDatePicker *birthdayDatePicker;
@property (nonatomic, strong) UIDatePicker *testDatePicker;
@property (nonatomic, strong) UISegmentedControl *conditionSegmentedControl;
@property (nonatomic, strong) UISegmentedControl *genderSegmentedControl;
@property (nonatomic, strong) UIPickerView *groupPickerView;
@property (nonatomic, strong) UIButton *submitButton;

@property (nonatomic, strong) NSArray *groupsArray;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取主屏幕的屏幕尺寸
    CGRect mainScreenBounds = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = mainScreenBounds.size.width;
    CGFloat screenHeight = mainScreenBounds.size.height;
    
    NSLog(@"屏幕宽度：%f", screenWidth);
    NSLog(@"屏幕高度：%f", screenHeight);
    
    CGFloat itemWidth = screenWidth / 2;
    CGFloat itemHeight = 50;
    CGFloat topPadding = 30;
    CGFloat itemPadding =  50;
    
    CGFloat x = screenWidth / 2 - itemWidth / 2;
    CGFloat labelWidth = 100;
    CGFloat fieldWidth = 300;
    CGFloat fieldx = x + labelWidth;
    
    // 创建用户名标签和文本框
    UILabel *usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding, labelWidth, itemHeight)];
    usernameLabel.text = @"儿童姓名 :";
    [self.view addSubview:usernameLabel];
    
    self.usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(fieldx , topPadding , fieldWidth, itemHeight)];
    self.usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.usernameTextField];
    
    // 儿童编号
    UILabel *userIDLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding, labelWidth, itemHeight)];
    userIDLabel.text = @"儿童编号 :";
    [self.view addSubview:userIDLabel];
    
    self.userIDTextField = [[UITextField alloc] initWithFrame:CGRectMake(fieldx , topPadding + itemPadding , fieldWidth, itemHeight)];
    self.userIDTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.userIDTextField];
    
    // 创建生日标签和日期选择器
    UILabel *birthdayLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding*2, labelWidth, itemHeight)];
    birthdayLabel.text = @"出生日期:";
    [self.view addSubview:birthdayLabel];
    self.birthdayDatePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(fieldx, topPadding + itemPadding*2, fieldWidth, itemHeight)];
    self.birthdayDatePicker.datePickerMode = UIDatePickerModeDate;
    [self.view addSubview:self.birthdayDatePicker];
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding*3, labelWidth, itemHeight)];
    testLabel.text = @"测试日期:";
    [self.view addSubview:testLabel];
    self.testDatePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(fieldx, topPadding + itemPadding*3, fieldWidth, itemHeight)];
    self.testDatePicker.datePickerMode = UIDatePickerModeDate;
    [self.view addSubview:self.testDatePicker];
    
    // 创建性别标签和单选框
    UILabel *conditionLabel= [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding * 4, labelWidth, itemHeight)];
    conditionLabel.text = @"入学情况:";
    [self.view addSubview:conditionLabel];
    
    self.conditionSegmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"a", @"b"]];
    self.conditionSegmentedControl.frame = CGRectMake(fieldx, topPadding + itemPadding * 4, fieldWidth, itemHeight);
    self.conditionSegmentedControl.selectedSegmentIndex = 0;
    [self.view addSubview:self.conditionSegmentedControl];
    
    // 创建性别标签和单选框
    UILabel *genderLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding * 5, labelWidth, itemHeight)];
    genderLabel.text = @"性别:";
    [self.view addSubview:genderLabel];
    
    self.genderSegmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"男", @"女"]];
    self.genderSegmentedControl.frame = CGRectMake(fieldx, topPadding + itemPadding * 5, fieldWidth, itemHeight);
    self.genderSegmentedControl.selectedSegmentIndex = 0; // 默认选中男性
    [self.view addSubview:self.genderSegmentedControl];
    
    // 创建Group标签和下拉框
    UILabel *groupLabel = [[UILabel alloc] initWithFrame:CGRectMake(x, topPadding + itemPadding * 6, labelWidth, itemHeight)];
    groupLabel.text = @"Group:";
    [self.view addSubview:groupLabel];
    
    self.groupsArray = @[@"Group A", @"Group B", @"Group C", @"Group D"]; // 下拉框选项数组
    
    self.groupPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(fieldx, topPadding + itemPadding * 6, fieldWidth, itemHeight)];
    self.groupPickerView.dataSource = self;
    self.groupPickerView.delegate = self;
    [self.view addSubview:self.groupPickerView];
    
    // 创建提交按钮
    self.submitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.submitButton.frame = CGRectMake(fieldx, topPadding + itemPadding * 7, 280, 30);
    [self.submitButton setTitle:@"提交" forState:UIControlStateNormal];
    [self.submitButton addTarget:self action:@selector(submitButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.submitButton];
}

- (void)submitButtonTapped {
    NSString *username = self.usernameTextField.text;
    NSDate *birthday = self.birthdayDatePicker.date;
    NSString *gender = [self.genderSegmentedControl titleForSegmentAtIndex:self.genderSegmentedControl.selectedSegmentIndex];
    NSString *selectedGroup = self.groupsArray[[self.groupPickerView selectedRowInComponent:0]];
    
    // 在这里执行提交操作，可以将用户名、生日、性别和选定的Group发送到服务器或进行其他处理
    NSLog(@"用户名: %@", username);
    NSLog(@"生日: %@", birthday);
    NSLog(@"性别: %@", gender);
    NSLog(@"Group: %@", selectedGroup);
}

#pragma mark - UIPickerViewDataSource and UIPickerViewDelegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1; // 在这里只有一个组件
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.groupsArray.count; // 返回下拉框选项的数量
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.groupsArray[row]; // 返回指定行的选项
}

@end
