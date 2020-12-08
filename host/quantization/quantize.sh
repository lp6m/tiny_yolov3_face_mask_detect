vai_q_caffe quantize          \
          -model ./yolov3.prototxt     \
          -weights ./yolov3.caffemodel \
          -gpu 0 \
          -calib_iter 1000