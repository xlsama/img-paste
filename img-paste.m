#import <Cocoa/Cocoa.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    if (argc != 2) {
      printf("Usage: img-paste <output file>\n");
      return 1;
    }

    NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
    NSArray *classArray = [NSArray arrayWithObject:[NSImage class]];
    NSDictionary *options = [NSDictionary dictionary];

    BOOL ok = [pasteboard canReadObjectForClasses:classArray options:options];

    if (!ok) {
      @throw [NSException
          exceptionWithName:@"ImageNotInPasteboardException"
                     reason:@"No image in pasteboard"
                   userInfo:nil];
    }

    NSImage *image = [[pasteboard readObjectsForClasses:classArray
                                                options:options] firstObject];

    NSData *imageData = [image TIFFRepresentation];
    NSBitmapImageRep *imageRep = [NSBitmapImageRep imageRepWithData:imageData];
    NSData *pngData =
        [imageRep representationUsingType:NSBitmapImageFileTypePNG properties:@{}];

    NSString *outputPath = [NSString stringWithUTF8String:argv[1]];
    [pngData writeToFile:outputPath atomically:YES];
  }
  return 0;
}
