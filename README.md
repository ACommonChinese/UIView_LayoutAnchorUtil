# UIView-BMLayoutAnchorUtil
**An UIView category for add/delete/update/fetch constraint conveniently, based on NSLayoutAnchor**


The system UIView can get it's constrains by view.constraints, but maybe it's useless in real project.

As usually, we want to get a constraint that matches an option, such as left constraint, top constraint and so on. We want update/delete...

And, when NSLayoutConstraint is apply, we offen:

```objective-c
aView.translatesAutoresizingMaskIntoConstraints = NO;
aConstraint.active = YES;
```

Obviously, it's redundancy for us.



You can use this by `[yourView.bm_xxxAnchor constraint.....]` Noted, the first anchor property's prefix bm_ is required.  The later code follow bm_ is similar to apple's API.



Take an example:

```objective-c
[self.greenView.bm_left equalTo:self.redView];
[self.greenView.bm_top equalTo:self.redView.bottomAnchor constant:10];
[self.greenView.bm_width equalTo:self.redView];
[self.greenView.bm_bottom equalTo:self.blackView constant:10];
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



