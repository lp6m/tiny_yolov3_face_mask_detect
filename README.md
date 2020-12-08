# Real-time tiny-YOLOv3 face mask detection on Ultra96v2  
This repository contains trained weights of tiny-YOLOv3, quantized weights, compiled DPU kernel, and application.
Environment: Ubuntu18.04 & Vitis-AI v1.1  
See the hackster.io tutorial.  
https://www.hackster.io/yasuhironitta/real-time-tiny-yolov3-face-mask-detection-on-ultra96v2-63a70c
```
├── README.md
├── app
│   ├── Makefile
│   ├── Mask_121.jpg
│   ├── model
│   │   └── dpu_yolov3tiny.elf
│   ├── src
│   │   ├── main.cc
│   │   └── utils.h
│   ├── yolo
│   └── youtube_320.mp4
└── host
    ├── caffe_converted
    │   ├── yolov3.caffemodel
    │   └── yolov3.prototxt
    ├── compile
    │   ├── compiled
    │   │   ├── dpu_yolov3tiny.elf
    │   │   └── yolov3tiny_kernel_graph.gv
    │   ├── deploy.caffemodel
    │   └── deploy.prototxt
    ├── convert.py
    ├── quantization
    │   ├── quantize.sh
    │   ├── quantize_results
    │   │   ├── deploy.caffemodel
    │   │   ├── deploy.prototxt
    │   │   ├── quantize_train_test.caffemodel
    │   │   └── quantize_train_test.prototxt
    │   ├── yolov3.caffemodel
    │   └── yolov3.prototxt
    ├── yolov3-tiny_mask.cfg
    └── yolov3-tiny_mask_60000.weights

```

# app
```bash
Run the face mask detection. There are three modes: image/viedeo/usb camera.
# image mode
./yolo Mask/Mask_121.jpg i
# video mode
./yolo youtube_320.mp4 v
# webcam realtime mode
./yolo camera c
```


# Reference  
https://github.com/VictorLin000/YOLOv3_mask_detect