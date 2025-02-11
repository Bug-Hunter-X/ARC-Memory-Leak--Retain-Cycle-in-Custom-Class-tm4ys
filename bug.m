In Objective-C, a common yet subtle error arises when dealing with memory management using ARC (Automatic Reference Counting).  Consider the scenario where you have a custom class with properties that retain objects. If you don't properly handle these retain cycles, it can lead to memory leaks.

For example:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (instancetype)init {
    self = [super init];
    if (self) {
        self.myString = [[NSString alloc] initWithString:@