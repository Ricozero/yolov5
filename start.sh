# python train.py --data ../Data/FlawDet/FDD.yaml --weights weights/yolov5s.pt --name s-fdd --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDa.yaml --weights weights/yolov5s.pt --name s-fdda --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDb.yaml --weights weights/yolov5s.pt --name s-fddb --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDc.yaml --weights weights/yolov5s.pt --name s-fddc --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDd.yaml --weights weights/yolov5s.pt --name s-fddd --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDe.yaml --weights weights/yolov5s.pt --name s-fdde --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDf.yaml --weights weights/yolov5s.pt --name s-fddf --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDg.yaml --weights weights/yolov5s.pt --name s-fddg --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDc.yaml --weights weights/yolov5s.pt --name s-fddc-nm --device 0 --batch-size 128 --hyp data/hyps/hyp.scratch-low-nm.yaml
# python train.py --data ../Data/FlawDet/FDDf.yaml --weights weights/yolov5s.pt --name s-fddf-nm --device 0 --batch-size 128 --hyp data/hyps/hyp.scratch-low-nm.yaml
# python train.py --data ../Data/FlawDet/FDDh.yaml --weights weights/yolov5s.pt --name s-fddh --device 0 --batch-size 128
# python train.py --data ../Data/FlawDet/FDDi.yaml --weights weights/yolov5s.pt --name s-fddi --device 0 --batch-size 128

# python val.py --save-result --weights runs/train/s-fdd/weights/best.pt --name s-fdd --data ../Data/FlawDet/FDD.yaml
# python val.py --save-result --weights runs/train/s-fdda/weights/best.pt --name s-fdda --data ../Data/FlawDet/FDDa.yaml
# python val.py --save-result --weights runs/train/s-fddb/weights/best.pt --name s-fddb --data ../Data/FlawDet/FDDb.yaml
# python val.py --save-result --weights runs/train/s-fddc/weights/best.pt --name s-fddc --data ../Data/FlawDet/FDDc.yaml
# python val.py --save-result --weights runs/train/s-fddd/weights/best.pt --name s-fddd --data ../Data/FlawDet/FDDd.yaml
# python val.py --save-result --weights runs/train/s-fdde/weights/best.pt --name s-fdde --data ../Data/FlawDet/FDDe.yaml
# python val.py --save-result --weights runs/train/s-fddf/weights/best.pt --name s-fddf --data ../Data/FlawDet/FDDf.yaml
# python val.py --save-result --weights runs/train/s-fddg/weights/best.pt --name s-fddg --data ../Data/FlawDet/FDDg.yaml
# python val.py --save-result --weights runs/train/s-fddc-nm/weights/best.pt --name s-fddc-nm --data ../Data/FlawDet/FDDc.yaml
# python val.py --save-result --weights runs/train/s-fddf-nm/weights/best.pt --name s-fddf-nm --data ../Data/FlawDet/FDDf.yaml
# python val.py --save-result --weights runs/train/s-fddh/weights/best.pt --name s-fddh --data ../Data/FlawDet/FDDh.yaml
# python val.py --save-result --weights runs/train/s-fddi/weights/best.pt --name s-fddi --data ../Data/FlawDet/FDDi.yaml

# python detect.py --weights runs/train/s-fdd/weights/best.pt --name s-fdd --source '../Data/FlawDet/FDD-TE/*.jpg'
# python detect.py --weights runs/train/s-fdda/weights/best.pt --name s-fdda --source '../Data/FlawDet/FDDa-TE/*.jpg'
# python detect.py --weights runs/train/s-fddb/weights/best.pt --name s-fddb --source '../Data/FlawDet/FDDb-TE/*.jpg'
# python detect.py --weights runs/train/s-fddc/weights/best.pt --name s-fddc --source '../Data/FlawDet/FDDc-TE/*.jpg'
# python detect.py --weights runs/train/s-fddd/weights/best.pt --name s-fddd --source '../Data/FlawDet/FDDd-TE/*.jpg'
# python detect.py --weights runs/train/s-fdde/weights/best.pt --name s-fdde --source '../Data/FlawDet/FDDe-TE/*.jpg'
# python detect.py --weights runs/train/s-fddf/weights/best.pt --name s-fddf --source '../Data/FlawDet/FDDf-TE/*.jpg'
# python detect.py --weights runs/train/s-fddg/weights/best.pt --name s-fddg --source '../Data/FlawDet/FDDg-TE/*.jpg'
# python detect.py --weights runs/train/s-fddh/weights/best.pt --name s-fddh --source '../Data/FlawDet/FDDh-TE/*.jpg'
# python detect.py --weights runs/train/s-fddi/weights/best.pt --name s-fddi --source '../Data/FlawDet/FDDi-TE/*.jpg'