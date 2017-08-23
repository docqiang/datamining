# encoding:utf-8
import wordcloud as wc
import jieba as jb
import matplotlib.pylab as plb
import cv2 as cv
import numpy as np
srcPath = 'D:/workspace/src/datamining/data/老九门.txt'
font = 'C:/windows/fonts/SIMYOU.TTF'

matrix = np.full((600,800),255,dtype=np.uint8)
# matrix[matrix==matrix]=255
cv.circle(matrix,(400,300),300,254,-1)
# matrix[matrix==0]=255
# cv.imshow('matrix',matrix)
# cv.waitKey(0)
# exit()
with open(srcPath,'r') as novel:
    all_text = novel.read()
seg_list = jb.cut(all_text)
words = ' '.join(seg_list)
# print(words)
# 词云的mask为一张灰度图（矩阵），矩阵中不为255的元素将被作为显示区
mywc = wc.WordCloud(collocations=False, width=800, height=600, font_path=font,mask=matrix).generate(words)
plb.imshow(mywc)
# plb.axis('off')
plb.show()
