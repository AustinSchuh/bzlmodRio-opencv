
#include "gtest/gtest.h"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

TEST(BasicTest, Basic) {
  // Make basic API calls
  cv::Mat imgHSV{5, 5};

  cv::Mat imgThresholded;
  cv::inRange(imgHSV, cv::Scalar(0, 0, 0), cv::Scalar(255, 255, 255),
              imgThresholded);  // Threshold the image
}
