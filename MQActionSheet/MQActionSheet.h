//
//  MQActionSheet.h
//  MQ
//
//  Created by wywk on 16/3/24.
//  Copyright © 2016年 juchuang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define WEAKSELF typeof(self) __weak weakSelf = self;

typedef void(^ClickedIndexBlock)(NSInteger index);

@interface MQActionSheet : UIView

@property (strong,nonatomic) NSString *titleText;
@property (strong,nonatomic) NSString *cancelText;

/**
 *  @brief 初始化MQActionSheet(Block回调结果)
 *
 *  @param title             ActionSheet标题
 *  @param block             Block回调选中的Index
 *  @param cancelButtonTitle 取消按钮标题
 *  @param otherButtonTitles 其他按钮标题
 *
 *  @return MQActionSheet
 */
- (instancetype)initWithTitle:(NSString *)title
            cancelButtonTitle:(NSString *)cancelButtonTitle
            otherButtonTitles:(NSArray *)otherButtonTitles
               clickedAtIndex:(ClickedIndexBlock)block;



/**
 *  @brief 显示ActionSheet
 */
- (void)show;

/**
 *  @brief 添加按钮
 *
 *  @param title 按钮标题
 *
 *  @return 按钮的Index
 */
- (NSInteger)addButtonWithTitle:(NSString *)title;

@end
