import os
import random
import numpy as np
import cv2

from utils.plots import Annotator, colors

def cherrypick():
    # Definitions
    dataset = '../Data/FlawDet/FDD-TE'
    names = ['hole', 'dirty']
    root = 'runs/detect'
    exps = [
        # 's-fdd',
        # 's-fddf',
        # 's-fddg',
        # 's-fddh',
        # 's-fddi',
        's-fdda',
        's-fddb',
        's-fddd',
        's-fddc',
        's-fdde',
    ]
    cherries = [
        '2110022215594344105-RIGHT_SEA',
        '2022032-1905857_LEFT_SEA',
        '2022032-1900974_RIGHT_SEA',
        '2022031-1887926_LEFT_LAND',
    ]
    grid_w = 1920
    grid_h = 1080
    line_width = 5

    # Choosing cherries
    # fns = []
    # for fn in os.listdir(dataset):
    #     if fn.endswith('jpg'):
    #         fns.append(fn[:-4])
    # cherries = random.sample(fns, n_sample)
    # for fn in fns:
    #     if os.path.isfile(os.path.join(dataset, fn + '.txt')):
    #         cherries.append(fn)
    #     if len(cherries) == n_sample:
    #         break
    # print(cherries)

    # Find samples with both hole and dirty
    # fns = []
    # for fn in os.listdir(dataset):
    #     if fn.endswith('jpg'):
    #         fns.append(fn[:-4])
    # both = []
    # for fn in fns:
    #     if os.path.isfile(os.path.join(dataset, fn + '.txt')):
    #         with open(os.path.join(dataset, fn + '.txt')) as f:
    #             yolos = f.readlines()
    #         has_0, has_1 = False, False
    #         for yolo in yolos:
    #             if yolo.startswith('0'):
    #                 has_0 = True
    #             elif yolo.startswith('1'):
    #                 has_1 = True
    #         if has_0 and has_1:
    #             both.append(fn)
    # print(both[8:16])

    whole = np.zeros((len(cherries) * grid_h, (len(exps) + 1) * grid_w, 3))
    for i, cherry in enumerate(cherries):
        gt = cv2.imread(os.path.join(dataset, cherry + '.jpg'))
        if os.path.isfile(os.path.join(dataset, cherry + '.txt')):
            annotator = Annotator(gt, line_width=line_width)
            with open(os.path.join(dataset, cherry + '.txt')) as f:
                yolos = f.readlines()
            for yolo in yolos:
                typ, centerx, centery, shapew, shapeh = yolo.split()
                typ, centerx, centery, shapew, shapeh = int(typ), float(centerx), float(centery), float(shapew), float(shapeh)
                H, W = gt.shape[:2]
                xyxy = [W * (centerx - shapew / 2), H * (centery - shapeh / 2), W * (centerx + shapew / 2), H * (centery + shapeh / 2)]
                annotator.box_label(xyxy, names[typ], color=colors(typ, True))
        gt = cv2.resize(gt, (grid_w, grid_h))
        whole[i*grid_h:(i+1)*grid_h, 0:grid_w, :] = gt
        for j, exp in enumerate(exps):
            pred = cv2.imread(os.path.join(root, exp, cherry + '.jpg'))
            pred = cv2.resize(pred, (grid_w, grid_h))
            whole[i*grid_h:(i+1)*grid_h, (j+1)*grid_w:(j+2)*grid_w, :] = pred
    cv2.imwrite('cherrypick.jpg', whole)

if __name__ == '__main__':
    cherrypick()