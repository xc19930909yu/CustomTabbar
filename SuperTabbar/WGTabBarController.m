//
//  WGTabBarController.m
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//

#import "WGTabBarController.h"
//#import "VLOVELM_XDNMainViewController.h"
#import "GLNavigationController.h"

static WGTabBarController *tabbarCtl;
@implementation WGTabBarController

+ (WGTabBarController *)wgTabBarController{
    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        tabbarCtl = [[WGTabBarController alloc] init];
//    });
    
    WGTabBarController *tabbarCtl = [[WGTabBarController alloc] init];
    
    return tabbarCtl;
}

+ (void)destroyInstance
{
//    tabbarCtl = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewControllers];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshSessionBadge) name:@"comeNewMessage" object:nil];
    
    [self refreshSessionBadge];
}
- (void)addChildViewControllers
{
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"ViewController",@"ViewController",@"ViewController",@"ViewController"]]; // SquareController
    NSArray *imgArray = @[@"VLOVETPM_shouye_off",@"VLOVETPM_faxian_off",@"VLOVETPM_xiaoxi_off",@"VLOVETPM_wo_off"];
    NSArray *selectImageArray = @[@"VLOVETPM_shouye_on",@"VLOVETPM_faxian_on",@"VLOVETPM_xiaoxi_on",@"VLOVETPM_wo_on"];
    NSArray *titles = @[@"",@"",@"",@""];
    
    for(int i =0;i<array.count;i++)
    {
        UIViewController *vc = [[NSClassFromString(array[i]) alloc] init];
        GLNavigationController *nvc = [[GLNavigationController alloc] initWithRootViewController:vc];
        nvc.interactivePopGestureRecognizer.delegate = nil;
        /*
         最好在这里不要设置与VC视图显示相关的内容）比如：背景颜色） 如果设置了，该VC的viewDidLoad 方法就会加载 这不是我们想看到的
         Don't set anything to show in the VC view here, like :(background color) if set, the viewDidLoad method of the VC will load, which is not what we want to see.
         */
        //        vc.view.backgroundColor = [UIColor whiteColor];
        
        /*
         如果想用系统的TabBar，解除以下3行注释 删除 【****】代码
         if you want to use the system's TabBar, uncomment the following 3 lines and delete the [***] code
         */
        //        vc.tabBarItem.title = titles[i];
        //        vc.tabBarItem.image = [UIImage imageNamed:imgArray[i]];
        //        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [array replaceObjectAtIndex:i withObject:nvc];
    }
    self.viewControllers = array;
    self.tabBar.tintColor = [UIColor colorWithRed:0.51 green:0.64 blue:0.96 alpha:1.00];
    /*
     以下为【****】代码 哈哈哈哈哈哈
     The following code is [****]
     */
    /// 将自定义的覆盖到原来的tabBar上面
    /// Overwrite the TabBar to the TabBar of the system
    self.wgTabBarView = [[WGTabBarView alloc] initWithTitles:titles itemImages:imgArray selectImages:selectImageArray];
    self.wgTabBarView.delegate = self;
    self.wgTabBarView.tintColor = [UIColor colorWithRed:246/255.0 green:67/255.0 blue:93/255.0 alpha:1.0]; //UIColorFromRGBA(0xF6435D, 1); // rgba(246, 67, 93, 1)
    [self.tabBar addSubview:self.wgTabBarView];
   // SharedData.rootNav = self.viewControllers[0];
    
}
/* 以下为【****】代码
 The following code is [****]
 */
- (void)selectIndex:(NSInteger)index{
    /// 通知 切换视图控制器
    [self setSelectedIndex:index];
   // SharedData.rootNav = self.viewControllers[index];
}
- (void)setSelectedIndex:(NSUInteger)selectedIndex{
    
   // SharedData.rootNav = self.viewControllers[selectedIndex];
    [super setSelectedIndex:selectedIndex];
    if(self.wgTabBarView)
    {
        self.wgTabBarView.selectIndex = selectedIndex;
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)refreshSessionBadge{
    //    NSInteger num1 = SharedMessage.myVcoinMessageNum + SharedMessage.commentMessageNum + SharedMessage.callRecordMessageNum + SharedMessage.unreadSessionNum + SharedMessage.reserveMessageNum;
    //BOOL vCoinBadage=false;
    //BOOL tongHuaBadge=false;
    //BOOL yuyueBadge=false;

    //NSUserDefaults *userM = [NSUserDefaults standardUserDefaults];
    //NSDictionary *dic = [userM objectForKey:@"YXModelBadge"];
    //NSString *userId = dic[@"userId"];
//    if (userId && [[NSString stringWithFormat:@"%@",ShareManager.VLOVEDXM_userId] isEqualToString:userId]) {
//        vCoinBadage = [dic[@"vcoinflag"] boolValue];
//        tongHuaBadge = [dic[@"tonghuaflag"] boolValue];
//        yuyueBadge = [dic[@"yuyueflag"] boolValue];
//    }

//    NSInteger num =  SharedMessage.unreadSessionNum;
 //   if(num>0||vCoinBadage||tongHuaBadge||yuyueBadge)
        //显示红点
       // [self.wgTabBarView setBadge:-1 index:2];
    
    [self.wgTabBarView setBadge:99 index:2];
//    else
//        //取消红点
//        [self.wgTabBarView setBadge:-99 index:2];
    
    // git暂存区
}


@end
