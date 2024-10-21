#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//%hook AppDelegate // 或者替换为应用的入口控制器类
//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//
//    // 弹出注入成功的提示框
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"注入成功"
//                                                                   message:@"Tweak 已成功注入"
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
//    [alert addAction:okAction];
//    
//    // 获取根视图控制器并显示提示框
//    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
//    UIViewController *rootViewController = keyWindow.rootViewController;
//    [rootViewController presentViewController:alert animated:YES completion:nil];
//    
//    return %orig(application, launchOptions); // 调用原方法
//}
//
//%end

%hook NSURLSession

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler {

    // 模拟返回错误，表示网络不可用 Simulation returns error indicating network is unavailable
    NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:NSURLErrorNotConnectedToInternet userInfo:nil];
    completionHandler(nil, nil, error);
    
    return nil; // 返回 nil 来阻止请求 Return nil to block the request
}

%end

%hook NSURLConnection

+ (NSData *)sendSynchronousRequest:(NSURLRequest *)request returningResponse:(NSURLResponse **)response error:(NSError **)error {

    // 模拟返回错误，表示网络不可用 Simulation returns error indicating network is unavailable
    if (error) {
        *error = [NSError errorWithDomain:NSURLErrorDomain code:NSURLErrorNotConnectedToInternet userInfo:nil];
    }
    
    return nil; // 返回 nil 来阻止请求 Return nil to block the request
}

%end

%hook AFHTTPSessionManager

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler {

    NSLog(@"Hooked AFNetworking request: %@", request.URL.absoluteString);

    // 模拟返回错误，表示网络不可用 Simulation returns error indicating network is unavailable
    NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:NSURLErrorNotConnectedToInternet userInfo:nil];
    completionHandler(nil, nil, error);
    
    return nil; // 返回 nil 来阻止请求 Return nil to block the request
}

%end

%hook NSURLConnection

+ (NSURLConnection *)connectionWithRequest:(NSURLRequest *)request delegate:(id)delegate {
    // 模拟网络不可用
    NSLog(@"Hooked NSURLConnection");
    return nil;
}

- (void)start {
    NSLog(@"NSURLConnection start hooked");
}

%end

%hook CFSocketStream

- (void)open {
    NSLog(@"Hooked CFSocketStream open");
}

- (void)close {
    NSLog(@"Hooked CFSocketStream close");
}

%end

%hook NSURLProtocol

+ (BOOL)canInitWithRequest:(NSURLRequest *)request {
    NSLog(@"Hooked NSURLProtocol");
    return NO; // 阻止任何网络请求 Block any network requests
}

%end

%hook WKWebView

- (void)loadRequest:(NSURLRequest *)request {
    NSLog(@"WKWebView network request intercepted: %@", request.URL.absoluteString);
}

%end

%hook GCDAsyncSocket

- (void)connectToHost:(NSString *)host onPort:(uint16_t)port error:(NSError **)errPtr {
    NSLog(@"GCDAsyncSocket connection blocked to host: %@", host);
    *errPtr = [NSError errorWithDomain:@"GCDAsyncSocketErrorDomain" code:1 userInfo:nil];
}

%end

%hook AFURLSessionManager

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler {
    NSLog(@"Blocked AFNetworking request: %@", request.URL.absoluteString);
    NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:NSURLErrorNotConnectedToInternet userInfo:nil];
    completionHandler(nil, nil, error);

    return nil; // 阻止网络请求 Block network requests
}

%end


