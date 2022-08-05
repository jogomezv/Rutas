# coding: utf-8

import sys
from PIL import Image

src = sys.argv[1]

info = open(src+'/info.txt')

matrixX = int(info.readline())
matrixY = int(info.readline())

imageMatrix = []

for y in range(0, matrixY + 1):

	imageList = []

	for x in range(0,matrixX + 1):

		try:
			image = Image.open(src+'/4-'+str(x)+'-'+str(y)+'.jpg')
			imageList.append(image)	

	imageMatrix.append(imageList)

matrixXSize = 0
matrixYSize = 0

for x in range(0, matrixX + 1):
	matrixXSize += imageMatrix[0][x].size[0]

for y in range(0, matrixY + 1):
	matrixYSize += imageMatrix[y][0].size[1]

newImage = Image.new('RGB', (matrixXSize, matrixYSize))

coordinate = [0]*2

for imageList in imageMatrix:

	for image in imageList:
		
		imageSize = image.size
		coordinateTuple = (coordinate[0], coordinate[1], coordinate[0]+imageSize[0], coordinate[1]+imageSize[1])

		newImage.paste(image, coordinateTuple)

		coordinate[0] += imageSize[0]

	coordinate[0] = 0
	coordinate[1] += imageList[0].size[1]

newImage.save(src+'/newMap.png', 'PNG')

