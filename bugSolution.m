To fix the memory leak, use a `weak` reference for the property that is creating the retain cycle.   For example, to avoid a retain cycle where `myString` (property of `MyClass`) retains `MyClass`, use a `weak` reference for `myString`:

```objectivec
@interface MyClass : NSObject
@property (weak, nonatomic) NSString *myString;
@end

@implementation MyClass
- (instancetype)init {
    self = [super init];
    if (self) {
        self.myString = [[NSString alloc] initWithString:@