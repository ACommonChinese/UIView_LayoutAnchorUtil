# UIView-BMLayoutAnchorUtil
An UIView category for add/delete/update/fetch constraint conveniently, based on NSLayoutAnchor



The system UIView can get it's constrains BY view.constraints, but maybe it's useless in real project.

As usually, we want to get a constraint that matches an option, such as left constraint, top constraint and so on. We want update/delete...

And, when NSLayoutConstraint is apply, we offen:

```objective-c
aView.translatesAutoresizingMaskIntoConstraints = NO;
aConstraint.active = YES;
```

Obviously, it's redundancy for us.



You can use this by `[yourView.bm_xxxAnchor constraint.....]` Noted, the first anchor property's prefix bm_ is required.  The later code follow bm_ is same with apple's API.



Take an example:

```objective-c
[self.redView.bm_leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:16];
[self.redView.bm_topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:47];
[self.redView.bm_rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-15];
[self.redView.bm_heightAnchor constraintEqualToConstant:128];
```



```objective-c
- (IBAction)test:(UIButton *)button {
    button.selected = !button.isSelected;
    if (button.isSelected) {
          [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant+8.0];
    }
    else {
          [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant-8.0];
    }
}
```



