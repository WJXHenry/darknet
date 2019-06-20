#~/bin/bash

./darknet detector map cfg/obj.data cfg/yolo-pothole-train.cfg pothole_weights/yolo-pothole-train_11100.weights > mAP_Files/mAP11100.txt
./darknet detector map cfg/obj.data cfg/yolo-pothole-train.cfg pothole_weights/yolo-pothole-train_11200.weights > mAP_Files/mAP11200.txt
./darknet detector map cfg/obj.data cfg/yolo-pothole-train.cfg pothole_weights/yolo-pothole-train_11300.weights > mAP_Files/mAP11300.txt
./darknet detector map cfg/obj.data cfg/yolo-pothole-train.cfg pothole_weights/yolo-pothole-train_11400.weights > mAP_Files/mAP11400.txt
