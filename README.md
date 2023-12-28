# thoughtctl

This project provides an example of Thoughtctl_Task in Swift.

## Build and Run

To build and run the Xcode code, follow these steps:

1. Clone the repository using the following command:
   git clone <repository-url>

2. Open the Xcode project by double-clicking the `.xcodeproj` file.

3. Select the target you want to run the tests for (e.g., `Thoughtctl_Task`).

4. Build the project by pressing `Cmd + B` or by selecting `Product > Build` from the menu.

5. Run the tests by pressing `Cmd + U` or by selecting `Product > Test` from the menu.

6. Check the test results in the Xcode Test Navigator.

![Simulator Screenshot - iPhone 11 Pro - 2023-12-27 at 21 33 37](https://github.com/Bibhishan/thoughtctl/assets/29226313/a4cf3ca7-96df-4db9-ae6a-f4021ba2b2e5)
![Simulator Screenshot - iPhone 11 Pro - 2023-12-27 at 21 33 39](https://github.com/Bibhishan/thoughtctl/assets/29226313/77f046dc-f950-480d-881d-3815b618761f)
![Simulator Screenshot - iPhone 11 Pro - 2023-12-27 at 21 33 42](https://github.com/Bibhishan/thoughtctl/assets/29226313/3ccd9130-cde1-4a02-9911-c84127bb6044)
![Simulator Screenshot - iPhone 11 Pro - 2023-12-27 at 21 33 46](https://github.com/Bibhishan/thoughtctl/assets/29226313/ce7dd38b-4603-4e31-9152-3a93bd279a9f)

## Kingfisher Framework 
1. Kingfisher is using a hybrid ImageCache to manage the cached images, It consists of a memory storage and a disk storage, and provides high-level APIs to manipulate the cache system. If not specified, the ImageCache.default instance will be used across in Kingfisher.
2. Kingfisher will use the cacheKey to search images in cache later.
3. we can set the limit for the cache by using totalCostLimit property
