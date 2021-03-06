//
// Created by inno on 2/4/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface UIImageView (AFExtension)

- (void)setImageWithURL:(NSURL *)url;

- (void)reloadImageWithURL:(NSURL *)url;

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholderImage;

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholderImage success:(void (^)(NSURLRequest *, NSHTTPURLResponse *, UIImage *))success;
@end