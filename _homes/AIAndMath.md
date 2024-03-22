---
layout: post
title:  人工智能深度学习与数学学习总结
description: AI人工智能，深度学习，神经网络，数学，算法，数据结构等学习归纳总结 
date: 2022-10-01 09:01:01
updatedate: 2023-05-24 13:59:01
---

- [人工智能与机器学习目录](#人工智能与机器学习目录)
  - [人工智能概述](#人工智能概述)
  - [机器学习中的数学基础](#机器学习中的数学基础)
  - [机器学习模型的度量指标](#机器学习模型的度量指标)
  - [回归算法](#回归算法)
  - [K-NN算法](#k-nn算法)
  - [k-means](#k-means)
  - [朴素贝叶斯](#朴素贝叶斯)
  - [决策树和随机森林](#决策树和随机森林)
  - [支持向量机](#支持向量机)
  - [PCA降维](#pca降维)
  - [集成学习](#集成学习)
  - [深度神经网络](#深度神经网络)
  - [卷积神经网络](#卷积神经网络)
  - [RNN与LSTM](#rnn与lstm)
  - [深度强化学习](#深度强化学习)
  - [MCTS](#mcts)
  - [数据集的建设](#数据集的建设)
  - [CNN训练技巧](#cnn训练技巧)
  - [CV和视觉识别经典模型](#cv和视觉识别经典模型)
  - [自然语言处理和CNN](#自然语言处理和cnn)
  - [自然语言处理和CNN](#自然语言处理和cnn-1)
  - [软件自动修复](#软件自动修复)
  - [基于强化学习的经典应用—AlphaGO](#基于强化学习的经典应用alphago)
  - [分布式机器学习框架基础知识](#分布式机器学习框架基础知识)
  - [Tensorflow](#tensorflow)
  - [Caffe](#caffe)
  - [scikit-learn](#scikit-learn)
  - [主流AI云平台](#主流ai云平台)
  - [图像处理基础](#图像处理基础)
  - [程序切片技术](#程序切片技术)
- [人工智能概述](#人工智能概述-1)
  - [GPU](#gpu)
  - [InfiniBand](#infiniband)
  - [信息熵](#信息熵)
  - [衡量图像检测的IOU NMS](#衡量图像检测的iou-nms)
  - [Huffman树 最优二叉树](#huffman树-最优二叉树)
  - [精度 ，F1 Socre(AI 的评估指标)](#精度-f1-socreai-的评估指标)
  - [混淆矩阵](#混淆矩阵)
  - [ROC AOC （AOC是RO曲线所组成的面积）](#roc-aoc-aoc是ro曲线所组成的面积)
  - [PRC 精确律召回曲线](#prc-精确律召回曲线)
  - [降维](#降维)
  - [集成学习](#集成学习-1)
  - [深度神经网络](#深度神经网络-1)
  - [卷积神经网络 CNN](#卷积神经网络-cnn)
  - [循环神经网络 RNN 与LSTM（Long Short-Temrm Memory）](#循环神经网络-rnn-与lstmlong-short-temrm-memory)
  - [深度强化学习DRL 和MDP(Markov Decision Process 马尔可夫决策过程)](#深度强化学习drl-和mdpmarkov-decision-process-马尔可夫决策过程)
  - [门特卡罗方法 MCTS](#门特卡罗方法-mcts)
- [微积分](#微积分)
  - [反函数](#反函数)
  - [导数](#导数)
  - [链式求导法则](#链式求导法则)
  - [导数公式编辑](#导数公式编辑)
  - [偏导数](#偏导数)
  - [最优化理论](#最优化理论)
- [矩阵](#矩阵)
  - [一、矩阵加法](#一矩阵加法)
  - [二、矩阵减法](#二矩阵减法)
  - [三、矩阵乘法](#三矩阵乘法)
  - [四、矩阵转置](#四矩阵转置)
  - [五、逆矩阵](#五逆矩阵)
  - [六、对称矩阵](#六对称矩阵)
  - [七、矩阵性质总结](#七矩阵性质总结)
- [图形图像](#图形图像)
  - [颜色模型](#颜色模型)
  - [图像基本属性](#图像基本属性)
  - [图像特征](#图像特征)
  - [图像典型特征描述](#图像典型特征描述)
- [普适计算(Uniquitous Computing)](#普适计算uniquitous-computing)
- [最优化问题](#最优化问题)
  - [拉格朗日乘子法（解决等式约束问题）](#拉格朗日乘子法解决等式约束问题)
  - [KKT（解决不等式约束问题）](#kkt解决不等式约束问题)
- [分布](#分布)
  - [离散型随机变量的分布](#离散型随机变量的分布)
    - [伯努利分布（Bernoulli Distribution）](#伯努利分布bernoulli-distribution)
    - [二项分布（Binomial Distribution）](#二项分布binomial-distribution)
    - [负二项分布（Negative Binomial Distribution）](#负二项分布negative-binomial-distribution)
    - [几何分布（Geometric distribution）](#几何分布geometric-distribution)
    - [超几何分布（Hypergeometric Distribution）](#超几何分布hypergeometric-distribution)
    - [泊松分布（Poisson Distribution）](#泊松分布poisson-distribution)
  - [连续型随机变量的分布](#连续型随机变量的分布)
    - [正态分布（Normal Distribution）](#正态分布normal-distribution)
    - [均匀分布（Uniform Distribution）](#均匀分布uniform-distribution)
    - [指数分布（Exponential Distribution）](#指数分布exponential-distribution)
    - [β分布（Beta Distribution，贝塔分布）](#β分布beta-distribution贝塔分布)
    - [Γ GammaΓ分布（Gamma Distribution,伽马分布）](#γ-gammaγ分布gamma-distribution伽马分布)
- [数据结构](#数据结构)
- [算法](#算法)
- [经典机器学习算法](#经典机器学习算法)
  - [SVC（C-Support Vector Classification）：](#svcc-support-vector-classification)
  - [NuSVC（Nu-Support Vector Classification.）：](#nusvcnu-support-vector-classification)
  - [LinearSVC（Linear Support Vector Classification）：](#linearsvclinear-support-vector-classification)
  - [回归分析](#回归分析)
    - [线性回归](#线性回归)
    - [逻辑回归](#逻辑回归)
      - [二分类](#二分类)
      - [多分类](#多分类)
  - [KNN](#knn)
  - [K-Means （需要再看看）](#k-means-需要再看看)
  - [贝叶斯](#贝叶斯)
    - [贝叶斯定理（朴素贝叶斯）](#贝叶斯定理朴素贝叶斯)
    - [Bernoulli Naive Bayes 伯努利朴素贝叶斯](#bernoulli-naive-bayes-伯努利朴素贝叶斯)
    - [Multinomial Naive Bayes 多项式朴素贝叶斯](#multinomial-naive-bayes-多项式朴素贝叶斯)
    - [Gaussian Naive Bayes 高斯朴素贝叶斯](#gaussian-naive-bayes-高斯朴素贝叶斯)
- [神经网络](#神经网络)
  - [什么是神经网络](#什么是神经网络)
  - [激活函数](#激活函数)
  - [卷积神经网络](#卷积神经网络-1)
  - [RNN循环神经网络](#rnn循环神经网络)
  - [LSTM （Long Short-Term Memory）](#lstm-long-short-term-memory)
- [Tensorflow](#tensorflow-1)
  - [C# .NET 中调用 Tensorflow](#c-net-中调用-tensorflow)
- [scikit-learn](#scikit-learn-1)
  - [Classification](#classification)
  - [Regression](#regression)
  - [Clustering](#clustering)
  - [Dimensionality reduction 降维](#dimensionality-reduction-降维)
  - [Model selection](#model-selection)
  - [Preprocessing](#preprocessing)
  - [Demos](#demos)
    - [Release Highlights(发布热点)](#release-highlights发布热点)
    - [Biclustering(双聚类分析)](#biclustering双聚类分析)
    - [Calibration(校准)](#calibration校准)
    - [Classification(分类)](#classification分类)
    - [Clustering(聚类分析)](#clustering聚类分析)
    - [Covariance estimation(协方差估计)](#covariance-estimation协方差估计)
    - [Cross decomposition(交叉分解)](#cross-decomposition交叉分解)
    - [Dataset examples(数据集示例)](#dataset-examples数据集示例)
    - [Decision Trees(决策树)](#decision-trees决策树)
    - [Decomposition(分解)](#decomposition分解)
    - [Ensemble methods(集成方法)](#ensemble-methods集成方法)
    - [Two-class AdaBoost(二分法)](#two-class-adaboost二分法)
    - [Feature Selection(功能选择)](#feature-selection功能选择)
    - [Gaussian Mixture Models(高斯混合模型)](#gaussian-mixture-models高斯混合模型)
    - [Gaussian Process for Machine Learning(机器学习的高斯过程)](#gaussian-process-for-machine-learning机器学习的高斯过程)
    - [Generalized Linear Models(广义线性模型)](#generalized-linear-models广义线性模型)
    - [Inspection(检查)](#inspection检查)
    - [Kernel Approximation（核近似，核逼近）](#kernel-approximation核近似核逼近)
    - [Manifold learning(流形学习)](#manifold-learning流形学习)
    - [Miscellaneous(杂项)](#miscellaneous杂项)
    - [Missing Value Imputation(缺失值插补)](#missing-value-imputation缺失值插补)
    - [Model Selection(模型选择)](#model-selection模型选择)
    - [Multioutput methods(多输出方法)](#multioutput-methods多输出方法)
    - [Nearest Neighbors(最近邻学习)](#nearest-neighbors最近邻学习)
    - [Neural Networks(神经网络)](#neural-networks神经网络)
    - [Pipelines and composite estimators(管道和复合估计器)](#pipelines-and-composite-estimators管道和复合估计器)
    - [Preprocessing(预处理)](#preprocessing预处理)
    - [Semi Supervised Classification(半监督分类)](#semi-supervised-classification半监督分类)
    - [Support Vector Machines(支持向量机)](#support-vector-machines支持向量机)
    - [Tutorial exercises(教程练习)](#tutorial-exercises教程练习)
    - [Working with text documents(使用文本文档)](#working-with-text-documents使用文本文档)
- [PyTorch 库](#pytorch-库)
- [SynapseML（Microsoft）](#synapsemlmicrosoft)
- [主流机器学习类库介绍](#主流机器学习类库介绍)
- [总结](#总结)

## 人工智能与机器学习目录

### 人工智能概述

> 人工智能的定义，发展简史

> 人工智能经典流派

> > 符号主义

> > 连接主义

> > 行为主义

> > 贝叶斯派

> 机器学习算法

> 机器学习的典型应用场景

> > 计算机图像领域

> > 自然语言处理简述及其应用

> > 制造业中的预测性维护

> > 软件自动化开发和测试

### 机器学习中的数学基础

> 微分学  

> 链式求导法则

> 对数函数求导

> 梯度和梯度下降算法

> 线性代数

> 向量  

> 矩阵拼接

> 特征值和特征向量

> 仿射变换

> 概率论  

> 概率分布

> 先验/后验概率

> 似然估计

> 贝叶斯法则

> 统计学  

> 数据的标准化和归一化

> 标准差

> 方差和偏差

> 协方差和协方差矩阵

> 化理论  

> 概述  

> 函数等高线

> 拉格朗日乘子法

> 拉格朗日对偶性

> KKT  

> 其他 

> 训练、验证和测试数据集

> 过拟合和欠拟合

> 奥卡姆的剃刀

> 信息熵

> IOU  

> NMS  

> Huffman树

### 机器学习模型的度量指标

> Precision、Recall和mAP

> F1 Score

> 混淆矩阵

> ROC

> AUC

> PRC

> 工业界使用的典型AI指标

### 回归算法

> 回归分析

> 线性回归

> 线性回归的定义

> 线性回归的损失函数

> 线性回归范例

> 逻辑回归

> 逻辑回归—二分类

> 逻辑回归—多分类及Softmax

### K-NN算法

> K-NN概述  

> K-NN分类算法

> K-NN回归算法

> K-NN的优缺点

> K-NN的优点

> K-NN的缺点

> K-NN工程范例

### k-means

> k-means概述

> k-means核心算法

> k-means算法的优缺点

> k-means算法的优点

> k-means算法的缺点

> k-means工程范例

### 朴素贝叶斯

> 朴素贝叶斯分类算法

> 朴素贝叶斯的实际应用

### 决策树和随机森林

> 决策树  

> 决策树的主要组成元素

> 决策树的经典算法

> 决策树的优缺点

> 决策树的过拟合和剪枝

> 随机森林

### 支持向量机

> SVM可以做什么

> SVM的数学表述

> 决策面的数学表述

> 分类间隔的数学表述

> 比较超平面的数学公式

> 决策面的数学表述

> SVM相关的化理论

> 感知机学习算法

> SVM化问题

> 硬间隔SVM  

> 软间隔SVM  

> 核函数技巧  

> 多分类SVM  

> SVM实践

### PCA降维

> 降维概述  

> PCA降维实现原理

> PCA的直观理解

> PCA的理论基础—方差理论

> PCA的核心处理过程

> PCA实例  

### 集成学习

> 集成学习概述

> 集成学习架构

> 聚合法

> 提升法

> 堆叠法

> 典型的集成方法

> 平均法

> 投票法

> 学习法

> 深度学习进阶篇

### 深度神经网络

> 神经元  

> 激活函数  

> > Sigmoid

> > tanh

> > ReLU

> > Leaky ReLU

> > ReLU的其他变种

> > 激活函数的选择

> 前向传播和后向传播算法

> 损失函数  

> 分类场景

> 回归场景

> 其他任务类型的损失函数

### 卷积神经网络

> CNN发展历史简述

> CNN的核心组成元素

> > 卷积层

> > 池化层

> > 全连接层

> > Softmax层

> CNN经典框架  

> > LeNet

> > AlexNet

> > VGG

> > GoogLeNet

> > ResNet

> CNN的典型特性

> > CNN位移不变性

> > CNN尺度不变性

> > CNN旋转不变性

> > CNN视角不变性

### RNN与LSTM

> RNN 

> RNN的多种形态

> RNN存在的不足

> LSTM  

> LSTM核心框架

> > 遗忘门

> > 输入门

> > 输出门

> > GRU 

### 深度强化学习

> 强化学习和MDP

> 强化学习的基础概念

> MDP

> 强化学习的核心三要素

> MDP问题的解决方案分类

> 基于模型的动态规划算法

> 基于无模型的强化学习算法

> 蒙特·卡罗强化学习算法

> 时间差分算法

> DQN  

> 基于策略的强化学习算法

> 有限差分策略梯度

> 蒙特·卡罗策略梯度

### MCTS

> MCTS概述  

> MCTS算法核心处理过程

> UCB和UCT

> MCTS实例解析

> 机器学习应用实践及相关原理

### 数据集的建设

> 数据集建设的核心目标

> 数据采集和标注

> 数据从哪来

> 数据分布和多样性

> 如何扩大数据量

> 数据分析和处理

> 数据集分析的典型方法

> 标签类别合理性

> 数据清洗

### CNN训练技巧

> 数据预处理

> 数据零中心化

> 数据标准化

> 尺寸调整

> 其他

> 数据增强  

> CNN核心组件择优

> 激活函数

> 超参数设定

> 参数初始化策略

> 全零初始化策略

> 随机初始化策略

> 采用预训练模型

> 模型过拟合解决方法

> 正则化

> 批标准化

> 模型的可解释性

> 反卷积网络

> 类别激活映射

> LIME

> 可视化集成工具Darkon

> Auto ML

### CV和视觉识别经典模型

> CV发展简史

> 视觉识别概述

> R-CNN 

> R-CNN简述

> R-CNN中的候选区域

> R-CNN算法处理流程

> Fast R-CNN

> SPP-Net

> 空间金字塔池化

> 特征图和原图的映射关系

> 基于SPP-Net的目标识别

> Faster R-CNN

> Faster R-CNN简述

> 候选区域网络

> 分类器和边框回归

> YOLO  

> SSD  

> SSD的网络框架

> SSD的应用推理过程

> SSD的性能评估和缺点

> 不基于CNN来实现目标识别

> 相关的OpenCV函数

> 利用OpenCV识别形状物体范例

### 自然语言处理和CNN

> NLP简述  

> NLP发展历史

> 自然语言基础

> 词的表达方式

> 自然语言模型

> 基于N-Gram的语言模型

> > 基于神经网络的语言模型—经典NNLM

> > 基于神经网络的语言模型—NNLM的改进者CBOW模型

> > 基于神经网络的语言模型—NNLM的改进者Skip-gram模型  

> word2vec  

> word2vec简介

> word2vec源码与编译

> word2vec使用范例

> 常用语料库

> NLP应用：文本分类

> 传统的文本分类方法

> 基于深度学习的文本分类方法

### 自然语言处理和CNN

> 应用程序场景识别背景

> 特征向量  

> 数据采集  

> 算法模型  

> 落地应用  

### 软件自动修复

> 什么是软件自动修复

> 软件自动修复的定义

> 软件自动修复的价值

> 软件自动修复基础知识

> 软件自动修复技术分类

> 软件自动修复基础概念

> 阶段1：缺陷定位

> 基于程序频谱的缺陷定位

> SFL中测试套件的构造

> SFL中程序频谱的构造

> 阶段2：补丁生成

> 基于搜索的补丁生成和自动修复

> 基于模板的补丁生成和自动修复

> APR领域经典框架

> Facebook SapFix

> Microsoft DeepCoder

> GenProg

### 基于强化学习的经典应用—AlphaGO

> AlphaGO简述

> AlphaGO核心原理

> 策略网络  

> 估值网络  

> MCTS  

> 机器学习平台篇

### 分布式机器学习框架基础知识

> 分布式机器学习核心理念

> GPU硬件设备

> GPU架构

> GPU的共享访问

> 网络标准  

> Ethernet

> InfiniBand

> 分布式通信框架

> MPI

> P2P和聚合通信

> NCCL

> NV-Link

> RDMA

> 经典分布式ML框架Caffe-MPI

### Tensorflow

> Tensorflow安装过程

> Tensorflow基础知识

> Tensorflow核心概念

> Tensorflow模型/数据的保存和恢复

> Tensorflow模型fine-tuning

> Tensorflow模型调试

> Tensorflow的多语言支持

> 可视化利器TensorBoard

> Tensorflow分布式训练

> Tensorflow的分布式原理

> 单机多GPU下的并行计算

> 多机多GPU下的分布式计算

> Tensorflow分布式部署

> Tensorflow Serving概述

> 基于GPU的Tensorflow Serving

> Tensorflow Serving的核心概念

> Tensorflow模型分布式部署实例

> Tensorflow范例解析

> Tensorflow的“变种”

> Tensorflow Lite

> Tensorflow RS

### Caffe

> Caffe的安装

> Ubuntu下安装Caffe

> Windows下安装Caffe

> Caffe支持的数据集格式

> LevelDB

> LMDB

> 数据库的生成

> Caffe中的网络模型构建

> Google Protocol Buffer

> Caffe2源码结构

> Caffe工程范例

> Caffe中的Model Zoo

### scikit-learn

> scikit-learn的安装

> scikit-learn中的机器学习算法

> > 分类

> > 回归

> > 聚类

> > 降维

> scikit-learn中的Model selection

> > 网络搜索

> > 交叉验证

> > 度量标准

> scikit-learn中的预处理

> 数据标准化等预处理

> 数据特征提取预处理

### 主流AI云平台

> Microsoft OpenPAI

> Google Cloud

> Baidu  

> 百度AI云服务

> PaddlePaddle

> Alibaba 

> 阿里飞天平台

> MaxCompute平台

> PAI

### 图像处理基础

> 光、色彩和人类视觉系统

> 图像的颜色模型

> 图像的基本属性

> > 灰度值

> > 亮度

> > 对比度

> > 色相

> > 饱和度

> 图像特征  

> > 颜色特征

> > 纹理特征

> > 形状特征

> 图像的典型特征描述子

> > LBP

> > HOG  

> H> aar-like 特征

> 图像的傅里叶变换

> 图像处理实例(图像质量检测)

### 程序切片技术

> 程序切片综述

> > 程序切片有两个含义：1、一般地，把只与某个输出有关的语句和谓词构成的程序称为源程序的一种静态切片。2、计算程序切片的过程。

> 程序切片基础知识

> 控制流图

> 控制流分析

> 数据流

> 静态切片技术

> 基本定义

> 分类

> > 静态切片技术(Static Slicing)；不需要运行程序就可以完成的切片技术称为静态切片。

> > 动态切片技术(Dynamic Slicing)；而需要在程序运行时进行的切片技术称为动态切片。

> > 分解切片技术(Decomposition Slicing)；

> > 条件切片技术(Conditioned Slicing)。

> 动态切片基本概念

> 动态切片算法概述

> 基于PDG的动态切片算法

## 人工智能概述

> 现在的人工智能似乎都是数学方法，把所有的如语言，属性等用书学的形式，如数组，矩阵来表示。然后通过各种复杂的数学运算来进行预测分析。每一种似乎还搞出了很多算法。这些算法或多或少的都存在不少问题，在进行图像数字分析的时候就会存在失效的问题。

> 也有一些算法，使用复杂的概率论为基础，这个纯粹就是算命先生了，处理随机数据靠猜测。

> 这些其本质上还是机器思维，都是通过函数，公式等进行运算，在许多场合下也是能解决一些问题。但其与人类的思维差距较大，人类的思维是一个复杂而精密的过程，其中不断的进行迭代反复，最终才分析出来结果。

### GPU

### InfiniBand

### 信息熵

> 来源于热力学衡量系统混乱成都的重要参数。由信息论之父香农提出。为随机数据源产生的平均信息量。是信息的平均量，与概率分布有关。是对不确定性的度量。

### 衡量图像检测的IOU NMS

### Huffman树 最优二叉树

> 带权路径，权值大的节点更加靠近二叉树根节点

### 精度 ，F1 Socre(AI 的评估指标)

> 精度(precision) = 正确预测的个数(TP)/被预测正确的个数(TP+FP)

> 召回率(recall)=正确预测的个数(TP)/预测个数(TP+FN)

> F1 = 2精度召回率/(精度+召回率)

> NLP， Precision Recall mAP F1 Score

> F1,Fb

> 语音识别：错字律（Word Error Rate）WER=（S（替换）+D（删除）+I（插入））/N（单词总量）*100%

> 语音合成 声学参数评估，性能评估，功耗评估，ABX，MOS（A&&M 需要人工参与）

### 混淆矩阵

> 可能性表格或者错误矩阵。呈现算法性能效果的特定矩阵

### ROC AOC （AOC是RO曲线所组成的面积）

> Receiver Operating Characteristic 

> 接收器操作特性曲线或受试者工作特性曲线。 

### PRC 精确律召回曲线

> Precision Recall Curve  

> 横纵坐标分别是Precision Recall

### 降维

> 化繁为简，高维转到低维空间

> 策略 过滤器 Filter Strategy,包装器 Wrapper ，嵌入式 Embedded

> 特征提取分为线性和非线性

> > 线性：主成成分分析PCA （最大方差理论噪声具有较大的方差值），线性判别式分析LDA，独立成分分析ICA，局部保留投影LPP

> > 非线性：等距离特征映射Isomap,局部线性嵌入 Hessian Locally-Linear Embedding or Hessian LLE,关系投视映射 Relational Perspective Map ,传染式映射 Contagion Maps.

> 好处：减少唯独灾难避免效果退化，减少系统资源消耗，有助于数据可视化，一定程度上可以避免数据噪声。

### 集成学习

> 就是组合多种模型算法来提升任务的准确性

> 框架聚合法，提升法，堆叠法，平均法（加权，不加权），投票法（绝对多数，相对多数，甲醛投票），学习法。其他如代数法，行为知识空间法。

### 深度神经网络

> 神经元

> 激活函数 Sigmoid,tanh,ReLU,Leaky ReLU,

> 向前，向后传播算法。

> 损失函数

### 卷积神经网络 CNN

### 循环神经网络 RNN 与LSTM（Long Short-Temrm Memory）

### 深度强化学习DRL 和MDP(Markov Decision Process 马尔可夫决策过程)

### 门特卡罗方法 MCTS

## 微积分

### 反函数

> 反函数是数学中的一种函数。设函数y=f(x)的定义域是D，值域是f(D)；如果对于值域f(D)中的每一个y，在D中有且只有一个x使得g(y)=x，则按此对应法则得到了一个定义在f(D)上的函数，并把该函数称为函数y=f(x)的反函数。

> 反函数的性质

> > （1）函数f(x)与它的反函数f -1(x)图像关于直线y=x对称；

> > （2）函数存在反函数的 充要条件是，函数的 定义域与 值域是 一一映射；

> > （3）一个函数与它的反函数在相应 区间上 单调性一致；

> > （4）大部分 偶函数不存在反函数（当函数y=f(x)， 定义域是{0} 且 f(x)=C （其中C是常数），则函数f(x)是偶函数且有反函数，其反函数的定义域是{C}, 值域为{0} ）。 奇函数不一定存在反函数，被与y轴垂直的直线截时能过2个及以上点即没有反函数。若一个奇函数存在反函数，则它的反函数也是奇函数。

> > （5）一段连续的函数的单调性在对应区间内具有一致性；

> > （6）严增（减）的函数一定有严格增（减）的反函数；

> > （7）反函数是相互的且具有唯一性；

> > （8）定义域、值域相反对应法则互逆（三反）；

> > （9）反函数的 导数关系：如果x=f(y)在开区间I上严格单调，可导，且f'(y)≠0，那么它的反函数y=f -1(x)在区间S={x|x=f(y),y∈I }内也可导；

> > （10）y=x的反函数是它本身。

### 导数

> 导数（Derivative），也叫导函数值。又名微商，是微积分中的重要基础概念。当函数y=f（x）的自变量x在一点x0上产生一个增量Δx时，函数输出值的增量Δy与自变量增量Δx的比值在Δx趋于0时的极限a如果存在，a即为在x0处的导数，记作f’（x0）或df（x0）/dx。

> 原函数的导数等于反函数导数的倒数。

### 链式求导法则

> 一元函数求导的链式法则

> 多元函数求导的链式法则

### 导数公式编辑

> 1.C'=0(C为常数)；

> 2.(Xn)'=nX(n-1) (n∈R)；

> 3.(sinX)'=cosX；

> 4.(cosX)'=-sinX；

> 5.(aX)'=aXIna （ln为自然对数)；

> 6.(logaX)'=1/(Xlna) (a>0，且a≠1)；

> 7.(tanX)'=1/(cosX)2=(secX)2

> 8.(cotX)'=-1/(sinX)2=-(cscX)2

> 9.(secX)'=tanX secX；

> 10.(cscX)'=-cotX cscX； 

> > 1.不是所有的函数都可以求导；

> > 2.可导的函数一定连续，但连续的函数不一定可导（如y=|x|在y=0处不可导）。

### 偏导数

### 最优化理论

> 拉格朗日乘子法 用于求解（等式约束条件下的最优解）参数不足最优解。

> KKT(来自三个人的名字) 适用于不等式约束条件的约束。 

## 矩阵

### 一、矩阵加法 

> 两个矩阵相加或相减，需要满足两个矩阵的列数和行数一致。

> 加法交换律：A + B = B + A

> > a + b = [ a + a 1 b + a 2 c + b 1 d + b 2 ] (1) a+b= \left[

### 二、矩阵减法

> a − b = [ a − a 1 b − a 2 c − b 1 d − b 2 ] 

### 三、矩阵乘法

> 两个矩阵A和B相乘，需要满足A的列数等于B的行数。

> a矩阵的行元素乘以每一列然后相加作为新矩阵的行元素

> a ∗ b = [ a ∗ a 1 + b ∗ b 1 a ∗ a 2 + b ∗ b 2 c ∗ a 1 + d ∗ b 1 c ∗ a 2 + d ∗ b 2 ] 

> 矩阵乘法不满足交换律，但是满足分配率和结合律,也就是说AB不等于BA

### 四、矩阵转置

> 矩阵转置之后(行变成列，列变成行)

### 五、逆矩阵

> 矩阵A的逆矩阵记作A’， A A’=A’A= I，I是单位矩阵。

> 先介绍一下矩阵的单位阵，就是单位矩阵是一个n×n矩阵，从左到右的对角线上的元素是1，其余元素都为0。

> 性质：ac=ca=a

### 六、对称矩阵

> 如果一个矩阵转置后等于原矩阵，那么这个矩阵称为对称矩阵。由定义可知，对称矩阵一定是方阵。一个矩阵转置和这个矩阵的乘积就是一个对称矩阵：

### 七、矩阵性质总结

> 性质1：单位矩阵的行列式为 1 ，与之对应的是单位立方体的体积是 1。

> 性质 2：当两行进行交换的时候行列式改变符号。

> 性质 3：行列式是单独每一行的线性函数（其它行不变）。

> 性质4：矩阵中有俩行一样，矩阵的行列式为0。

> 性质 5：用矩阵的一行减去另一行的倍数，行列式不变。

> 性质 6：当矩阵的某一行全为零的时候，行列式为零。

> 性质 7：如果矩阵是三角形的，那么行列式等于对角线上元素的乘积。

> 性质 8：如果矩阵是可逆的那么矩阵的行列式不等于0，反之行列式为0

## 图形图像

### 颜色模型

> RGB

> CMYK

> HSL

> YUV

### 图像基本属性

> 灰度

> > 彩色转灰度：最大值法，平均值法，加权平均值法，分量法 

> 亮度

> 对比度

> 色相

> 饱和度

### 图像特征

> 颜色

> 纹理

> 形状

### 图像典型特征描述

> LBP(Local Binary Patterns)

> HOG(Histogram of Oriented Gradient)

> > 梯度直方图计算

> > HOG 特征向量

> Haar-like 

> > AdaBoost可以帮助Haar在特征组合选择上做得更好

> 图像的傅立叶变换

> > 利用傅立叶变换之后的图像消除噪点然后再还原回原图像，可以帮助消除图像上的噪点。

> > 傅立叶变换还可以用来抉择采样频率和存储空间的问题 

## 普适计算(Uniquitous Computing)

> 普适计算（Ubiquitous computing（ubicomp）、pervasive computing），又称普存计算、普及计算、遍布式计算、泛在计算，是一个强调和环境融为一体的计算概念，而计算机本身则从人们的视线里消失。在普适计算的模式下，人们能够在任何时间、任何地点、以任何方式进行信息的获取与处理。普适计算是一个涉及研究范围很广的课题，包括分布式计算、移动计算、人机交互、人工智能、嵌入式系统、感知网络以及信息融合等多方面技术的融合。普适计算在教育中的应用项目：（1）清华大学smart class项目、（2）台湾淡江大学的硬件SCORM项目、（3）MIT的Oxygen项目。普适计算的核心思想是小型、便宜、网络化的处理设备广泛分布在日常生活的各个场所，计算设备将不只依赖命令行、图形界面进行人机交互，而更依赖“自然”的交互方式，计算设备的尺寸将缩小到毫米甚至纳米级。无线传感器网络将广泛普及，人体传感器网络会大大促进健康监控以及人机交互等的发展。各种新型交互技术将使交互更容易、更方便。

## 最优化问题

### 拉格朗日乘子法（解决等式约束问题）

### KKT（解决不等式约束问题）

## 分布

### 离散型随机变量的分布

#### 伯努利分布（Bernoulli Distribution）

> 伯努利分布是指实验结果只有两种，如某种情况发生与不发生，病人康复与不康复，硬币的正面或反面，我们一般用0和1来表示这两种结果，因此伯努利分布有时也被称为0-1分布或是两点分布。通常假设事件发生的概率为p pp且0 < p < 1 0 < p < 10 < p < 1，那么不发生的概率是1 − p 1-p1−p（或称之为q = 1 − p q=1-pq=1−p），即P r ( X = 1 ) = p {P_r}(X =1) = 

#### 二项分布（Binomial Distribution）

> 将伯努利分布中的随机试验称为伯努利试验，将该试验的结果从1次推广到n nn次，即形成了二项分布。因此，二项分布是指在n nn次重复试验（此处称为重复试验是因为每一次试验都是完全一样的伯努利试验）中，事件A发生的次数服从的分布。如我们连续掷10次硬币，其中正面朝上的次数？如连续掷3次骰子，点数大于3的次数？记事件{ X = k } {X=k}{X=k}表示在n nn次试验中，事件X XX恰好发生k kk次。注意，我们只说了发生k kk次，却没有要求知道这k kk次是具体哪几次。由于伯努利试验中事件发生的概率是p pp，根据排列组合知识，事件发生了k kk次的概

#### 负二项分布（Negative Binomial Distribution）

> 从字面意义上理解，负二项分布和二项分布只有一字之差，那什么叫负二项分布（也称帕斯卡分布）呢？二项分布是指在n nn次试验中事件A发生的次数（或称试验成功的次数），而负二项分布是指当事件A累积没有发生r rr次时，事件A发生的次数。它的试验过程是这样的：将伯努利试验做了X = k + r X=k+rX=k+r次，在前k + r − 1 k+r-1k+r−1次试验中，事件A发生了k kk次，没有发生的次数是r − 1 r-1r−1，而在第k + r k+rk+r次试验时，事件A刚好又没有发生，此时事件A累积没有发生的次数为r rr次，而k kk即服从负二项分布，记为K ∼ N B ( r , p ) K∼NB(r,p)K∼NB(r,p)，r , p r,pr,p为负二项分布的参数。

#### 几何分布（Geometric distribution）

> 几何分布是指重复进行成功率为p pp伯努利试验，进行到第k kk次试验才首次成功。回忆上面的注解中关于负二项分布的第二个定义，发现几何分布是负二项分布中r = 1 r=1r=1的特例。几何分布在实际生活中也比较常见，如某人打靶命中率为p pp，那么他打多少次才能打中靶？如加工某个零件，其不合格率为0.05，那么首次加工出不合格零件时已加工了多少个零件？我们一般将几何分布记为X ∼ G E ( p ) X∼GE(p)X∼GE(p)，p pp是其参数。

#### 超几何分布（Hypergeometric Distribution）

> 超几何分布通常是指从N NN个有限的物品中不放回的抽出n nn个物品（假设N NN个物品中含有某种指定物品的个数为M MM个），那么其中指定的物品有多少个？

####  泊松分布（Poisson Distribution）

> 泊松分布应该是最为常见的离散分布了，在很多领域都有应用。在概率论书籍中，关于泊松分布都是直接给出了其分布律，并没有详细说明该分布律的由来。关于这点，本人大力推荐看博主“马同学图解数学”写的关于泊松的理解《如何通俗易懂理解泊松分布》，该博主对泊松分布解释的非常到位，因此本文就不作详细介绍了。

### 连续型随机变量的分布

> 连续型随机变量是针对离散随机变量而言。离散型随机变量的取值是可数的无限的或是有限个，而连续型随机变量的取值是无限不可数的，如公交车到站的具体时间，晶体管的寿命，某个中学所有学生的身高等。

####  正态分布（Normal Distribution）

> 正态分布又称高斯分布（Gauss Distribution，主要在常见于外文文献），其原因是正态分布虽然由法国数学家棣莫弗（Abraham de Moivre）于1733年首次提出，但德国数学家高斯（Gauss）率先将其应用于天文研究，而他的这项工作对后世影响极大，因此很多人将其称为“高斯分布”。

####  均匀分布（Uniform Distribution）

> 均匀分布也称为矩形分布，一般记为X ∼ U ( a , b ) X∼U(a,b)X∼U(a,b)。它是一种对称的概率分布，即在相同的长度内，取值概率是相等的。

####  指数分布（Exponential Distribution）

> 指数分布常用来描述独立随机事件发生的时间间隔。

####  β分布（Beta Distribution，贝塔分布）

####  Γ GammaΓ分布（Gamma Distribution,伽马分布）

## 数据结构

1.集合：数据结构中的元素之间除了“同属一个集合” 的相互关系外，别无其他关系；
2.线性结构：数据结构中的元素存在一对一的相互关系； 
3.树形结构：数据结构中的元素存在一对多的相互关系； 
4.图形结构：数据结构中的元素存在多对多的相互关系。 

在计算机科学的发展过程中，数据结构也随之发展。程序设计中常用的数据结构包括如下几个。 
数组(Array)
数组是一种聚合数据类型，它是将具有相同类型的若干变量有序地组织在一起的集合。数组可以说是最基本的数据结构，在各种编程语言中都有对应。一个数组可以分解为多个数组元素，按照数据元素的类型，数组可以分为整型数组、字符型数组、浮点型数组、指针数组和结构数组等。数组还可以有一维、二维以及多维等表现形式。
栈( Stack)
栈是一种特殊的线性表，它只能在一个表的一个固定端进行数据结点的插入和删除操作。栈按照先进后出或后进先出的原则来存储数据，也就是说，先插入的数据将被压入栈底，最后插入的数据在栈顶，读出数据时，从栈顶开始逐个读出。栈在汇编语言程序中，经常用于重要数据的现场保护。栈中没有数据时，称为空栈。
队列(Queue)
队列和栈类似，也是一种特殊的线性表。和栈不同的是，队列只允许在表的一端进行插入操作，而在另一端进行删除操作。一般来说，进行插入操作的一端称为队尾，进行删除操作的一端称为队头。队列中没有元素时，称为空队列。  
链表( Linked List)
链表是一种数据元素按照链式存储结构进行存储的数据结构，这种存储结构具有在物理上存在非连续的特点。链表由一系列数据结点构成，每个数据结点包括数据域和指针域两部分。其中，指针域保存了数据结构中下一个元素存放的地址。链表结构中数据元素的逻辑顺序是通过链表中的指针链接次序来实现的。
树( Tree)
树是典型的非线性结构，它是包括，2个结点的有穷集合K。在树结构中，有且仅有一个根结点，该结点没有前驱结点。在树结构中的其他结点都有且仅有一个前驱结点，而且可以有两个后继结点，m≥0。
图(Graph)
图是另一种非线性数据结构。在图结构中，数据结点一般称为顶点，而边是顶点的有序偶对。如果两个顶点之间存在一条边，那么就表示这两个顶点具有相邻关系。 
堆(Heap)
堆是一种特殊的树形数据结构，一般讨论的堆都是二叉堆。堆的特点是根结点的值是所有结点中最小的或者最大的，并且根结点的两个子树也是一个堆结构。 
散列表(Hash)
散列表源自于散列函数(Hash function)，其思想是如果在结构中存在关键字和T相等的记录，那么必定在F(T)的存储位置可以找到该记录，这样就可以不用进行比较操作而直接取得所查记录。 

## 算法

数据结构研究的内容：就是如何按一定的逻辑结构，把数据组织起来，并选择适当的存储表示方法把逻辑结构组织好的数据存储到计算机的存储器里。算法研究的目的是为了更有效的处理数据，提高数据运算效率。数据的运算是定义在数据的逻辑结构上，但运算的具体实现要在存储结构上进行。一般有以下几种常用运算： 

(1)检索。检索就是在数据结构里查找满足一定条件的节点。一般是给定一个某字段的值，找具有该字段值的节点。 

(2)插入。往数据结构中增加新的节点。

(3)删除。把指定的结点从数据结构中去掉。

(4)更新。改变指定节点的一个或多个字段的值。

(5)排序。把节点按某种指定的顺序重新排列。例如递增或递减。

章 导论
1.1 什么是算法
1.2 算法规范
1.2.1 引言
1.2.2 递归算法
1.3 性能分析
1.3.1 空间复杂度
1.3.2 时间复杂度
1.3.3 渐近符号 （O、 佟龋?
1.3.4 实际复杂度
1.3.5 性能度量
1.4 随机算法
1.4.1 概率论基础
1.4.2 随机算法： 非形式化的描述
1.4.3 识别重复元素
1.4.4 素数测试
1.4.5 优点与缺点
1.5 参考文献和读物
第2章 基本数据结构
2.1 栈和队列
2.2 树
2.2.1 术语
2.2.2 二叉树
2.3 字典
2.3.1 二叉查找树
2.3.2 代价分摊
2.4 优先队列
2.4.1 堆
2.4.2 堆排序
2.5 集合和不相交集合的并
2.5.1 概述
2.5.2 并和查找操作
2.6 图
2.6.1 概述
2.6.2 定义
2.6.3 图的表示方法
2.7 参考文献和读物
第3章 分治算法
3.1 一般方法
3.2 二叉查找
3.3 查找值和值
3.4 归并排序
3.5 快速排序
3.5.1 性能度量
3.5.2 随机排序算法
3.6 选择
3.6.1 最坏情况下的算法
3.6.2 Select2的实现
3.7 Strassen矩阵乘法
3.8 凸包
3.8.1 几种原始几何方法
3.8.2 QuickHull算法
3.8.3 Graham扫描算法
3.8.4 一个O(nlogn)的分治算法
3.9 参考文献和读物
3.10 附加习题
第4章 贪心算法
4.1 一般方法
4.2 背包问题
4.3 树节点分割
4.4 带有期限的作业顺序问题
4.5 代价生成树
4.5.1 Prim算法
4.5.2 Kruskal算法
4.5.3 一个随机算法（*）
4.6 磁带的存储
4.7 归并模式
4.8 单源最短路径
4.9 参考文献和读物
4.10 附加习题
第5章 动态规划
5.1 一般方法
5.2 多部图
5.3 每一对顶点之间的最短路径
5.4 单源最短路径： 普通权值
5.5 二叉查找树
5.6 串编辑
5.7 0/1背包
5.8 可靠性设计
5.9 旅行商问题
5.10 流水作业调度
5.11 参考文献和读物
5.12 附加习题
第6章 基本的查找和遍历技术
6.1 二叉树算法
6.2 图算法
6.2.1 广度优先搜索和遍历
6.2.2 深度优先搜索和遍历
6.3 连通分支和生成树
6.4 双连通分支和DFS算法
6.5 参考文献和读物
第7章 回溯
7.1 一般方法
7.2 8皇后问题
7.3 子集求和问题
7.4 图的着色
7.5 哈密顿回路
7.6 背包问题
7.7 参考文献和读物
7.8 附加习题
第8章 分支限界法
8.1 一般方法
8.1.1 代价查找
8.1.2 15拼板： 一个例子
8.1.3 LC查找的控制抽象
8.1.4 限界
8.1.5 FIFO分支限界法
8.1.6 LC分支限界法
8.2 0/1背包问题
8.2.1 LC分支限界法求解
8.2.2 FIFO分支限界法求解
8.3 旅行商问题
8.4 效率因素
8.5 参考文献和读物
第9章 代数问题
9.1 一般方法
9.2 计算和插值
9.3 快速傅里叶变换
9.3.1 FFT的原地版本
9.3.2 一些保留问题
9.4 模运算
9.5 更快的计算和插值
9.6 参考文献和读物
0章 下界理论
10.1 比较树
10.1.1 有序查找
10.1.2 排序
10.1.3 选择
10.2 喻示和对立论
10.2.1 归并
10.2.2 和次大
10.2.3 状态空间方法
10.2.4 选择
10.3 通过规约求下界
10.3.1 寻找凸包
10.3.2 不相交集合问题
10.3.3 即时中值查找
10.3.4 三角矩阵相乘
10.3.5 下三角矩阵求逆
10.3.6 计算传递闭包
10.4 解决代数问题的技术
10.5 参考文献和读物
1章 难与完全问题
11.1 基本概念
11.1.1 非确定性算法
11.1.2 难和完全类
11.2 Cook定理（*）
11.3 难的图问题
11.3.1 团判定问题
11.3.2 节点覆盖判定问题
11.3.3 色数判定问题
11.3.4 有向哈密顿回路（*）
11.3.5 旅行商判定问题
11.3.6 与/或图判定问题
11.4 难的调度问题
11.4.1 调度相同的处理器
11.4.2 流水作业调度
11.4.3 作业安排调度
11.5 难的代码生成问题
11.5.1 带有公共子表达式的代码生成
11.5.2 实现并行赋值指令
11.6 一些简化的难问题
11.7 参考文献和读物
11.8 附加习题
2章 近似算法
12.1 概述
12.2 近似
12.2.1 平面图着色
12.2.2 最多程序存储问题
12.2.3 难的近似
12.3 褰?
12.3.1 独立任务的调度
12.3.2 装箱问题
12.3.3 难的褰莆侍?
12.4 多项式时间近似方案
12.4.1 独立任务的调度
12.4.2 0/1背包
12.5 完全多项式时间近似方案
12.5.1 舍入法
12.5.2 区间划分法
12.5.3 分割法
12.6 概率上的好算法
12.7 参考文献和读物
12.8 附加习题
3章 PRAM算法
13.1 概述
13.2 计算模型
13.3 基本技术和算法
13.3.1 前缀计算
13.3.2 表排序
13.4 选择
13.4.1 使用n?2个处理器选择值
13.4.2 使用n个处理器选择值
13.4.3 在整数中选择值
13.4.4 使用n?2个处理器的一般选择问题
13.4.5 一个工作的随机算法
13.5 归并
13.5.1 对数时间算法
13.5.2 奇偶归并
13.5.3 工作的算法
13.5.4 O(log logm)时间算法
13.6 排序
13.6.1 奇偶归并排序
13.6.2 随机选择算法
13.6.3 Preparata算法
13.6.4 Reischuk随机算法（*）
13.7 图问题
13.7.1 计算传递闭包的另一种算法
13.7.2 每一对顶点之间的最短路径
13.8 计算凸包
13.9 下界
13.9.1 平均情况下排序的下界
13.9.2 寻找值
13.10 参考文献和读物
13.11 附加习题
4章 网格算法
14.1 计算模型
14.2 分组路由
14.2.1 线性阵列中的分组路由
14.2.2 网格上PPR的贪心算法
14.2.3 具有小队列的随机算法
14.3 基本算法
14.3.1 广播
14.3.2 前缀计算
14.3.3 数据集中
14.3.4 稀疏枚举排序
14.4 选择
14.4.1 n=p时的随机算法
14.4.2 n＞p时的随机选择
14.4.3 n＞p时的确定性算法
14.5 归并
14.5.1 在线性阵列上的顺序号归并
14.5.2 线性阵列上的奇偶归并
14.5.3 在网格上的奇偶归并
14.6 排序
14.6.1 在线性阵列上的排序
14.6.2 在网格上的排序
14.7 图问题
14.7.1 传递闭包的n×n网格算法
14.7.2 每一对顶点之间的最短路径
14.8 计算凸包
14.9 参考文献和读物
14.10 附加习题
5章 超立方体算法
15.1 计算模型
15.1.1 超立方体
15.1.2 蝶形网络
15.1.3 其他网络的嵌入
15.2 PPR路由
15.2.1 贪心算法
15.2.2 随机算法
15.3 基本算法
15.3.1 广播
15.3.2 前缀计算
15.3.3 数据集中
15.3.4 稀疏枚举排序
15.4 选择
15.4.1 n=p时的随机算法
15.4.2 n＞p时的随机选择
15.4.3 n＞p时的确定性算法
15.5 归并
15.5.1 奇偶归并
15.5.2 双调谐归并
15.6 排序
15.6.1 奇偶归并排序
15.6.2 双调谐排序
15.7 图问题
15.8 计算凸包
15.9 参考文献和读物
15.10 附加习题
索引
Introduction to Algorithms, Third Edition
出版者的话
译者序
前言
部分　基础知识
第1章　算法在计算中的作用
　1.1　算法
　1.2　作为一种技术的算法
　思考题
　本章注记
第2章　算法基础
　2.1　插入排序
　2.2　分析算法
　2.3　设计算法
　　2.3.1　分治法
　　2.3.2　分析分治算法
　思考题
　本章注记
第3章　函数的增长
　3.1　渐近记号
　3.2　标准记号与常用函数
　思考题
　本章注记
第4章　分治策略
　4.1　子数组问题
　4.2　矩阵乘法的Strassen算法
　4.3　用代入法求解递归式
　4.4　用递归树方法求解递归式
　4.5　用主方法求解递归式
　4.6　证明主定理
　　4.6.1　对b的幂证明主定理
　　4.6.2　向下取整和向上取整
　思考题
　本章注记
第5章　概率分析和随机算法
　5.1　雇用问题
　5.2　指示器随机变量
　5.3　随机算法
　?5.4　概率分析和指示器随机变量的进一步使用
　　5.4.1　生日悖论
　　5.4.2　球与箱子
　　5.4.3　特征序列
　　5.4.4　在线雇用问题
　思考题
　本章注记
第二部分　排序和顺序统计量
第6章　堆排序
　6.1　堆
　6.2　维护堆的性质
　6.3　建堆
　6.4　堆排序算法
　6.5　优先队列
　思考题
　本章注记
第7章　快速排序
　7.1　快速排序的描述
　7.2　快速排序的性能
　7.3　快速排序的随机化版本
　7.4　快速排序分析
　　7.4.1　坏情况分析
　　7.4.2　期望运行时间
　思考题
　本章注记
第8章　线性时间排序
　8.1　排序算法的下界
　8.2　计数排序
　8.3　基数排序
　8.4　桶排序
　思考题
　本章注记
第9章　中位数和顺序统计量
　9.1　小值和值
　9.2　期望为线性时间的选择算法
　9.3　坏情况为线性时间的选择算法
　思考题
　本章注记
第三部分　数据结构
第10章　基本数据结构
　10.1　栈和队列
　10.2　链表
　10.3　指针和对象的实现
　10.4　有根树的表示
　思考题
　本章注记
第11章　散列表
　11.1　直接寻址表
　11.2　散列表
　11.3　散列函数
　　11.3.1　除法散列法
　　11.3.2　乘法散列法
　　11.3.3　全域散列法
　11.4　开放寻址法
　11.5　完全散列
　思考题
　本章注记
第12章　二叉搜索树
　12.1　什么是二叉搜索树
　12.2　查询二叉搜索树
　12.3　插入和删除
　12.4　随机构建二叉搜索树
　思考题
　本章注记
第13章　红黑树
　13.1　红黑树的性质
　13.2　旋转
　13.3　插入
　13.4　删除
　思考题
　本章注记
第14章　数据结构的扩张
　14.1　动态顺序统计
　14.2　如何扩张数据结构
　14.3　区间树
　思考题
　本章注记
第四部分　高级设计和分析技术
第15章　动态规划
　15.1　钢条切割
　15.2　矩阵链乘法
　15.3　动态规划原理
　15.4　长公共子序列
　15.5　二叉搜索树
　思考题
　本章注记
第16章　贪心算法
　16.1　活动选择问题
　16.2　贪心算法原理
　16.3　赫夫曼编码
　16.4　拟阵和贪心算法
　16.5　用拟阵求解任务调度问题
　思考题
　本章注记
第17章　摊还分析
　17.1　聚合分析
　17.2　核算法
　17.3　势能法
　17.4　动态表
　　17.4.1　表扩张
　　17.4.2　表扩张和收缩
　思考题
　本章注记
第五部分　高级数据结构
第18章　B树
　18.1　B树的定义
　18.2　B树上的基本操作
　18.3　从B树中删除关键字
　思考题
　本章注记
第19章　斐波那契堆
　19.1　斐波那契堆结构
　19.2　可合并堆操作
　19.3　关键字减值和删除一个结点
　19.4　度数的界
　思考题
　本章注记
第20章　van Emde Boas树
　20.1　基本方法
　20.2　递归结构
　　20.2.1　原型van Emde Boas结构
　　20.2.2　原型van Emde Boas结构上的操作
　20.3　van Emde Boas树及其操作
　　20.3.1　van Emde Boas树
　　20.3.2　van Emde Boas树的操作
　思考题
　本章注记
第21章　用于不相交集合的数据结构
　21.1　不相交集合的操作
　21.2　不相交集合的链表表示
　21.3　不相交集合森林
　*21.4　带路径压缩的按秩合并的分析
　思考题
　本章注记
第六部分　图算法
第22章　基本的图算法
　22.1　图的表示
　22.2　广度优先搜索
　22.3　深度优先搜索
　22.4　拓扑排序
　22.5　强连通分量
　思考题
　本章注记
第23章　小生成树
　23.1　小生成树的形成
　23.2　Kruskal算法和Prim算法
　思考题
　本章注记
第24章　单源短路径
　24.1　Bellman?Ford算法
　24.2　有向无环图中的单源短路径问题
　24.3　Dijkstra算法
　24.4　差分约束和短路径
　24.5　短路径性质的证明
　思考题
　本章注记
第25章　所有结点对的短路径问题
　25.1　短路径和矩阵乘法
　25.2　Floyd?Warshall算法
　25.3　用于稀疏图的Johnson算法
　思考题
　本章注记
第26章　流
　26.1　流网络
　26.2　Ford\Fulkerson方法
　26.3　二分匹配
　26.4　推送重贴标签算法
　26.5　前置重贴标签算法
　思考题
　本章注记
第七部分　算法问题选编
第27章　多线程算法
　27.1　动态多线程基础
　27.2　多线程矩阵乘法
　27.3　多线程归并排序
　思考题
　本章注记
第28章　矩阵运算
　28.1　求解线性方程组
　28.2　矩阵求逆
　28.3　对称正定矩阵和小二乘逼近
　思考题
　本章注记
第29章　线性规划
　29.1　标准型和松弛型
　29.2　将问题表达为线性规划
　29.3　单纯形算法
　29.4　对偶性
　29.5　初始基本可行解
　思考题
　本章注记
第30章　多项式与快速傅里叶变换
　30.1　多项式的表示
　30.2　DFT与FFT
　30.3　高效FFT实现
　思考题
　本章注记
第31章　数论算法
　31.1　基础数论概念
　31.2　公约数
　31.3　模运算
　31.4　求解模线性方程
　31.5　中国余数定理
　31.6　元素的幂
　31.7　RSA公钥加密系统
　31.8　素数的测试
　31.9　整数的因子分解
　思考题
　本章注记
第32章　字符串匹配
　32.1　朴素字符串匹配算法
　32.2　Rabin\Karp算法
　32.3　利用有限自动机进行字符串匹配
　32.4　Knuth?Morris?Pratt算法
　思考题
　本章注记
第33章　计算几何学
　33.1　线段的性质
　33.2　确定任意一对线段是否相交
　33.3　寻找凸包
　33.4　寻找近点对
　思考题
　本章注记
第34章　NP完全性
　34.1　多项式时间
　34.2　多项式时间的验证
　34.3　NP完全性与可归约性
　34.4　NP完全性的证明
　34.5　NP完全问题
　　34.5.1　团问题
　　34.5.2　顶点覆盖问题
　　34.5.3　哈密顿回路问题
　　34.5.4　旅行商问题
　　34.5.5　子集和问题
　思考题
　本章注记
第35章　近似算法
　35.1　顶点覆盖问题
　35.2　旅行商问题
　35.2.1　满足三角不等式的旅行商问题
　35.2.2　一般旅行商问题
　35.3　集合覆盖问题
　35.4　随机化和线性规划
　35.5　子集和问题
　思考题
　本章注记
第八部分　附录：数学基础知识
附录A　求和
　A.1　求和公式及其性质
　A.2　确定求和时间的界
　思考题
　附录注记
附录B　集合等离散数学内容
　B.1　集合
　B.2　关系
　B.3　函数
　B.4　图
　B.5　树
　　B.5.1　自由树
　　B.5.2　有根树和有序树
　　B.5.3　二叉树和位置树
　思考题
　附录注记
附录C　计数与概率
　C.1　计数
　C.2　概率
C.3　离散随机变量
　C.4　几何分布与二项分布
　*C.5　二项分布的尾部
　思考题
　附录注记
附录D　矩阵
　D.1　矩阵与矩阵运算
　D.2　矩阵基本性质
　思考题
　附录注记
参考文献
索引

## 经典机器学习算法

### SVC（C-Support Vector Classification）：

> 支持向量分类，基于libsvm实现的（libsvm详情参考 或者百科），数据拟合的时间复杂度是数据样本的二次方，这使得他很难扩展到10000个数据集，当输入是多类别时（SVM最初是处理二分类问题的

> > LibSVM是台湾林智仁(Chih-Jen Lin)教授2001年开发的一套支持向量机的库，这套库运算速度还是挺快的，可以很方便的对数据做分类或回归。由于libSVM程序小，运用灵活，输入参数少，并且是开源的，易于扩展，因此成为目前国内应用最多的SVM的库。这套库可以从http://www.csie.ntu.edu.tw/~cjlin/免费获得，目前已经发展到2.89版。下载.zip格式的版本，解压后可以看到，主要有5个文件夹和一些c++源码文件。

### NuSVC（Nu-Support Vector Classification.）：

> 核支持向量分类，和SVC类似，也是基于libsvm实现的，但不同的是通过一个参数空值支持向量的个数

### LinearSVC（Linear Support Vector Classification）：

> 线性支持向量分类，类似于SVC，但是其使用的核函数是”linear“上边介绍的两种是按照brf（径向基函数计算的，其实现也不是基于LIBSVM，所以它具有更大的灵活性在选择处罚和损失函数时，而且可以适应更大的数据集，他支持密集和稀疏的输入是通过一对一的方式解决的

### 回归分析

#### 线性回归

> 一元线性，多元线性

> 损失函数 平均绝对误差，均方误差，均方根误差

#### 逻辑回归

> 用于预测 分类

##### 二分类 

> 逻辑函数 sigmoid 函数

> 判定边界(Decision Boundary)

> 代价函数和优化过程（Cost Function）

##### 多分类

> 转化为二分类问题

> 基于二分类扩展 深度神经网络 ,决策树 ,k-nearest neighbors ,Naive Bayes,SVM

> 层次化分类器（Hierarchical Classification）Softmax

> 二分类 多分类目标相同，均为给出该分类的概率值 

### KNN

> K 临近算法 K-Nearest Neighbors 属于Lazy Learning 

> KNN分类预测时，一般是选择多数表决法，即训练集里和预测的样本特征最近的K个样本，预测为里面有最多类别数的类别。

> KNN做回归时，一般是选择平均法，即最近的K个样本的样本输出的平均值作为回归预测值。

### K-Means （需要再看看）

> 与KNN一样不需要训练，中心点会变化最终收敛.

### 贝叶斯 

#### 贝叶斯定理（朴素贝叶斯）

> 贝叶斯定义是概率论中的一个定理,它跟随机变量的条件概率以及边缘概率分布有关.其实就是根据先验概率计算后验概率。

> 通常，事件A在事件B（发生）的条件下的概率，与事件B在事件A（发生）的条件下的概率是不一样的，然而,这两者之间是有确定的关系的，贝叶斯定理就是这种关系的陈述。贝叶斯公式的一个用途在于通过已知的三个概率函数推出第四个.

> 以下三种为非朴素贝叶斯

#### Bernoulli Naive Bayes 伯努利朴素贝叶斯

伯努利朴素贝叶斯,其实应该叫"Multi-variate Naive Bayes",假设P(X=x|Y=c_k)是多变量伯努利分布.在了解多变量伯努利分布之前,先介绍一下什么是(单变量的)伯努利分布.

> 伯努利分布

伯努利分布,又叫做两点分布或0-1分布,是一个离散型概率分布.称随机变量X有伯努利分布,参数为p(0< p <1),它分别以概率p和1-p取1和0为值.

最简单的例子就是抛硬币,硬币结果为正或反.

> P(X=x)=p^x (1-p)^{(1-x)}=px+(1-p)(1-x)

幂次运算变成乘法运算,更简单.当x=1时,概率是P(X=1)=p,当x=0时,概率P(X=0)=1-p,这样就可以将两种情况合在一起.

了解了什么是伯努利分布之后,我们再看什么是多元伯努利分布(多变量 multi-variate Bernoulli).

> 多元伯努利分布

#### Multinomial Naive Bayes 多项式朴素贝叶斯

> 多项式分布

将伯努利分布的单变量扩展到d维向量

#### Gaussian Naive Bayes 高斯朴素贝叶斯

> 高斯分布

> > 高斯分布又称正态分布，在实际应用中最为广泛。

> 多元高斯分布

> 高斯朴素贝叶斯

## 神经网络

### 什么是神经网络

### 激活函数

### 卷积神经网络

### RNN循环神经网络

### LSTM （Long Short-Term Memory）

> 一种特殊的递归神经网络


## Tensorflow

### C# .NET 中调用 Tensorflow

> https://github.com/migueldeicaza/TensorFlowSharp

'''

When to use TensorFlowSharp

TensorFlowSharp is a good runtime to run your existing models, and is mostly a straight binding to the underlying TensorFlow runtime. Most people will want to use a higher-level library for interfacing with TensorFlow.

The library was designed to blend in the .NET ecosystem and use the .NET naming conventions.

I strongly recommend that you use TensorFlow.NET which takes a different approach than TensorFlowSharp, it uses the Python naming convention and has a much broader support for the higher level operations that you are likely to need - and is also actively maintained.

TensorFlowSharp

TensorFlowSharp are .NET bindings to the TensorFlow library published here:

https://github.com/tensorflow/tensorflow

This surfaces the C API as a strongly-typed .NET API for use from C# and F#.

The API surfaces the entire low-level TensorFlow API, it is on par with other language bindings. But currently does not include a high-level API like the Python binding does, so it is more cumbersome to use for those high level operations.

You can prototype using TensorFlow or Keras in Python, then save your graphs or trained models and then load the result in .NET with TensorFlowSharp and feed your own data to train or run.

The current API documentation is here.

Using TensorFlowSharp

Installation

The easiest way to get started is to use the NuGet package for TensorFlowSharp which contains both the .NET API as well as the native libraries for 64-bit Linux, Mac and Windows using the CPU backend.

You can install using NuGet like this:

nuget install TensorFlowSharp

Or select it from the NuGet packages UI on Visual Studio.

On Visual Studio, make sure that you are targeting .NET 4.6.1 or later, as this package uses some features of newer .NETs. Otherwise, the package will not be added. Once you do this, you can just use the TensorFlowSharp nuget

Alternatively, you can download it directly.

Using TensorFlowSharp

Your best source of information right now are the SampleTest that exercises various APIs of TensorFlowSharp, or the stand-alone samples located in "Examples".

This API binding is closer design-wise to the Java and Go bindings which use explicit TensorFlow graphs and sessions. Your application will typically create a graph (TFGraph) and setup the operations there, then create a session from it (TFSession), then use the session runner to setup inputs and outputs and execute the pipeline.

Something like this:

using (var graph = new TFGraph ())

{

  // Load the model

  graph.Import (File.ReadAllBytes ("MySavedModel"));

  using (var session = new TFSession (graph))

  {

    // Setup the runner

    var runner = session.GetRunner ();

    runner.AddInput (graph ["input"] [0], tensor);

    runner.Fetch (graph ["output"] [0]);

    // Run the model

    var output = runner.Run ();

    // Fetch the results from output:

    TFTensor result = output [0];

  }

}

If your application is sensitive to GC cycles, you can run your model as follows. The Run method will then allocate managed memory only at the first call and reuse it later on. Note that this requires you to reuse the Runner instance and not to change the shape of the input data:

// Some input matrices

var inputs = new float[][,] {

  new float[,] { { 1, 2 }, { 3, 4 } },

  new float[,] { { 2, 4 }, { 6, 8 } }

};

// Assumes all input matrices have identical shape

var shape = new long[] { inputs[0].GetLongLength(0), inputs[0].GetLongLength(1) };

var size = inputs[0].Length * sizeof(float);

// Empty input and output tensors

var input = new TFTensor(TFDataType.Float, shape, size);

var output = new TFTensor[1];

// Result array for a single run

var result = new float[1, 1];

using (var graph = new TFGraph())

{

  // Load the model

  graph.Import(File.ReadAllBytes("MySavedModel"));

  using (var session = new TFSession(graph))

  {

    // Setup the runner

    var runner = session.GetRunner();

    runner.AddInput(graph["input"][0], input);

    runner.Fetch(graph["output"][0]);

    // Run the model on each input matrix

    for (int i = 0; i < inputs.Length; i++)

    {

      // Mutate the input tensor

      input.SetValue(inputs[i]);

      // Run the model

      runner.Run(output);

      // Fetch the result from output into `result`

      output[0].GetValue(result);

    }

  }

}

In scenarios where you do not need to setup the graph independently, the session will create one for you. The following example shows how to abuse TensorFlow to compute the addition of two numbers:

using (var session = new TFSession())

{

  var graph = session.Graph;

  var a = graph.Const(2);

  var b = graph.Const(3);

  Console.WriteLine("a=2 b=3");

  // Add two constants

  var addingResults = session.GetRunner().Run(graph.Add(a, b));

  var addingResultValue = addingResults.GetValue();

  Console.WriteLine("a+b={0}", addingResultValue);

  // Multiply two constants

  var multiplyResults = session.GetRunner().Run(graph.Mul(a, b));

  var multiplyResultValue = multiplyResults.GetValue();

  Console.WriteLine("a*b={0}", multiplyResultValue);

}

Here is an F# scripting version of the same example, you can use this in F# Interactive:

#r @"packages\TensorFlowSharp.1.4.0\lib\net471\TensorFlowSharp.dll"

open System

open System.IO

open TensorFlow

// set the path to find the native DLL

Environment.SetEnvironmentVariable("Path", 

  Environment.GetEnvironmentVariable("Path") + ";" + __SOURCE_DIRECTORY__ + @"/packages/TensorFlowSharp.1.2.2/native")

module AddTwoNumbers = 

  let session = new TFSession()

  let graph = session.Graph

  let a = graph.Const(new TFTensor(2))

  let b = graph.Const(new TFTensor(3))

  Console.WriteLine("a=2 b=3")

  // Add two constants

  let addingResults = session.GetRunner().Run(graph.Add(a, b))

  let addingResultValue = addingResults.GetValue()

  Console.WriteLine("a+b={0}", addingResultValue)

  // Multiply two constants

  let multiplyResults = session.GetRunner().Run(graph.Mul(a, b))

  let multiplyResultValue = multiplyResults.GetValue()

  Console.WriteLine("a*b={0}", multiplyResultValue)

Working on TensorFlowSharp

If you want to work on extending TensorFlowSharp or contribute to its development read the CONTRIBUTING.md file.

Please keep in mind that this requires a modern version of C# as this uses some new capabilities there. So you will want to use Visual Studio 2017.

Possible Contributions

Build More Tests

Would love to have more tests to ensure the proper operation of the framework.

Samples

The binding is pretty much complete, and at this point, I want to improve the API to be easier and more pleasant to use from both C# and F#. Creating samples that use Tensorflow is a good way of finding easy wins on the usability of the API, there are some here:

https://github.com/tensorflow/models

Packaging

Mobile: we need to package the library for consumption on Android and iOS.

Documentation Styling

The API documentation has not been styled, I am using the barebones template for documentation, and it can use some work.

Issues

I have logged some usability problems and bugs in Issues, feel free to take on one of those tasks.

Documentation

Much of the online documentation comes from TensorFlow and is licensed under the terms of Apache 2 License, in particular all the generated documentation for the various operations that is generated by using the tensorflow reflection APIs.

Last API update: Release 1.9

'''

## scikit-learn

### Classification

> Identifying which category an object belongs to.

> Applications: Spam detection, image recognition.

> Algorithms: SVM, nearest neighbors, random forest, and more...

> Classifier comparison

1. Supervised learning
1.1. Linear Models
1.1.1. Ordinary Least Squares
1.1.2. Ridge regression and classification
1.1.3. Lasso
1.1.4. Multi-task Lasso
1.1.5. Elastic-Net
1.1.6. Multi-task Elastic-Net
1.1.7. Least Angle Regression
1.1.8. LARS Lasso
1.1.9. Orthogonal Matching Pursuit (OMP)
1.1.10. Bayesian Regression
1.1.11. Logistic regression
1.1.12. Generalized Linear Models
1.1.13. Stochastic Gradient Descent - SGD
1.1.14. Perceptron
1.1.15. Passive Aggressive Algorithms
1.1.16. Robustness regression: outliers and modeling errors
1.1.17. Quantile Regression
1.1.18. Polynomial regression: extending linear models with basis functions
1.2. Linear and Quadratic Discriminant Analysis
1.2.1. Dimensionality reduction using Linear Discriminant Analysis
1.2.2. Mathematical formulation of the LDA and QDA classifiers
1.2.3. Mathematical formulation of LDA dimensionality reduction
1.2.4. Shrinkage and Covariance Estimator
1.2.5. Estimation algorithms
1.3. Kernel ridge regression
1.4. Support Vector Machines
1.4.1. Classification
1.4.2. Regression
1.4.3. Density estimation, novelty detection
1.4.4. Complexity
1.4.5. Tips on Practical Use
1.4.6. Kernel functions
1.4.7. Mathematical formulation
1.4.8. Implementation details
1.5. Stochastic Gradient Descent
1.5.1. Classification
1.5.2. Regression
1.5.3. Online One-Class SVM
1.5.4. Stochastic Gradient Descent for sparse data
1.5.5. Complexity
1.5.6. Stopping criterion
1.5.7. Tips on Practical Use
1.5.8. Mathematical formulation
1.5.9. Implementation details
1.6. Nearest Neighbors
1.6.1. Unsupervised Nearest Neighbors
1.6.2. Nearest Neighbors Classification
1.6.3. Nearest Neighbors Regression
1.6.4. Nearest Neighbor Algorithms
1.6.5. Nearest Centroid Classifier
1.6.6. Nearest Neighbors Transformer
1.6.7. Neighborhood Components Analysis
1.7. Gaussian Processes
1.7.1. Gaussian Process Regression (GPR)
1.7.2. GPR examples
1.7.3. Gaussian Process Classification (GPC)
1.7.4. GPC examples
1.7.5. Kernels for Gaussian Processes
1.8. Cross decomposition
1.8.1. PLSCanonical
1.8.2. PLSSVD
1.8.3. PLSRegression
1.8.4. Canonical Correlation Analysis
1.9. Naive Bayes
1.9.1. Gaussian Naive Bayes
1.9.2. Multinomial Naive Bayes
1.9.3. Complement Naive Bayes
1.9.4. Bernoulli Naive Bayes
1.9.5. Categorical Naive Bayes
1.9.6. Out-of-core naive Bayes model fitting
1.10. Decision Trees
1.10.1. Classification
1.10.2. Regression
1.10.3. Multi-output problems
1.10.4. Complexity
1.10.5. Tips on practical use
1.10.6. Tree algorithms: ID3, C4.5, C5.0 and CART
1.10.7. Mathematical formulation
1.10.8. Minimal Cost-Complexity Pruning
1.11. Ensemble methods
1.11.1. Bagging meta-estimator
1.11.2. Forests of randomized trees
1.11.3. AdaBoost
1.11.4. Gradient Tree Boosting
1.11.5. Histogram-Based Gradient Boosting
1.11.6. Voting Classifier
1.11.7. Voting Regressor
1.11.8. Stacked generalization
1.12. Multiclass and multioutput algorithms
1.12.1. Multiclass classification
1.12.2. Multilabel classification
1.12.3. Multiclass-multioutput classification
1.12.4. Multioutput regression
1.13. Feature selection
1.13.1. Removing features with low variance
1.13.2. Univariate feature selection
1.13.3. Recursive feature elimination
1.13.4. Feature selection using SelectFromModel
1.13.5. Sequential Feature Selection
1.13.6. Feature selection as part of a pipeline
1.14. Semi-supervised learning
1.14.1. Self Training
1.14.2. Label Propagation
1.15. Isotonic regression
1.16. Probability calibration
1.16.1. Calibration curves
1.16.2. Calibrating a classifier
1.16.3. Usage
1.17. Neural network models (supervised)
1.17.1. Multi-layer Perceptron
1.17.2. Classification
1.17.3. Regression
1.17.4. Regularization
1.17.5. Algorithms
1.17.6. Complexity
1.17.7. Mathematical formulation
1.17.8. Tips on Practical Use
1.17.9. More control with warm_start

### Regression

> Predicting a continuous-valued attribute associated with an object.

> Applications: Drug response, Stock prices.

> Algorithms: SVR, nearest neighbors, random forest, and more...

> Decision Tree Regression with AdaBoost

1. Supervised learning
1.1. Linear Models
1.1.1. Ordinary Least Squares
1.1.2. Ridge regression and classification
1.1.3. Lasso
1.1.4. Multi-task Lasso
1.1.5. Elastic-Net
1.1.6. Multi-task Elastic-Net
1.1.7. Least Angle Regression
1.1.8. LARS Lasso
1.1.9. Orthogonal Matching Pursuit (OMP)
1.1.10. Bayesian Regression
1.1.11. Logistic regression
1.1.12. Generalized Linear Models
1.1.13. Stochastic Gradient Descent - SGD
1.1.14. Perceptron
1.1.15. Passive Aggressive Algorithms
1.1.16. Robustness regression: outliers and modeling errors
1.1.17. Quantile Regression
1.1.18. Polynomial regression: extending linear models with basis functions
1.2. Linear and Quadratic Discriminant Analysis
1.2.1. Dimensionality reduction using Linear Discriminant Analysis
1.2.2. Mathematical formulation of the LDA and QDA classifiers
1.2.3. Mathematical formulation of LDA dimensionality reduction
1.2.4. Shrinkage and Covariance Estimator
1.2.5. Estimation algorithms
1.3. Kernel ridge regression
1.4. Support Vector Machines
1.4.1. Classification
1.4.2. Regression
1.4.3. Density estimation, novelty detection
1.4.4. Complexity
1.4.5. Tips on Practical Use
1.4.6. Kernel functions
1.4.7. Mathematical formulation
1.4.8. Implementation details
1.5. Stochastic Gradient Descent
1.5.1. Classification
1.5.2. Regression
1.5.3. Online One-Class SVM
1.5.4. Stochastic Gradient Descent for sparse data
1.5.5. Complexity
1.5.6. Stopping criterion
1.5.7. Tips on Practical Use
1.5.8. Mathematical formulation
1.5.9. Implementation details
1.6. Nearest Neighbors
1.6.1. Unsupervised Nearest Neighbors
1.6.2. Nearest Neighbors Classification
1.6.3. Nearest Neighbors Regression
1.6.4. Nearest Neighbor Algorithms
1.6.5. Nearest Centroid Classifier
1.6.6. Nearest Neighbors Transformer
1.6.7. Neighborhood Components Analysis
1.7. Gaussian Processes
1.7.1. Gaussian Process Regression (GPR)
1.7.2. GPR examples
1.7.3. Gaussian Process Classification (GPC)
1.7.4. GPC examples
1.7.5. Kernels for Gaussian Processes
1.8. Cross decomposition
1.8.1. PLSCanonical
1.8.2. PLSSVD
1.8.3. PLSRegression
1.8.4. Canonical Correlation Analysis
1.9. Naive Bayes
1.9.1. Gaussian Naive Bayes
1.9.2. Multinomial Naive Bayes
1.9.3. Complement Naive Bayes
1.9.4. Bernoulli Naive Bayes
1.9.5. Categorical Naive Bayes
1.9.6. Out-of-core naive Bayes model fitting
1.10. Decision Trees
1.10.1. Classification
1.10.2. Regression
1.10.3. Multi-output problems
1.10.4. Complexity
1.10.5. Tips on practical use
1.10.6. Tree algorithms: ID3, C4.5, C5.0 and CART
1.10.7. Mathematical formulation
1.10.8. Minimal Cost-Complexity Pruning
1.11. Ensemble methods
1.11.1. Bagging meta-estimator
1.11.2. Forests of randomized trees
1.11.3. AdaBoost
1.11.4. Gradient Tree Boosting
1.11.5. Histogram-Based Gradient Boosting
1.11.6. Voting Classifier
1.11.7. Voting Regressor
1.11.8. Stacked generalization
1.12. Multiclass and multioutput algorithms
1.12.1. Multiclass classification
1.12.2. Multilabel classification
1.12.3. Multiclass-multioutput classification
1.12.4. Multioutput regression
1.13. Feature selection
1.13.1. Removing features with low variance
1.13.2. Univariate feature selection
1.13.3. Recursive feature elimination
1.13.4. Feature selection using SelectFromModel
1.13.5. Sequential Feature Selection
1.13.6. Feature selection as part of a pipeline
1.14. Semi-supervised learning
1.14.1. Self Training
1.14.2. Label Propagation
1.15. Isotonic regression
1.16. Probability calibration
1.16.1. Calibration curves
1.16.2. Calibrating a classifier
1.16.3. Usage
1.17. Neural network models (supervised)
1.17.1. Multi-layer Perceptron
1.17.2. Classification
1.17.3. Regression
1.17.4. Regularization
1.17.5. Algorithms
1.17.6. Complexity
1.17.7. Mathematical formulation
1.17.8. Tips on Practical Use
1.17.9. More control with warm_start

### Clustering

> Automatic grouping of similar objects into sets.

> Applications: Customer segmentation, Grouping experiment outcomes

> Algorithms: k-Means, spectral clustering, mean-shift, and more...

> A demo of K-Means clustering on the handwritten digits data

2.3. Clustering¶
Clustering of unlabeled data can be performed with the module sklearn.cluster.

Each clustering algorithm comes in two variants: a class, that implements the fit method to learn the clusters on train data, and a function, that, given train data, returns an array of integer labels corresponding to the different clusters. For the class, the labels over the training data can be found in the labels_ attribute.

Input data

One important thing to note is that the algorithms implemented in this module can take different kinds of matrix as input. All the methods accept standard data matrices of shape (n_samples, n_features). These can be obtained from the classes in the sklearn.feature_extraction module. For AffinityPropagation, SpectralClustering and DBSCAN one can also input similarity matrices of shape (n_samples, n_samples). These can be obtained from the functions in the sklearn.metrics.pairwise module.

2.3.1. Overview of clustering methods
../_images/sphx_glr_plot_cluster_comparison_001.png
A comparison of the clustering algorithms in scikit-learn

Method name

Parameters

Scalability

Usecase

Geometry (metric used)

K-Means

number of clusters

Very large n_samples, medium n_clusters with
MiniBatch code

General-purpose, even cluster size, flat geometry,
not too many clusters, inductive

Distances between points

Affinity propagation

damping, sample preference

Not scalable with n_samples

Many clusters, uneven cluster size, non-flat geometry, inductive

Graph distance (e.g. nearest-neighbor graph)

Mean-shift

bandwidth

Not scalable with n_samples

Many clusters, uneven cluster size, non-flat geometry, inductive

Distances between points

Spectral clustering

number of clusters

Medium n_samples, small n_clusters

Few clusters, even cluster size, non-flat geometry, transductive

Graph distance (e.g. nearest-neighbor graph)

Ward hierarchical clustering

number of clusters or distance threshold

Large n_samples and n_clusters

Many clusters, possibly connectivity constraints, transductive

Distances between points

Agglomerative clustering

number of clusters or distance threshold, linkage type, distance

Large n_samples and n_clusters

Many clusters, possibly connectivity constraints, non Euclidean
distances, transductive

Any pairwise distance

DBSCAN

neighborhood size

Very large n_samples, medium n_clusters

Non-flat geometry, uneven cluster sizes, outlier removal,
transductive

Distances between nearest points

OPTICS

minimum cluster membership

Very large n_samples, large n_clusters

Non-flat geometry, uneven cluster sizes, variable cluster density,
outlier removal, transductive

Distances between points

Gaussian mixtures

many

Not scalable

Flat geometry, good for density estimation, inductive

Mahalanobis distances to  centers

BIRCH

branching factor, threshold, optional global clusterer.

Large n_clusters and n_samples

Large dataset, outlier removal, data reduction, inductive

Euclidean distance between points

Bisecting K-Means

number of clusters

Very large n_samples, medium n_clusters

General-purpose, even cluster size, flat geometry,
no empty clusters, inductive, hierarchical

Distances between points

Non-flat geometry clustering is useful when the clusters have a specific shape, i.e. a non-flat manifold, and the standard euclidean distance is not the right metric. This case arises in the two top rows of the figure above.

Gaussian mixture models, useful for clustering, are described in another chapter of the documentation dedicated to mixture models. KMeans can be seen as a special case of Gaussian mixture model with equal covariance per component.

Transductive clustering methods (in contrast to inductive clustering methods) are not designed to be applied to new, unseen data.

2.3.2. K-means
The KMeans algorithm clusters data by trying to separate samples in n groups of equal variance, minimizing a criterion known as the inertia or within-cluster sum-of-squares (see below). This algorithm requires the number of clusters to be specified. It scales well to large numbers of samples and has been used across a large range of application areas in many different fields.

The k-means algorithm divides a set of 
 samples 
 into 
 disjoint clusters 
, each described by the mean 
 of the samples in the cluster. The means are commonly called the cluster “centroids”; note that they are not, in general, points from 
, although they live in the same space.

The K-means algorithm aims to choose centroids that minimise the inertia, or within-cluster sum-of-squares criterion:

 
 
Inertia can be recognized as a measure of how internally coherent clusters are. It suffers from various drawbacks:

Inertia makes the assumption that clusters are convex and isotropic, which is not always the case. It responds poorly to elongated clusters, or manifolds with irregular shapes.

Inertia is not a normalized metric: we just know that lower values are better and zero is optimal. But in very high-dimensional spaces, Euclidean distances tend to become inflated (this is an instance of the so-called “curse of dimensionality”). Running a dimensionality reduction algorithm such as Principal component analysis (PCA) prior to k-means clustering can alleviate this problem and speed up the computations.

../_images/sphx_glr_plot_kmeans_assumptions_002.png
K-means is often referred to as Lloyd’s algorithm. In basic terms, the algorithm has three steps. The first step chooses the initial centroids, with the most basic method being to choose 
 samples from the dataset 
. After initialization, K-means consists of looping between the two other steps. The first step assigns each sample to its nearest centroid. The second step creates new centroids by taking the mean value of all of the samples assigned to each previous centroid. The difference between the old and the new centroids are computed and the algorithm repeats these last two steps until this value is less than a threshold. In other words, it repeats until the centroids do not move significantly.

../_images/sphx_glr_plot_kmeans_digits_001.png
K-means is equivalent to the expectation-maximization algorithm with a small, all-equal, diagonal covariance matrix.

The algorithm can also be understood through the concept of Voronoi diagrams. First the Voronoi diagram of the points is calculated using the current centroids. Each segment in the Voronoi diagram becomes a separate cluster. Secondly, the centroids are updated to the mean of each segment. The algorithm then repeats this until a stopping criterion is fulfilled. Usually, the algorithm stops when the relative decrease in the objective function between iterations is less than the given tolerance value. This is not the case in this implementation: iteration stops when centroids move less than the tolerance.

Given enough time, K-means will always converge, however this may be to a local minimum. This is highly dependent on the initialization of the centroids. As a result, the computation is often done several times, with different initializations of the centroids. One method to help address this issue is the k-means++ initialization scheme, which has been implemented in scikit-learn (use the init='k-means++' parameter). This initializes the centroids to be (generally) distant from each other, leading to probably better results than random initialization, as shown in the reference.

K-means++ can also be called independently to select seeds for other clustering algorithms, see sklearn.cluster.kmeans_plusplus for details and example usage.

The algorithm supports sample weights, which can be given by a parameter sample_weight. This allows to assign more weight to some samples when computing cluster centers and values of inertia. For example, assigning a weight of 2 to a sample is equivalent to adding a duplicate of that sample to the dataset 
.

K-means can be used for vector quantization. This is achieved using the transform method of a trained model of KMeans.

2.3.2.1. Low-level parallelism
KMeans benefits from OpenMP based parallelism through Cython. Small chunks of data (256 samples) are processed in parallel, which in addition yields a low memory footprint. For more details on how to control the number of threads, please refer to our Parallelism notes.

Examples:

Demonstration of k-means assumptions: Demonstrating when k-means performs intuitively and when it does not

A demo of K-Means clustering on the handwritten digits data: Clustering handwritten digits

References:

“k-means++: The advantages of careful seeding” Arthur, David, and Sergei Vassilvitskii, Proceedings of the eighteenth annual ACM-SIAM symposium on Discrete algorithms, Society for Industrial and Applied Mathematics (2007)

2.3.2.2. Mini Batch K-Means
The MiniBatchKMeans is a variant of the KMeans algorithm which uses mini-batches to reduce the computation time, while still attempting to optimise the same objective function. Mini-batches are subsets of the input data, randomly sampled in each training iteration. These mini-batches drastically reduce the amount of computation required to converge to a local solution. In contrast to other algorithms that reduce the convergence time of k-means, mini-batch k-means produces results that are generally only slightly worse than the standard algorithm.

The algorithm iterates between two major steps, similar to vanilla k-means. In the first step, 
 samples are drawn randomly from the dataset, to form a mini-batch. These are then assigned to the nearest centroid. In the second step, the centroids are updated. In contrast to k-means, this is done on a per-sample basis. For each sample in the mini-batch, the assigned centroid is updated by taking the streaming average of the sample and all previous samples assigned to that centroid. This has the effect of decreasing the rate of change for a centroid over time. These steps are performed until convergence or a predetermined number of iterations is reached.

MiniBatchKMeans converges faster than KMeans, but the quality of the results is reduced. In practice this difference in quality can be quite small, as shown in the example and cited reference.

../_images/sphx_glr_plot_mini_batch_kmeans_001.png
Examples:

Comparison of the K-Means and MiniBatchKMeans clustering algorithms: Comparison of KMeans and MiniBatchKMeans

Clustering text documents using k-means: Document clustering using sparse MiniBatchKMeans

Online learning of a dictionary of parts of faces

References:

“Web Scale K-Means clustering” D. Sculley, Proceedings of the 19th international conference on World wide web (2010)

2.3.3. Affinity Propagation
AffinityPropagation creates clusters by sending messages between pairs of samples until convergence. A dataset is then described using a small number of exemplars, which are identified as those most representative of other samples. The messages sent between pairs represent the suitability for one sample to be the exemplar of the other, which is updated in response to the values from other pairs. This updating happens iteratively until convergence, at which point the final exemplars are chosen, and hence the final clustering is given.

../_images/sphx_glr_plot_affinity_propagation_001.png
Affinity Propagation can be interesting as it chooses the number of clusters based on the data provided. For this purpose, the two important parameters are the preference, which controls how many exemplars are used, and the damping factor which damps the responsibility and availability messages to avoid numerical oscillations when updating these messages.

The main drawback of Affinity Propagation is its complexity. The algorithm has a time complexity of the order 
, where 
 is the number of samples and 
 is the number of iterations until convergence. Further, the memory complexity is of the order 
 if a dense similarity matrix is used, but reducible if a sparse similarity matrix is used. This makes Affinity Propagation most appropriate for small to medium sized datasets.

Examples:

Demo of affinity propagation clustering algorithm: Affinity Propagation on a synthetic 2D datasets with 3 classes.

Visualizing the stock market structure Affinity Propagation on Financial time series to find groups of companies

Algorithm description: The messages sent between points belong to one of two categories. The first is the responsibility 
, which is the accumulated evidence that sample 
 should be the exemplar for sample 
. The second is the availability 
 which is the accumulated evidence that sample 
 should choose sample 
 to be its exemplar, and considers the values for all other samples that 
 should be an exemplar. In this way, exemplars are chosen by samples if they are (1) similar enough to many samples and (2) chosen by many samples to be representative of themselves.

More formally, the responsibility of a sample 
 to be the exemplar of sample 
 is given by:

Where 
 is the similarity between samples 
 and 
. The availability of sample 
 to be the exemplar of sample 
 is given by:

 
To begin with, all values for 
 and 
 are set to zero, and the calculation of each iterates until convergence. As discussed above, in order to avoid numerical oscillations when updating the messages, the damping factor 
 is introduced to iteration process:

where 
 indicates the iteration times.

2.3.4. Mean Shift
MeanShift clustering aims to discover blobs in a smooth density of samples. It is a centroid based algorithm, which works by updating candidates for centroids to be the mean of the points within a given region. These candidates are then filtered in a post-processing stage to eliminate near-duplicates to form the final set of centroids.

The position of centroid candidates is iteratively adjusted using a technique called hill climbing, which finds local maxima of the estimated probability density. Given a candidate centroid 
 for iteration 
, the candidate is updated according to the following equation:

Where 
 is the mean shift vector that is computed for each centroid that points towards a region of the maximum increase in the density of points. To compute 
 we define 
 as the neighborhood of samples within a given distance around 
. Then 
 is computed using the following equation, effectively updating a centroid to be the mean of the samples within its neighborhood:

 
 
In general, the equation for 
 depends on a kernel used for density estimation. The generic formula is:

 
In our implementation, 
 is equal to 1 if 
 is small enough and is equal to 0 otherwise. Effectively 
 indicates whether 
 is in the neighborhood of 
.

The algorithm automatically sets the number of clusters, instead of relying on a parameter bandwidth, which dictates the size of the region to search through. This parameter can be set manually, but can be estimated using the provided estimate_bandwidth function, which is called if the bandwidth is not set.

The algorithm is not highly scalable, as it requires multiple nearest neighbor searches during the execution of the algorithm. The algorithm is guaranteed to converge, however the algorithm will stop iterating when the change in centroids is small.

Labelling a new sample is performed by finding the nearest centroid for a given sample.

../_images/sphx_glr_plot_mean_shift_001.png
Examples:

A demo of the mean-shift clustering algorithm: Mean Shift clustering on a synthetic 2D datasets with 3 classes.

References:

“Mean shift: A robust approach toward feature space analysis” D. Comaniciu and P. Meer, IEEE Transactions on Pattern Analysis and Machine Intelligence (2002)

2.3.5. Spectral clustering
SpectralClustering performs a low-dimension embedding of the affinity matrix between samples, followed by clustering, e.g., by KMeans, of the components of the eigenvectors in the low dimensional space. It is especially computationally efficient if the affinity matrix is sparse and the amg solver is used for the eigenvalue problem (Note, the amg solver requires that the pyamg module is installed.)

The present version of SpectralClustering requires the number of clusters to be specified in advance. It works well for a small number of clusters, but is not advised for many clusters.

For two clusters, SpectralClustering solves a convex relaxation of the normalized cuts problem on the similarity graph: cutting the graph in two so that the weight of the edges cut is small compared to the weights of the edges inside each cluster. This criteria is especially interesting when working on images, where graph vertices are pixels, and weights of the edges of the similarity graph are computed using a function of a gradient of the image.

noisy_img segmented_img

Warning Transforming distance to well-behaved similarities
Note that if the values of your similarity matrix are not well distributed, e.g. with negative values or with a distance matrix rather than a similarity, the spectral problem will be singular and the problem not solvable. In which case it is advised to apply a transformation to the entries of the matrix. For instance, in the case of a signed distance matrix, is common to apply a heat kernel:

similarity = np.exp(-beta * distance / distance.std())
See the examples for such an application.

Examples:

Spectral clustering for image segmentation: Segmenting objects from a noisy background using spectral clustering.

Segmenting the picture of greek coins in regions: Spectral clustering to split the image of coins in regions.

2.3.5.1. Different label assignment strategies
Different label assignment strategies can be used, corresponding to the assign_labels parameter of SpectralClustering. "kmeans" strategy can match finer details, but can be unstable. In particular, unless you control the random_state, it may not be reproducible from run-to-run, as it depends on random initialization. The alternative "discretize" strategy is 100% reproducible, but tends to create parcels of fairly even and geometrical shape. The recently added "cluster_qr" option is a deterministic alternative that tends to create the visually best partitioning on the example application below.

assign_labels="kmeans"

assign_labels="discretize"

assign_labels="cluster_qr"

coin_kmeans

coin_discretize

coin_cluster_qr

References:

“Multiclass spectral clustering” Stella X. Yu, Jianbo Shi, 2003

“Simple, direct, and efficient multi-way spectral clustering” Anil Damle, Victor Minden, Lexing Ying, 2019

2.3.5.2. Spectral Clustering Graphs
Spectral Clustering can also be used to partition graphs via their spectral embeddings. In this case, the affinity matrix is the adjacency matrix of the graph, and SpectralClustering is initialized with affinity='precomputed':

```
>>> from sklearn.cluster import SpectralClustering
sc = SpectralClustering(3, affinity='precomputed', n_init=100,
...                         assign_labels='discretize')
sc.fit_predict(adjacency_matrix)  
```

References:

“A Tutorial on Spectral Clustering” Ulrike von Luxburg, 2007

“Normalized cuts and image segmentation” Jianbo Shi, Jitendra Malik, 2000

“A Random Walks View of Spectral Segmentation” Marina Meila, Jianbo Shi, 2001

“On Spectral Clustering: Analysis and an algorithm” Andrew Y. Ng, Michael I. Jordan, Yair Weiss, 2001

“Preconditioned Spectral Clustering for Stochastic Block Partition Streaming Graph Challenge” David Zhuzhunashvili, Andrew Knyazev

2.3.6. Hierarchical clustering
Hierarchical clustering is a general family of clustering algorithms that build nested clusters by merging or splitting them successively. This hierarchy of clusters is represented as a tree (or dendrogram). The root of the tree is the unique cluster that gathers all the samples, the leaves being the clusters with only one sample. See the Wikipedia page for more details.

The AgglomerativeClustering object performs a hierarchical clustering using a bottom up approach: each observation starts in its own cluster, and clusters are successively merged together. The linkage criteria determines the metric used for the merge strategy:

Ward minimizes the sum of squared differences within all clusters. It is a variance-minimizing approach and in this sense is similar to the k-means objective function but tackled with an agglomerative hierarchical approach.

Maximum or complete linkage minimizes the maximum distance between observations of pairs of clusters.

Average linkage minimizes the average of the distances between all observations of pairs of clusters.

Single linkage minimizes the distance between the closest observations of pairs of clusters.

AgglomerativeClustering can also scale to large number of samples when it is used jointly with a connectivity matrix, but is computationally expensive when no connectivity constraints are added between samples: it considers at each step all the possible merges.

FeatureAgglomeration

The FeatureAgglomeration uses agglomerative clustering to group together features that look very similar, thus decreasing the number of features. It is a dimensionality reduction tool, see Unsupervised dimensionality reduction.

2.3.6.1. Different linkage type: Ward, complete, average, and single linkage
AgglomerativeClustering supports Ward, single, average, and complete linkage strategies.

../_images/sphx_glr_plot_linkage_comparison_001.png
Agglomerative cluster has a “rich get richer” behavior that leads to uneven cluster sizes. In this regard, single linkage is the worst strategy, and Ward gives the most regular sizes. However, the affinity (or distance used in clustering) cannot be varied with Ward, thus for non Euclidean metrics, average linkage is a good alternative. Single linkage, while not robust to noisy data, can be computed very efficiently and can therefore be useful to provide hierarchical clustering of larger datasets. Single linkage can also perform well on non-globular data.

Examples:

Various Agglomerative Clustering on a 2D embedding of digits: exploration of the different linkage strategies in a real dataset.

2.3.6.2. Visualization of cluster hierarchy
It’s possible to visualize the tree representing the hierarchical merging of clusters as a dendrogram. Visual inspection can often be useful for understanding the structure of the data, though more so in the case of small sample sizes.

../_images/sphx_glr_plot_agglomerative_dendrogram_001.png
2.3.6.3. Adding connectivity constraints
An interesting aspect of AgglomerativeClustering is that connectivity constraints can be added to this algorithm (only adjacent clusters can be merged together), through a connectivity matrix that defines for each sample the neighboring samples following a given structure of the data. For instance, in the swiss-roll example below, the connectivity constraints forbid the merging of points that are not adjacent on the swiss roll, and thus avoid forming clusters that extend across overlapping folds of the roll.

unstructured structured

These constraint are useful to impose a certain local structure, but they also make the algorithm faster, especially when the number of the samples is high.

The connectivity constraints are imposed via an connectivity matrix: a scipy sparse matrix that has elements only at the intersection of a row and a column with indices of the dataset that should be connected. This matrix can be constructed from a-priori information: for instance, you may wish to cluster web pages by only merging pages with a link pointing from one to another. It can also be learned from the data, for instance using sklearn.neighbors.kneighbors_graph to restrict merging to nearest neighbors as in this example, or using sklearn.feature_extraction.image.grid_to_graph to enable only merging of neighboring pixels on an image, as in the coin example.

Examples:

A demo of structured Ward hierarchical clustering on an image of coins: Ward clustering to split the image of coins in regions.

Hierarchical clustering: structured vs unstructured ward: Example of Ward algorithm on a swiss-roll, comparison of structured approaches versus unstructured approaches.

Feature agglomeration vs. univariate selection: Example of dimensionality reduction with feature agglomeration based on Ward hierarchical clustering.

Agglomerative clustering with and without structure

Warning Connectivity constraints with single, average and complete linkage
Connectivity constraints and single, complete or average linkage can enhance the ‘rich getting richer’ aspect of agglomerative clustering, particularly so if they are built with sklearn.neighbors.kneighbors_graph. In the limit of a small number of clusters, they tend to give a few macroscopically occupied clusters and almost empty ones. (see the discussion in Agglomerative clustering with and without structure). Single linkage is the most brittle linkage option with regard to this issue.

../_images/sphx_glr_plot_agglomerative_clustering_001.png ../_images/sphx_glr_plot_agglomerative_clustering_002.png ../_images/sphx_glr_plot_agglomerative_clustering_003.png ../_images/sphx_glr_plot_agglomerative_clustering_004.png
2.3.6.4. Varying the metric
Single, average and complete linkage can be used with a variety of distances (or affinities), in particular Euclidean distance (l2), Manhattan distance (or Cityblock, or l1), cosine distance, or any precomputed affinity matrix.

l1 distance is often good for sparse features, or sparse noise: i.e. many of the features are zero, as in text mining using occurrences of rare words.

cosine distance is interesting because it is invariant to global scalings of the signal.

The guidelines for choosing a metric is to use one that maximizes the distance between samples in different classes, and minimizes that within each class.

../_images/sphx_glr_plot_agglomerative_clustering_metrics_005.png ../_images/sphx_glr_plot_agglomerative_clustering_metrics_006.png ../_images/sphx_glr_plot_agglomerative_clustering_metrics_007.png
Examples:

Agglomerative clustering with different metrics

2.3.6.5. Bisecting K-Means
The BisectingKMeans is an iterative variant of KMeans, using divisive hierarchical clustering. Instead of creating all centroids at once, centroids are picked progressively based on a previous clustering: a cluster is split into two new clusters repeatedly until the target number of clusters is reached.

BisectingKMeans is more efficient than KMeans when the number of clusters is large since it only works on a subset of the data at each bisection while KMeans always works on the entire dataset.

Although BisectingKMeans can’t benefit from the advantages of the "k-means++" initialization by design, it will still produce comparable results than KMeans(init="k-means++") in terms of inertia at cheaper computational costs, and will likely produce better results than KMeans with a random initialization.

This variant is more efficient to agglomerative clustering if the number of clusters is small compared to the number of data points.

This variant also does not produce empty clusters.

There exist two strategies for selecting the cluster to split:
bisecting_strategy="largest_cluster" selects the cluster having the most points

bisecting_strategy="biggest_inertia" selects the cluster with biggest inertia (cluster with biggest Sum of Squared Errors within)

Picking by largest amount of data points in most cases produces result as accurate as picking by inertia and is faster (especially for larger amount of data points, where calculating error may be costly).

Picking by largest amount of data points will also likely produce clusters of similar sizes while KMeans is known to produce clusters of different sizes.

Difference between Bisecting K-Means and regular K-Means can be seen on example Bisecting K-Means and Regular K-Means Performance Comparison. While the regular K-Means algorithm tends to create non-related clusters, clusters from Bisecting K-Means are well ordered and create quite a visible hierarchy.

References:

“A Comparison of Document Clustering Techniques” Michael Steinbach, George Karypis and Vipin Kumar, Department of Computer Science and Egineering, University of Minnesota (June 2000)

“Performance Analysis of K-Means and Bisecting K-Means Algorithms in Weblog Data” K.Abirami and Dr.P.Mayilvahanan, International Journal of Emerging Technologies in Engineering Research (IJETER) Volume 4, Issue 8, (August 2016)

“Bisecting K-means Algorithm Based on K-valued Self-determining and Clustering Center Optimization” Jian Di, Xinyue Gou School of Control and Computer Engineering,North China Electric Power University, Baoding, Hebei, China (August 2017)

2.3.7. DBSCAN
The DBSCAN algorithm views clusters as areas of high density separated by areas of low density. Due to this rather generic view, clusters found by DBSCAN can be any shape, as opposed to k-means which assumes that clusters are convex shaped. The central component to the DBSCAN is the concept of core samples, which are samples that are in areas of high density. A cluster is therefore a set of core samples, each close to each other (measured by some distance measure) and a set of non-core samples that are close to a core sample (but are not themselves core samples). There are two parameters to the algorithm, min_samples and eps, which define formally what we mean when we say dense. Higher min_samples or lower eps indicate higher density necessary to form a cluster.

More formally, we define a core sample as being a sample in the dataset such that there exist min_samples other samples within a distance of eps, which are defined as neighbors of the core sample. This tells us that the core sample is in a dense area of the vector space. A cluster is a set of core samples that can be built by recursively taking a core sample, finding all of its neighbors that are core samples, finding all of their neighbors that are core samples, and so on. A cluster also has a set of non-core samples, which are samples that are neighbors of a core sample in the cluster but are not themselves core samples. Intuitively, these samples are on the fringes of a cluster.

Any core sample is part of a cluster, by definition. Any sample that is not a core sample, and is at least eps in distance from any core sample, is considered an outlier by the algorithm.

While the parameter min_samples primarily controls how tolerant the algorithm is towards noise (on noisy and large data sets it may be desirable to increase this parameter), the parameter eps is crucial to choose appropriately for the data set and distance function and usually cannot be left at the default value. It controls the local neighborhood of the points. When chosen too small, most data will not be clustered at all (and labeled as -1 for “noise”). When chosen too large, it causes close clusters to be merged into one cluster, and eventually the entire data set to be returned as a single cluster. Some heuristics for choosing this parameter have been discussed in the literature, for example based on a knee in the nearest neighbor distances plot (as discussed in the references below).

In the figure below, the color indicates cluster membership, with large circles indicating core samples found by the algorithm. Smaller circles are non-core samples that are still part of a cluster. Moreover, the outliers are indicated by black points below.

dbscan_results

Examples:

Demo of DBSCAN clustering algorithm

Implementation

The DBSCAN algorithm is deterministic, always generating the same clusters when given the same data in the same order. However, the results can differ when data is provided in a different order. First, even though the core samples will always be assigned to the same clusters, the labels of those clusters will depend on the order in which those samples are encountered in the data. Second and more importantly, the clusters to which non-core samples are assigned can differ depending on the data order. This would happen when a non-core sample has a distance lower than eps to two core samples in different clusters. By the triangular inequality, those two core samples must be more distant than eps from each other, or they would be in the same cluster. The non-core sample is assigned to whichever cluster is generated first in a pass through the data, and so the results will depend on the data ordering.

The current implementation uses ball trees and kd-trees to determine the neighborhood of points, which avoids calculating the full distance matrix (as was done in scikit-learn versions before 0.14). The possibility to use custom metrics is retained; for details, see NearestNeighbors.

Memory consumption for large sample sizes

This implementation is by default not memory efficient because it constructs a full pairwise similarity matrix in the case where kd-trees or ball-trees cannot be used (e.g., with sparse matrices). This matrix will consume 
 floats. A couple of mechanisms for getting around this are:

Use OPTICS clustering in conjunction with the extract_dbscan method. OPTICS clustering also calculates the full pairwise matrix, but only keeps one row in memory at a time (memory complexity n).

A sparse radius neighborhood graph (where missing entries are presumed to be out of eps) can be precomputed in a memory-efficient way and dbscan can be run over this with metric='precomputed'. See sklearn.neighbors.NearestNeighbors.radius_neighbors_graph.

The dataset can be compressed, either by removing exact duplicates if these occur in your data, or by using BIRCH. Then you only have a relatively small number of representatives for a large number of points. You can then provide a sample_weight when fitting DBSCAN.

References:

“A Density-Based Algorithm for Discovering Clusters in Large Spatial Databases with Noise” Ester, M., H. P. Kriegel, J. Sander, and X. Xu, In Proceedings of the 2nd International Conference on Knowledge Discovery and Data Mining, Portland, OR, AAAI Press, pp. 226–231. 1996

“DBSCAN revisited, revisited: why and how you should (still) use DBSCAN.” Schubert, E., Sander, J., Ester, M., Kriegel, H. P., & Xu, X. (2017). In ACM Transactions on Database Systems (TODS), 42(3), 19.

2.3.8. OPTICS
The OPTICS algorithm shares many similarities with the DBSCAN algorithm, and can be considered a generalization of DBSCAN that relaxes the eps requirement from a single value to a value range. The key difference between DBSCAN and OPTICS is that the OPTICS algorithm builds a reachability graph, which assigns each sample both a reachability_ distance, and a spot within the cluster ordering_ attribute; these two attributes are assigned when the model is fitted, and are used to determine cluster membership. If OPTICS is run with the default value of inf set for max_eps, then DBSCAN style cluster extraction can be performed repeatedly in linear time for any given eps value using the cluster_optics_dbscan method. Setting max_eps to a lower value will result in shorter run times, and can be thought of as the maximum neighborhood radius from each point to find other potential reachable points.

optics_results

The reachability distances generated by OPTICS allow for variable density extraction of clusters within a single data set. As shown in the above plot, combining reachability distances and data set ordering_ produces a reachability plot, where point density is represented on the Y-axis, and points are ordered such that nearby points are adjacent. ‘Cutting’ the reachability plot at a single value produces DBSCAN like results; all points above the ‘cut’ are classified as noise, and each time that there is a break when reading from left to right signifies a new cluster. The default cluster extraction with OPTICS looks at the steep slopes within the graph to find clusters, and the user can define what counts as a steep slope using the parameter xi. There are also other possibilities for analysis on the graph itself, such as generating hierarchical representations of the data through reachability-plot dendrograms, and the hierarchy of clusters detected by the algorithm can be accessed through the cluster_hierarchy_ parameter. The plot above has been color-coded so that cluster colors in planar space match the linear segment clusters of the reachability plot. Note that the blue and red clusters are adjacent in the reachability plot, and can be hierarchically represented as children of a larger parent cluster.

Examples:

Demo of OPTICS clustering algorithm

Comparison with DBSCAN

The results from OPTICS cluster_optics_dbscan method and DBSCAN are very similar, but not always identical; specifically, labeling of periphery and noise points. This is in part because the first samples of each dense area processed by OPTICS have a large reachability value while being close to other points in their area, and will thus sometimes be marked as noise rather than periphery. This affects adjacent points when they are considered as candidates for being marked as either periphery or noise.

Note that for any single value of eps, DBSCAN will tend to have a shorter run time than OPTICS; however, for repeated runs at varying eps values, a single run of OPTICS may require less cumulative runtime than DBSCAN. It is also important to note that OPTICS’ output is close to DBSCAN’s only if eps and max_eps are close.

Computational Complexity

Spatial indexing trees are used to avoid calculating the full distance matrix, and allow for efficient memory usage on large sets of samples. Different distance metrics can be supplied via the metric keyword.

For large datasets, similar (but not identical) results can be obtained via HDBSCAN. The HDBSCAN implementation is multithreaded, and has better algorithmic runtime complexity than OPTICS, at the cost of worse memory scaling. For extremely large datasets that exhaust system memory using HDBSCAN, OPTICS will maintain 
 (as opposed to 
) memory scaling; however, tuning of the max_eps parameter will likely need to be used to give a solution in a reasonable amount of wall time.

References:

“OPTICS: ordering points to identify the clustering structure.” Ankerst, Mihael, Markus M. Breunig, Hans-Peter Kriegel, and Jörg Sander. In ACM Sigmod Record, vol. 28, no. 2, pp. 49-60. ACM, 1999.

2.3.9. BIRCH
The Birch builds a tree called the Clustering Feature Tree (CFT) for the given data. The data is essentially lossy compressed to a set of Clustering Feature nodes (CF Nodes). The CF Nodes have a number of subclusters called Clustering Feature subclusters (CF Subclusters) and these CF Subclusters located in the non-terminal CF Nodes can have CF Nodes as children.

The CF Subclusters hold the necessary information for clustering which prevents the need to hold the entire input data in memory. This information includes:

Number of samples in a subcluster.

Linear Sum - An n-dimensional vector holding the sum of all samples

Squared Sum - Sum of the squared L2 norm of all samples.

Centroids - To avoid recalculation linear sum / n_samples.

Squared norm of the centroids.

The BIRCH algorithm has two parameters, the threshold and the branching factor. The branching factor limits the number of subclusters in a node and the threshold limits the distance between the entering sample and the existing subclusters.

This algorithm can be viewed as an instance or data reduction method, since it reduces the input data to a set of subclusters which are obtained directly from the leaves of the CFT. This reduced data can be further processed by feeding it into a global clusterer. This global clusterer can be set by n_clusters. If n_clusters is set to None, the subclusters from the leaves are directly read off, otherwise a global clustering step labels these subclusters into global clusters (labels) and the samples are mapped to the global label of the nearest subcluster.

Algorithm description:

A new sample is inserted into the root of the CF Tree which is a CF Node. It is then merged with the subcluster of the root, that has the smallest radius after merging, constrained by the threshold and branching factor conditions. If the subcluster has any child node, then this is done repeatedly till it reaches a leaf. After finding the nearest subcluster in the leaf, the properties of this subcluster and the parent subclusters are recursively updated.

If the radius of the subcluster obtained by merging the new sample and the nearest subcluster is greater than the square of the threshold and if the number of subclusters is greater than the branching factor, then a space is temporarily allocated to this new sample. The two farthest subclusters are taken and the subclusters are divided into two groups on the basis of the distance between these subclusters.

If this split node has a parent subcluster and there is room for a new subcluster, then the parent is split into two. If there is no room, then this node is again split into two and the process is continued recursively, till it reaches the root.

BIRCH or MiniBatchKMeans?

BIRCH does not scale very well to high dimensional data. As a rule of thumb if n_features is greater than twenty, it is generally better to use MiniBatchKMeans.

If the number of instances of data needs to be reduced, or if one wants a large number of subclusters either as a preprocessing step or otherwise, BIRCH is more useful than MiniBatchKMeans.

How to use partial_fit?

To avoid the computation of global clustering, for every call of partial_fit the user is advised

To set n_clusters=None initially

Train all data by multiple calls to partial_fit.

Set n_clusters to a required value using brc.set_params(n_clusters=n_clusters).

Call partial_fit finally with no arguments, i.e. brc.partial_fit() which performs the global clustering.

../_images/sphx_glr_plot_birch_vs_minibatchkmeans_001.png
References:

Tian Zhang, Raghu Ramakrishnan, Maron Livny BIRCH: An efficient data clustering method for large databases. https://www.cs.sfu.ca/CourseCentral/459/han/papers/zhang96.pdf

Roberto Perdisci JBirch - Java implementation of BIRCH clustering algorithm https://code.google.com/archive/p/jbirch

2.3.10. Clustering performance evaluation
Evaluating the performance of a clustering algorithm is not as trivial as counting the number of errors or the precision and recall of a supervised classification algorithm. In particular any evaluation metric should not take the absolute values of the cluster labels into account but rather if this clustering define separations of the data similar to some ground truth set of classes or satisfying some assumption such that members belong to the same class are more similar than members of different classes according to some similarity metric.

2.3.10.1. Rand index
Given the knowledge of the ground truth class assignments labels_true and our clustering algorithm assignments of the same samples labels_pred, the (adjusted or unadjusted) Rand index is a function that measures the similarity of the two assignments, ignoring permutations:

>>>
>>> from sklearn import metrics
>>> labels_true = [0, 0, 0, 1, 1, 1]
>>> labels_pred = [0, 0, 1, 1, 2, 2]
>>> metrics.rand_score(labels_true, labels_pred)
0.66...
The Rand index does not ensure to obtain a value close to 0.0 for a random labelling. The adjusted Rand index corrects for chance and will give such a baseline.

>>>
>>> metrics.adjusted_rand_score(labels_true, labels_pred)
0.24...
As with all clustering metrics, one can permute 0 and 1 in the predicted labels, rename 2 to 3, and get the same score:

>>>
>>> labels_pred = [1, 1, 0, 0, 3, 3]
>>> metrics.rand_score(labels_true, labels_pred)
0.66...
>>> metrics.adjusted_rand_score(labels_true, labels_pred)
0.24...
Furthermore, both rand_score adjusted_rand_score are symmetric: swapping the argument does not change the scores. They can thus be used as consensus measures:

>>>
>>> metrics.rand_score(labels_pred, labels_true)
0.66...
>>> metrics.adjusted_rand_score(labels_pred, labels_true)
0.24...
Perfect labeling is scored 1.0:

>>>
>>> labels_pred = labels_true[:]
>>> metrics.rand_score(labels_true, labels_pred)
1.0
>>> metrics.adjusted_rand_score(labels_true, labels_pred)
1.0
Poorly agreeing labels (e.g. independent labelings) have lower scores, and for the adjusted Rand index the score will be negative or close to zero. However, for the unadjusted Rand index the score, while lower, will not necessarily be close to zero.:

>>>
>>> labels_true = [0, 0, 0, 0, 0, 0, 1, 1]
>>> labels_pred = [0, 1, 2, 3, 4, 5, 5, 6]
>>> metrics.rand_score(labels_true, labels_pred)
0.39...
>>> metrics.adjusted_rand_score(labels_true, labels_pred)
-0.07...
Advantages
Interpretability: The unadjusted Rand index is proportional to the number of sample pairs whose labels are the same in both labels_pred and labels_true, or are different in both.

Random (uniform) label assignments have an adjusted Rand index score close to 0.0 for any value of n_clusters and n_samples (which is not the case for the unadjusted Rand index or the V-measure for instance).

Bounded range: Lower values indicate different labelings, similar clusterings have a high (adjusted or unadjusted) Rand index, 1.0 is the perfect match score. The score range is [0, 1] for the unadjusted Rand index and [-1, 1] for the adjusted Rand index.

No assumption is made on the cluster structure: The (adjusted or unadjusted) Rand index can be used to compare all kinds of clustering algorithms, and can be used to compare clustering algorithms such as k-means which assumes isotropic blob shapes with results of spectral clustering algorithms which can find cluster with “folded” shapes.

Drawbacks
Contrary to inertia, the (adjusted or unadjusted) Rand index requires knowledge of the ground truth classes which is almost never available in practice or requires manual assignment by human annotators (as in the supervised learning setting).

However (adjusted or unadjusted) Rand index can also be useful in a purely unsupervised setting as a building block for a Consensus Index that can be used for clustering model selection (TODO).

The unadjusted Rand index is often close to 1.0 even if the clusterings themselves differ significantly. This can be understood when interpreting the Rand index as the accuracy of element pair labeling resulting from the clusterings: In practice there often is a majority of element pairs that are assigned the different pair label under both the predicted and the ground truth clustering resulting in a high proportion of pair labels that agree, which leads subsequently to a high score.

Examples:

Adjustment for chance in clustering performance evaluation: Analysis of the impact of the dataset size on the value of clustering measures for random assignments.

Mathematical formulation
If C is a ground truth class assignment and K the clustering, let us define 
 and 
 as:

, the number of pairs of elements that are in the same set in C and in the same set in K

, the number of pairs of elements that are in different sets in C and in different sets in K

The unadjusted Rand index is then given by:

 
where 
 is the total number of possible pairs in the dataset. It does not matter if the calculation is performed on ordered pairs or unordered pairs as long as the calculation is performed consistently.

However, the Rand index does not guarantee that random label assignments will get a value close to zero (esp. if the number of clusters is in the same order of magnitude as the number of samples).

To counter this effect we can discount the expected RI 
 of random labelings by defining the adjusted Rand index as follows:

 
References

Comparing Partitions L. Hubert and P. Arabie, Journal of Classification 1985

Properties of the Hubert-Arabie adjusted Rand index D. Steinley, Psychological Methods 2004

Wikipedia entry for the Rand index

Wikipedia entry for the adjusted Rand index

2.3.10.2. Mutual Information based scores
Given the knowledge of the ground truth class assignments labels_true and our clustering algorithm assignments of the same samples labels_pred, the Mutual Information is a function that measures the agreement of the two assignments, ignoring permutations. Two different normalized versions of this measure are available, Normalized Mutual Information (NMI) and Adjusted Mutual Information (AMI). NMI is often used in the literature, while AMI was proposed more recently and is normalized against chance:

>>>
>>> from sklearn import metrics
>>> labels_true = [0, 0, 0, 1, 1, 1]
>>> labels_pred = [0, 0, 1, 1, 2, 2]

>>> metrics.adjusted_mutual_info_score(labels_true, labels_pred)  
0.22504...
One can permute 0 and 1 in the predicted labels, rename 2 to 3 and get the same score:

>>>
>>> labels_pred = [1, 1, 0, 0, 3, 3]
>>> metrics.adjusted_mutual_info_score(labels_true, labels_pred)  
0.22504...
All, mutual_info_score, adjusted_mutual_info_score and normalized_mutual_info_score are symmetric: swapping the argument does not change the score. Thus they can be used as a consensus measure:

>>>
>>> metrics.adjusted_mutual_info_score(labels_pred, labels_true)  
0.22504...
Perfect labeling is scored 1.0:

>>>
>>> labels_pred = labels_true[:]
>>> metrics.adjusted_mutual_info_score(labels_true, labels_pred)  
1.0

>>> metrics.normalized_mutual_info_score(labels_true, labels_pred)  
1.0
This is not true for mutual_info_score, which is therefore harder to judge:

>>>
>>> metrics.mutual_info_score(labels_true, labels_pred)  
0.69...
Bad (e.g. independent labelings) have non-positive scores:

>>>
>>> labels_true = [0, 1, 2, 0, 3, 4, 5, 1]
>>> labels_pred = [1, 1, 0, 0, 2, 2, 2, 2]
>>> metrics.adjusted_mutual_info_score(labels_true, labels_pred)  
-0.10526...
Advantages
Random (uniform) label assignments have a AMI score close to 0.0 for any value of n_clusters and n_samples (which is not the case for raw Mutual Information or the V-measure for instance).

Upper bound of 1: Values close to zero indicate two label assignments that are largely independent, while values close to one indicate significant agreement. Further, an AMI of exactly 1 indicates that the two label assignments are equal (with or without permutation).

Drawbacks
Contrary to inertia, MI-based measures require the knowledge of the ground truth classes while almost never available in practice or requires manual assignment by human annotators (as in the supervised learning setting).

However MI-based measures can also be useful in purely unsupervised setting as a building block for a Consensus Index that can be used for clustering model selection.

NMI and MI are not adjusted against chance.

Examples:

Adjustment for chance in clustering performance evaluation: Analysis of the impact of the dataset size on the value of clustering measures for random assignments. This example also includes the Adjusted Rand Index.

Mathematical formulation
Assume two label assignments (of the same N objects), 
 and 
. Their entropy is the amount of uncertainty for a partition set, defined by:

 
where 
 is the probability that an object picked at random from 
 falls into class 
. Likewise for 
:

 
With 
. The mutual information (MI) between 
 and 
 is calculated by:

 
 
 
where 
 is the probability that an object picked at random falls into both classes 
 and 
.

It also can be expressed in set cardinality formulation:

 
 
 
 
The normalized mutual information is defined as

 
This value of the mutual information and also the normalized variant is not adjusted for chance and will tend to increase as the number of different labels (clusters) increases, regardless of the actual amount of “mutual information” between the label assignments.

The expected value for the mutual information can be calculated using the following equation [VEB2009]. In this equation, 
 (the number of elements in 
) and 
 (the number of elements in 
).

 
 
 
 
 
 
Using the expected value, the adjusted mutual information can then be calculated using a similar form to that of the adjusted Rand index:

 
For normalized mutual information and adjusted mutual information, the normalizing value is typically some generalized mean of the entropies of each clustering. Various generalized means exist, and no firm rules exist for preferring one over the others. The decision is largely a field-by-field basis; for instance, in community detection, the arithmetic mean is most common. Each normalizing method provides “qualitatively similar behaviours” [YAT2016]. In our implementation, this is controlled by the average_method parameter.

Vinh et al. (2010) named variants of NMI and AMI by their averaging method [VEB2010]. Their ‘sqrt’ and ‘sum’ averages are the geometric and arithmetic means; we use these more broadly common names.

References

Strehl, Alexander, and Joydeep Ghosh (2002). “Cluster ensembles – a knowledge reuse framework for combining multiple partitions”. Journal of Machine Learning Research 3: 583–617. doi:10.1162/153244303321897735.

Wikipedia entry for the (normalized) Mutual Information

Wikipedia entry for the Adjusted Mutual Information

[VEB2009]
Vinh, Epps, and Bailey, (2009). “Information theoretic measures for clusterings comparison”. Proceedings of the 26th Annual International Conference on Machine Learning - ICML ‘09. doi:10.1145/1553374.1553511. ISBN 9781605585161.

[VEB2010]
Vinh, Epps, and Bailey, (2010). “Information Theoretic Measures for Clusterings Comparison: Variants, Properties, Normalization and Correction for Chance”. JMLR <https://jmlr.csail.mit.edu/papers/volume11/vinh10a/vinh10a.pdf>

[YAT2016]
Yang, Algesheimer, and Tessone, (2016). “A comparative analysis of community detection algorithms on artificial networks”. Scientific Reports 6: 30750. doi:10.1038/srep30750.

2.3.10.3. Homogeneity, completeness and V-measure
Given the knowledge of the ground truth class assignments of the samples, it is possible to define some intuitive metric using conditional entropy analysis.

In particular Rosenberg and Hirschberg (2007) define the following two desirable objectives for any cluster assignment:

homogeneity: each cluster contains only members of a single class.

completeness: all members of a given class are assigned to the same cluster.

We can turn those concept as scores homogeneity_score and completeness_score. Both are bounded below by 0.0 and above by 1.0 (higher is better):

>>>
>>> from sklearn import metrics
>>> labels_true = [0, 0, 0, 1, 1, 1]
>>> labels_pred = [0, 0, 1, 1, 2, 2]

>>> metrics.homogeneity_score(labels_true, labels_pred)
0.66...

>>> metrics.completeness_score(labels_true, labels_pred)
0.42...
Their harmonic mean called V-measure is computed by v_measure_score:

>>>
>>> metrics.v_measure_score(labels_true, labels_pred)
0.51...
This function’s formula is as follows:

 
beta defaults to a value of 1.0, but for using a value less than 1 for beta:

>>>
>>> metrics.v_measure_score(labels_true, labels_pred, beta=0.6)
0.54...
more weight will be attributed to homogeneity, and using a value greater than 1:

>>>
>>> metrics.v_measure_score(labels_true, labels_pred, beta=1.8)
0.48...
more weight will be attributed to completeness.

The V-measure is actually equivalent to the mutual information (NMI) discussed above, with the aggregation function being the arithmetic mean [B2011].

Homogeneity, completeness and V-measure can be computed at once using homogeneity_completeness_v_measure as follows:

>>>
>>> metrics.homogeneity_completeness_v_measure(labels_true, labels_pred)
(0.66..., 0.42..., 0.51...)
The following clustering assignment is slightly better, since it is homogeneous but not complete:

>>>
>>> labels_pred = [0, 0, 0, 1, 2, 2]
>>> metrics.homogeneity_completeness_v_measure(labels_true, labels_pred)
(1.0, 0.68..., 0.81...)
Note v_measure_score is symmetric: it can be used to evaluate the agreement of two independent assignments on the same dataset.
This is not the case for completeness_score and homogeneity_score: both are bound by the relationship:

homogeneity_score(a, b) == completeness_score(b, a)
Advantages
Bounded scores: 0.0 is as bad as it can be, 1.0 is a perfect score.

Intuitive interpretation: clustering with bad V-measure can be qualitatively analyzed in terms of homogeneity and completeness to better feel what ‘kind’ of mistakes is done by the assignment.

No assumption is made on the cluster structure: can be used to compare clustering algorithms such as k-means which assumes isotropic blob shapes with results of spectral clustering algorithms which can find cluster with “folded” shapes.

Drawbacks
The previously introduced metrics are not normalized with regards to random labeling: this means that depending on the number of samples, clusters and ground truth classes, a completely random labeling will not always yield the same values for homogeneity, completeness and hence v-measure. In particular random labeling won’t yield zero scores especially when the number of clusters is large.

This problem can safely be ignored when the number of samples is more than a thousand and the number of clusters is less than 10. For smaller sample sizes or larger number of clusters it is safer to use an adjusted index such as the Adjusted Rand Index (ARI).

../_images/sphx_glr_plot_adjusted_for_chance_measures_001.png
These metrics require the knowledge of the ground truth classes while almost never available in practice or requires manual assignment by human annotators (as in the supervised learning setting).

Examples:

Adjustment for chance in clustering performance evaluation: Analysis of the impact of the dataset size on the value of clustering measures for random assignments.

Mathematical formulation
Homogeneity and completeness scores are formally given by:

 
 
where 
 is the conditional entropy of the classes given the cluster assignments and is given by:

 
 
 
 
and 
 is the entropy of the classes and is given by:

 
 
 
with 
 the total number of samples, 
 and 
 the number of samples respectively belonging to class 
 and cluster 
, and finally 
 the number of samples from class 
 assigned to cluster 
.

The conditional entropy of clusters given class 
 and the entropy of clusters 
 are defined in a symmetric manner.

Rosenberg and Hirschberg further define V-measure as the harmonic mean of homogeneity and completeness:

 
References

V-Measure: A conditional entropy-based external cluster evaluation measure Andrew Rosenberg and Julia Hirschberg, 2007

[B2011]
Identication and Characterization of Events in Social Media, Hila Becker, PhD Thesis.

2.3.10.4. Fowlkes-Mallows scores
The Fowlkes-Mallows index (sklearn.metrics.fowlkes_mallows_score) can be used when the ground truth class assignments of the samples is known. The Fowlkes-Mallows score FMI is defined as the geometric mean of the pairwise precision and recall:

 
Where TP is the number of True Positive (i.e. the number of pair of points that belong to the same clusters in both the true labels and the predicted labels), FP is the number of False Positive (i.e. the number of pair of points that belong to the same clusters in the true labels and not in the predicted labels) and FN is the number of False Negative (i.e the number of pair of points that belongs in the same clusters in the predicted labels and not in the true labels).

The score ranges from 0 to 1. A high value indicates a good similarity between two clusters.

>>>
>>> from sklearn import metrics
>>> labels_true = [0, 0, 0, 1, 1, 1]
>>> labels_pred = [0, 0, 1, 1, 2, 2]
>>>
>>> metrics.fowlkes_mallows_score(labels_true, labels_pred)
0.47140...
One can permute 0 and 1 in the predicted labels, rename 2 to 3 and get the same score:

>>>
>>> labels_pred = [1, 1, 0, 0, 3, 3]

>>> metrics.fowlkes_mallows_score(labels_true, labels_pred)
0.47140...
Perfect labeling is scored 1.0:

>>>
>>> labels_pred = labels_true[:]
>>> metrics.fowlkes_mallows_score(labels_true, labels_pred)
1.0
Bad (e.g. independent labelings) have zero scores:

>>>
>>> labels_true = [0, 1, 2, 0, 3, 4, 5, 1]
>>> labels_pred = [1, 1, 0, 0, 2, 2, 2, 2]
>>> metrics.fowlkes_mallows_score(labels_true, labels_pred)
0.0
Advantages
Random (uniform) label assignments have a FMI score close to 0.0 for any value of n_clusters and n_samples (which is not the case for raw Mutual Information or the V-measure for instance).

Upper-bounded at 1: Values close to zero indicate two label assignments that are largely independent, while values close to one indicate significant agreement. Further, values of exactly 0 indicate purely independent label assignments and a FMI of exactly 1 indicates that the two label assignments are equal (with or without permutation).

No assumption is made on the cluster structure: can be used to compare clustering algorithms such as k-means which assumes isotropic blob shapes with results of spectral clustering algorithms which can find cluster with “folded” shapes.

Drawbacks
Contrary to inertia, FMI-based measures require the knowledge of the ground truth classes while almost never available in practice or requires manual assignment by human annotators (as in the supervised learning setting).

References

E. B. Fowkles and C. L. Mallows, 1983. “A method for comparing two hierarchical clusterings”. Journal of the American Statistical Association. https://www.tandfonline.com/doi/abs/10.1080/01621459.1983.10478008

Wikipedia entry for the Fowlkes-Mallows Index

2.3.10.5. Silhouette Coefficient
If the ground truth labels are not known, evaluation must be performed using the model itself. The Silhouette Coefficient (sklearn.metrics.silhouette_score) is an example of such an evaluation, where a higher Silhouette Coefficient score relates to a model with better defined clusters. The Silhouette Coefficient is defined for each sample and is composed of two scores:

a: The mean distance between a sample and all other points in the same class.

b: The mean distance between a sample and all other points in the next nearest cluster.

The Silhouette Coefficient s for a single sample is then given as:

 
The Silhouette Coefficient for a set of samples is given as the mean of the Silhouette Coefficient for each sample.

>>>
>>> from sklearn import metrics
>>> from sklearn.metrics import pairwise_distances
>>> from sklearn import datasets
>>> X, y = datasets.load_iris(return_X_y=True)
In normal usage, the Silhouette Coefficient is applied to the results of a cluster analysis.

>>>
>>> import numpy as np
>>> from sklearn.cluster import KMeans
>>> kmeans_model = KMeans(n_clusters=3, random_state=1).fit(X)
>>> labels = kmeans_model.labels_
>>> metrics.silhouette_score(X, labels, metric='euclidean')
0.55...
References

Peter J. Rousseeuw (1987). “Silhouettes: a Graphical Aid to the Interpretation and Validation of Cluster Analysis” . Computational and Applied Mathematics 20: 53–65.

Advantages
The score is bounded between -1 for incorrect clustering and +1 for highly dense clustering. Scores around zero indicate overlapping clusters.

The score is higher when clusters are dense and well separated, which relates to a standard concept of a cluster.

Drawbacks
The Silhouette Coefficient is generally higher for convex clusters than other concepts of clusters, such as density based clusters like those obtained through DBSCAN.

Examples:

Selecting the number of clusters with silhouette analysis on KMeans clustering : In this example the silhouette analysis is used to choose an optimal value for n_clusters.

2.3.10.6. Calinski-Harabasz Index
If the ground truth labels are not known, the Calinski-Harabasz index (sklearn.metrics.calinski_harabasz_score) - also known as the Variance Ratio Criterion - can be used to evaluate the model, where a higher Calinski-Harabasz score relates to a model with better defined clusters.

The index is the ratio of the sum of between-clusters dispersion and of within-cluster dispersion for all clusters (where dispersion is defined as the sum of distances squared):

>>>
>>> from sklearn import metrics
>>> from sklearn.metrics import pairwise_distances
>>> from sklearn import datasets
>>> X, y = datasets.load_iris(return_X_y=True)
In normal usage, the Calinski-Harabasz index is applied to the results of a cluster analysis:

>>>
>>> import numpy as np
>>> from sklearn.cluster import KMeans
>>> kmeans_model = KMeans(n_clusters=3, random_state=1).fit(X)
>>> labels = kmeans_model.labels_
>>> metrics.calinski_harabasz_score(X, labels)
561.62...
Advantages
The score is higher when clusters are dense and well separated, which relates to a standard concept of a cluster.

The score is fast to compute.

Drawbacks
The Calinski-Harabasz index is generally higher for convex clusters than other concepts of clusters, such as density based clusters like those obtained through DBSCAN.

Mathematical formulation
For a set of data 
 of size 
 which has been clustered into 
 clusters, the Calinski-Harabasz score 
 is defined as the ratio of the between-clusters dispersion mean and the within-cluster dispersion:

 
 
where 
 is trace of the between group dispersion matrix and 
 is the trace of the within-cluster dispersion matrix defined by:

 
 
 
with 
 the set of points in cluster 
, 
 the center of cluster 
, 
 the center of 
, and 
 the number of points in cluster 
.

References

Caliński, T., & Harabasz, J. (1974). “A Dendrite Method for Cluster Analysis”. Communications in Statistics-theory and Methods 3: 1-27.

2.3.10.7. Davies-Bouldin Index
If the ground truth labels are not known, the Davies-Bouldin index (sklearn.metrics.davies_bouldin_score) can be used to evaluate the model, where a lower Davies-Bouldin index relates to a model with better separation between the clusters.

This index signifies the average ‘similarity’ between clusters, where the similarity is a measure that compares the distance between clusters with the size of the clusters themselves.

Zero is the lowest possible score. Values closer to zero indicate a better partition.

In normal usage, the Davies-Bouldin index is applied to the results of a cluster analysis as follows:

>>>
>>> from sklearn import datasets
>>> iris = datasets.load_iris()
>>> X = iris.data
>>> from sklearn.cluster import KMeans
>>> from sklearn.metrics import davies_bouldin_score
>>> kmeans = KMeans(n_clusters=3, random_state=1).fit(X)
>>> labels = kmeans.labels_
>>> davies_bouldin_score(X, labels)
0.6619...
Advantages
The computation of Davies-Bouldin is simpler than that of Silhouette scores.

The index is solely based on quantities and features inherent to the dataset as its computation only uses point-wise distances.

Drawbacks
The Davies-Boulding index is generally higher for convex clusters than other concepts of clusters, such as density based clusters like those obtained from DBSCAN.

The usage of centroid distance limits the distance metric to Euclidean space.

Mathematical formulation
The index is defined as the average similarity between each cluster 
 for 
 and its most similar one 
. In the context of this index, similarity is defined as a measure 
 that trades off:

, the average distance between each point of cluster 
 and the centroid of that cluster – also know as cluster diameter.

, the distance between cluster centroids 
 and 
.

A simple choice to construct 
 so that it is nonnegative and symmetric is:

 
Then the Davies-Bouldin index is defined as:

 
 
 
References

Davies, David L.; Bouldin, Donald W. (1979). “A Cluster Separation Measure” IEEE Transactions on Pattern Analysis and Machine Intelligence. PAMI-1 (2): 224-227.

Halkidi, Maria; Batistakis, Yannis; Vazirgiannis, Michalis (2001). “On Clustering Validation Techniques” Journal of Intelligent Information Systems, 17(2-3), 107-145.

Wikipedia entry for Davies-Bouldin index.

2.3.10.8. Contingency Matrix
Contingency matrix (sklearn.metrics.cluster.contingency_matrix) reports the intersection cardinality for every true/predicted cluster pair. The contingency matrix provides sufficient statistics for all clustering metrics where the samples are independent and identically distributed and one doesn’t need to account for some instances not being clustered.

Here is an example:

>>>
>>> from sklearn.metrics.cluster import contingency_matrix
>>> x = ["a", "a", "a", "b", "b", "b"]
>>> y = [0, 0, 1, 1, 2, 2]
>>> contingency_matrix(x, y)
array([[2, 1, 0],
       [0, 1, 2]])
The first row of output array indicates that there are three samples whose true cluster is “a”. Of them, two are in predicted cluster 0, one is in 1, and none is in 2. And the second row indicates that there are three samples whose true cluster is “b”. Of them, none is in predicted cluster 0, one is in 1 and two are in 2.

A confusion matrix for classification is a square contingency matrix where the order of rows and columns correspond to a list of classes.

Advantages
Allows to examine the spread of each true cluster across predicted clusters and vice versa.

The contingency table calculated is typically utilized in the calculation of a similarity statistic (like the others listed in this document) between the two clusterings.

Drawbacks
Contingency matrix is easy to interpret for a small number of clusters, but becomes very hard to interpret for a large number of clusters.

It doesn’t give a single metric to use as an objective for clustering optimisation.

References

Wikipedia entry for contingency matrix

2.3.10.9. Pair Confusion Matrix
The pair confusion matrix (sklearn.metrics.cluster.pair_confusion_matrix) is a 2x2 similarity matrix

 
 
between two clusterings computed by considering all pairs of samples and counting pairs that are assigned into the same or into different clusters under the true and predicted clusterings.

It has the following entries:

 : number of pairs with both clusterings having the samples not clustered together

 : number of pairs with the true label clustering having the samples clustered together but the other clustering not having the samples clustered together

 : number of pairs with the true label clustering not having the samples clustered together but the other clustering having the samples clustered together

 : number of pairs with both clusterings having the samples clustered together

Considering a pair of samples that is clustered together a positive pair, then as in binary classification the count of true negatives is 
, false negatives is 
, true positives is 
 and false positives is 
.

Perfectly matching labelings have all non-zero entries on the diagonal regardless of actual label values:

>>>
>>> from sklearn.metrics.cluster import pair_confusion_matrix
>>> pair_confusion_matrix([0, 0, 1, 1], [0, 0, 1, 1])
array([[8, 0],
       [0, 4]])
>>>
>>> pair_confusion_matrix([0, 0, 1, 1], [1, 1, 0, 0])
array([[8, 0],
       [0, 4]])
Labelings that assign all classes members to the same clusters are complete but may not always be pure, hence penalized, and have some off-diagonal non-zero entries:

>>>
>>> pair_confusion_matrix([0, 0, 1, 2], [0, 0, 1, 1])
array([[8, 2],
       [0, 2]])
The matrix is not symmetric:

>>>
>>> pair_confusion_matrix([0, 0, 1, 1], [0, 0, 1, 2])
array([[8, 0],
       [2, 2]])
If classes members are completely split across different clusters, the assignment is totally incomplete, hence the matrix has all zero diagonal entries:

>>>
>>> pair_confusion_matrix([0, 0, 0, 0], [0, 1, 2, 3])
array([[ 0,  0],
       [12,  0]])
References

“Comparing Partitions” L. Hubert and P. Arabie, Journal of Classification 1985


### Dimensionality reduction 降维

> Reducing the number of random variables to consider.

> Applications: Visualization, Increased efficiency

> Algorithms: PCA, feature selection, non-negative matrix factorization, and more...

> PCA example with Iris Data-set

2.5. Decomposing signals in components (matrix factorization problems)
2.5.1. Principal component analysis (PCA)
2.5.1.1. Exact PCA and probabilistic interpretation
PCA is used to decompose a multivariate dataset in a set of successive orthogonal components that explain a maximum amount of the variance. In scikit-learn, PCA is implemented as a transformer object that learns 
 components in its fit method, and can be used on new data to project it on these components.

PCA centers but does not scale the input data for each feature before applying the SVD. The optional parameter whiten=True makes it possible to project the data onto the singular space while scaling each component to unit variance. This is often useful if the models down-stream make strong assumptions on the isotropy of the signal: this is for example the case for Support Vector Machines with the RBF kernel and the K-Means clustering algorithm.

Below is an example of the iris dataset, which is comprised of 4 features, projected on the 2 dimensions that explain most variance:

../_images/sphx_glr_plot_pca_vs_lda_001.png
The PCA object also provides a probabilistic interpretation of the PCA that can give a likelihood of data based on the amount of variance it explains. As such it implements a score method that can be used in cross-validation:

../_images/sphx_glr_plot_pca_vs_fa_model_selection_001.png
Examples:

Comparison of LDA and PCA 2D projection of Iris dataset

Model selection with Probabilistic PCA and Factor Analysis (FA)

2.5.1.2. Incremental PCA
The PCA object is very useful, but has certain limitations for large datasets. The biggest limitation is that PCA only supports batch processing, which means all of the data to be processed must fit in main memory. The IncrementalPCA object uses a different form of processing and allows for partial computations which almost exactly match the results of PCA while processing the data in a minibatch fashion. IncrementalPCA makes it possible to implement out-of-core Principal Component Analysis either by:

Using its partial_fit method on chunks of data fetched sequentially from the local hard drive or a network database.

Calling its fit method on a sparse matrix or a memory mapped file using numpy.memmap.

IncrementalPCA only stores estimates of component and noise variances, in order update explained_variance_ratio_ incrementally. This is why memory usage depends on the number of samples per batch, rather than the number of samples to be processed in the dataset.

As in PCA, IncrementalPCA centers but does not scale the input data for each feature before applying the SVD.

../_images/sphx_glr_plot_incremental_pca_001.png
../_images/sphx_glr_plot_incremental_pca_002.png
Examples:

Incremental PCA

2.5.1.3. PCA using randomized SVD
It is often interesting to project data to a lower-dimensional space that preserves most of the variance, by dropping the singular vector of components associated with lower singular values.

For instance, if we work with 64x64 pixel gray-level pictures for face recognition, the dimensionality of the data is 4096 and it is slow to train an RBF support vector machine on such wide data. Furthermore we know that the intrinsic dimensionality of the data is much lower than 4096 since all pictures of human faces look somewhat alike. The samples lie on a manifold of much lower dimension (say around 200 for instance). The PCA algorithm can be used to linearly transform the data while both reducing the dimensionality and preserve most of the explained variance at the same time.

The class PCA used with the optional parameter svd_solver='randomized' is very useful in that case: since we are going to drop most of the singular vectors it is much more efficient to limit the computation to an approximated estimate of the singular vectors we will keep to actually perform the transform.

For instance, the following shows 16 sample portraits (centered around 0.0) from the Olivetti dataset. On the right hand side are the first 16 singular vectors reshaped as portraits. Since we only require the top 16 singular vectors of a dataset with size 
 and 
, the computation time is less than 1s:

orig_img pca_img

If we note 
 and 
, the time complexity of the randomized PCA is 
 instead of 
 for the exact method implemented in PCA.

The memory footprint of randomized PCA is also proportional to 
 instead of 
 for the exact method.

Note: the implementation of inverse_transform in PCA with svd_solver='randomized' is not the exact inverse transform of transform even when whiten=False (default).

Examples:

Faces recognition example using eigenfaces and SVMs

Faces dataset decompositions

References:

Algorithm 4.3 in “Finding structure with randomness: Stochastic algorithms for constructing approximate matrix decompositions” Halko, et al., 2009

“An implementation of a randomized algorithm for principal component analysis” A. Szlam et al. 2014

2.5.1.4. Sparse principal components analysis (SparsePCA and MiniBatchSparsePCA)
SparsePCA is a variant of PCA, with the goal of extracting the set of sparse components that best reconstruct the data.

Mini-batch sparse PCA (MiniBatchSparsePCA) is a variant of SparsePCA that is faster but less accurate. The increased speed is reached by iterating over small chunks of the set of features, for a given number of iterations.

Principal component analysis (PCA) has the disadvantage that the components extracted by this method have exclusively dense expressions, i.e. they have non-zero coefficients when expressed as linear combinations of the original variables. This can make interpretation difficult. In many cases, the real underlying components can be more naturally imagined as sparse vectors; for example in face recognition, components might naturally map to parts of faces.

Sparse principal components yields a more parsimonious, interpretable representation, clearly emphasizing which of the original features contribute to the differences between samples.

The following example illustrates 16 components extracted using sparse PCA from the Olivetti faces dataset. It can be seen how the regularization term induces many zeros. Furthermore, the natural structure of the data causes the non-zero coefficients to be vertically adjacent. The model does not enforce this mathematically: each component is a vector 
, and there is no notion of vertical adjacency except during the human-friendly visualization as 64x64 pixel images. The fact that the components shown below appear local is the effect of the inherent structure of the data, which makes such local patterns minimize reconstruction error. There exist sparsity-inducing norms that take into account adjacency and different kinds of structure; see [Jen09] for a review of such methods. For more details on how to use Sparse PCA, see the Examples section, below.

pca_img spca_img

Note that there are many different formulations for the Sparse PCA problem. The one implemented here is based on [Mrl09] . The optimization problem solved is a PCA problem (dictionary learning) with an 
 penalty on the components:

 	
 
 
 stands for the Frobenius norm and 
 stands for the entry-wise matrix norm which is the sum of the absolute values of all the entries in the matrix. The sparsity-inducing 
 matrix norm also prevents learning components from noise when few training samples are available. The degree of penalization (and thus sparsity) can be adjusted through the hyperparameter alpha. Small values lead to a gently regularized factorization, while larger values shrink many coefficients to zero.

Note While in the spirit of an online algorithm, the class MiniBatchSparsePCA does not implement partial_fit because the algorithm is online along the features direction, not the samples direction.
Examples:

Faces dataset decompositions

References:

[Mrl09]
“Online Dictionary Learning for Sparse Coding” J. Mairal, F. Bach, J. Ponce, G. Sapiro, 2009

[Jen09]
“Structured Sparse Principal Component Analysis” R. Jenatton, G. Obozinski, F. Bach, 2009

2.5.2. Kernel Principal Component Analysis (kPCA)
2.5.2.1. Exact Kernel PCA
KernelPCA is an extension of PCA which achieves non-linear dimensionality reduction through the use of kernels (see Pairwise metrics, Affinities and Kernels) [Scholkopf1997]. It has many applications including denoising, compression and structured prediction (kernel dependency estimation). KernelPCA supports both transform and inverse_transform.

../_images/sphx_glr_plot_kernel_pca_002.png
Note KernelPCA.inverse_transform relies on a kernel ridge to learn the function mapping samples from the PCA basis into the original feature space [Bakir2003]. Thus, the reconstruction obtained with KernelPCA.inverse_transform is an approximation. See the example linked below for more details.
Examples:

Kernel PCA

References:

[Scholkopf1997]
Schölkopf, Bernhard, Alexander Smola, and Klaus-Robert Müller. “Kernel principal component analysis.” International conference on artificial neural networks. Springer, Berlin, Heidelberg, 1997.

[Bakir2003]
Bakır, Gökhan H., Jason Weston, and Bernhard Schölkopf. “Learning to find pre-images.” Advances in neural information processing systems 16 (2003): 449-456.

2.5.2.2. Choice of solver for Kernel PCA
While in PCA the number of components is bounded by the number of features, in KernelPCA the number of components is bounded by the number of samples. Many real-world datasets have large number of samples! In these cases finding all the components with a full kPCA is a waste of computation time, as data is mostly described by the first few components (e.g. n_components<=100). In other words, the centered Gram matrix that is eigendecomposed in the Kernel PCA fitting process has an effective rank that is much smaller than its size. This is a situation where approximate eigensolvers can provide speedup with very low precision loss.

The optional parameter eigen_solver='randomized' can be used to significantly reduce the computation time when the number of requested n_components is small compared with the number of samples. It relies on randomized decomposition methods to find an approximate solution in a shorter time.

The time complexity of the randomized KernelPCA is 
 instead of 
 for the exact method implemented with eigen_solver='dense'.

The memory footprint of randomized KernelPCA is also proportional to 
 instead of 
 for the exact method.

Note: this technique is the same as in PCA using randomized SVD.

In addition to the above two solvers, eigen_solver='arpack' can be used as an alternate way to get an approximate decomposition. In practice, this method only provides reasonable execution times when the number of components to find is extremely small. It is enabled by default when the desired number of components is less than 10 (strict) and the number of samples is more than 200 (strict). See KernelPCA for details.

References:

dense solver: scipy.linalg.eigh documentation

randomized solver:

Algorithm 4.3 in “Finding structure with randomness: Stochastic algorithms for constructing approximate matrix decompositions” Halko, et al. (2009)

“An implementation of a randomized algorithm for principal component analysis” A. Szlam et al. (2014)

arpack solver: scipy.sparse.linalg.eigsh documentation R. B. Lehoucq, D. C. Sorensen, and C. Yang, (1998)

2.5.3. Truncated singular value decomposition and latent semantic analysis
TruncatedSVD implements a variant of singular value decomposition (SVD) that only computes the 
 largest singular values, where 
 is a user-specified parameter.

When truncated SVD is applied to term-document matrices (as returned by CountVectorizer or TfidfVectorizer), this transformation is known as latent semantic analysis (LSA), because it transforms such matrices to a “semantic” space of low dimensionality. In particular, LSA is known to combat the effects of synonymy and polysemy (both of which roughly mean there are multiple meanings per word), which cause term-document matrices to be overly sparse and exhibit poor similarity under measures such as cosine similarity.

Note LSA is also known as latent semantic indexing, LSI, though strictly that refers to its use in persistent indexes for information retrieval purposes.
Mathematically, truncated SVD applied to training samples 
 produces a low-rank approximation 
:

After this operation, 
 is the transformed training set with 
 features (called n_components in the API).

To also transform a test set 
, we multiply it with 
:

Note Most treatments of LSA in the natural language processing (NLP) and information retrieval (IR) literature swap the axes of the matrix 
 so that it has shape n_features × n_samples. We present LSA in a different way that matches the scikit-learn API better, but the singular values found are the same.
TruncatedSVD is very similar to PCA, but differs in that the matrix 
 does not need to be centered. When the columnwise (per-feature) means of 
 are subtracted from the feature values, truncated SVD on the resulting matrix is equivalent to PCA. In practical terms, this means that the TruncatedSVD transformer accepts scipy.sparse matrices without the need to densify them, as densifying may fill up memory even for medium-sized document collections.

While the TruncatedSVD transformer works with any feature matrix, using it on tf–idf matrices is recommended over raw frequency counts in an LSA/document processing setting. In particular, sublinear scaling and inverse document frequency should be turned on (sublinear_tf=True, use_idf=True) to bring the feature values closer to a Gaussian distribution, compensating for LSA’s erroneous assumptions about textual data.

Examples:

Clustering text documents using k-means

References:

Christopher D. Manning, Prabhakar Raghavan and Hinrich Schütze (2008), Introduction to Information Retrieval, Cambridge University Press, chapter 18: Matrix decompositions & latent semantic indexing

2.5.4. Dictionary Learning
2.5.4.1. Sparse coding with a precomputed dictionary
The SparseCoder object is an estimator that can be used to transform signals into sparse linear combination of atoms from a fixed, precomputed dictionary such as a discrete wavelet basis. This object therefore does not implement a fit method. The transformation amounts to a sparse coding problem: finding a representation of the data as a linear combination of as few dictionary atoms as possible. All variations of dictionary learning implement the following transform methods, controllable via the transform_method initialization parameter:

Orthogonal matching pursuit (Orthogonal Matching Pursuit (OMP))

Least-angle regression (Least Angle Regression)

Lasso computed by least-angle regression

Lasso using coordinate descent (Lasso)

Thresholding

Thresholding is very fast but it does not yield accurate reconstructions. They have been shown useful in literature for classification tasks. For image reconstruction tasks, orthogonal matching pursuit yields the most accurate, unbiased reconstruction.

The dictionary learning objects offer, via the split_code parameter, the possibility to separate the positive and negative values in the results of sparse coding. This is useful when dictionary learning is used for extracting features that will be used for supervised learning, because it allows the learning algorithm to assign different weights to negative loadings of a particular atom, from to the corresponding positive loading.

The split code for a single sample has length 2 * n_components and is constructed using the following rule: First, the regular code of length n_components is computed. Then, the first n_components entries of the split_code are filled with the positive part of the regular code vector. The second half of the split code is filled with the negative part of the code vector, only with a positive sign. Therefore, the split_code is non-negative.

Examples:

Sparse coding with a precomputed dictionary

2.5.4.2. Generic dictionary learning
Dictionary learning (DictionaryLearning) is a matrix factorization problem that amounts to finding a (usually overcomplete) dictionary that will perform well at sparsely encoding the fitted data.

Representing data as sparse combinations of atoms from an overcomplete dictionary is suggested to be the way the mammalian primary visual cortex works. Consequently, dictionary learning applied on image patches has been shown to give good results in image processing tasks such as image completion, inpainting and denoising, as well as for supervised recognition tasks.

Dictionary learning is an optimization problem solved by alternatively updating the sparse code, as a solution to multiple Lasso problems, considering the dictionary fixed, and then updating the dictionary to best fit the sparse code.

 	
 
 
pca_img2 dict_img2

 stands for the Frobenius norm and 
 stands for the entry-wise matrix norm which is the sum of the absolute values of all the entries in the matrix. After using such a procedure to fit the dictionary, the transform is simply a sparse coding step that shares the same implementation with all dictionary learning objects (see Sparse coding with a precomputed dictionary).

It is also possible to constrain the dictionary and/or code to be positive to match constraints that may be present in the data. Below are the faces with different positivity constraints applied. Red indicates negative values, blue indicates positive values, and white represents zeros.

dict_img_pos1 dict_img_pos2

dict_img_pos3 dict_img_pos4

The following image shows how a dictionary learned from 4x4 pixel image patches extracted from part of the image of a raccoon face looks like.

../_images/sphx_glr_plot_image_denoising_001.png
Examples:

Image denoising using dictionary learning

References:

“Online dictionary learning for sparse coding” J. Mairal, F. Bach, J. Ponce, G. Sapiro, 2009

2.5.4.3. Mini-batch dictionary learning
MiniBatchDictionaryLearning implements a faster, but less accurate version of the dictionary learning algorithm that is better suited for large datasets.

By default, MiniBatchDictionaryLearning divides the data into mini-batches and optimizes in an online manner by cycling over the mini-batches for the specified number of iterations. However, at the moment it does not implement a stopping condition.

The estimator also implements partial_fit, which updates the dictionary by iterating only once over a mini-batch. This can be used for online learning when the data is not readily available from the start, or for when the data does not fit into the memory.

../_images/sphx_glr_plot_dict_face_patches_001.png
Clustering for dictionary learning

Note that when using dictionary learning to extract a representation (e.g. for sparse coding) clustering can be a good proxy to learn the dictionary. For instance the MiniBatchKMeans estimator is computationally efficient and implements on-line learning with a partial_fit method.

Example: Online learning of a dictionary of parts of faces

2.5.5. Factor Analysis
In unsupervised learning we only have a dataset 
. How can this dataset be described mathematically? A very simple continuous latent variable model for 
 is

The vector 
 is called “latent” because it is unobserved. 
 is considered a noise term distributed according to a Gaussian with mean 0 and covariance 
 (i.e. 
), 
 is some arbitrary offset vector. Such a model is called “generative” as it describes how 
 is generated from 
. If we use all the 
’s as columns to form a matrix 
 and all the 
’s as columns of a matrix 
 then we can write (with suitably defined 
 and 
):

In other words, we decomposed matrix 
.

If 
 is given, the above equation automatically implies the following probabilistic interpretation:

For a complete probabilistic model we also need a prior distribution for the latent variable 
. The most straightforward assumption (based on the nice properties of the Gaussian distribution) is 
. This yields a Gaussian as the marginal distribution of 
:

Now, without any further assumptions the idea of having a latent variable 
 would be superfluous – 
 can be completely modelled with a mean and a covariance. We need to impose some more specific structure on one of these two parameters. A simple additional assumption regards the structure of the error covariance 
:

: This assumption leads to the probabilistic model of PCA.

: This model is called FactorAnalysis, a classical statistical model. The matrix W is sometimes called the “factor loading matrix”.

Both models essentially estimate a Gaussian with a low-rank covariance matrix. Because both models are probabilistic they can be integrated in more complex models, e.g. Mixture of Factor Analysers. One gets very different models (e.g. FastICA) if non-Gaussian priors on the latent variables are assumed.

Factor analysis can produce similar components (the columns of its loading matrix) to PCA. However, one can not make any general statements about these components (e.g. whether they are orthogonal):

pca_img3 fa_img3

The main advantage for Factor Analysis over PCA is that it can model the variance in every direction of the input space independently (heteroscedastic noise):

../_images/sphx_glr_plot_faces_decomposition_009.png
This allows better model selection than probabilistic PCA in the presence of heteroscedastic noise:

../_images/sphx_glr_plot_pca_vs_fa_model_selection_002.png
Factor Analysis is often followed by a rotation of the factors (with the parameter rotation), usually to improve interpretability. For example, Varimax rotation maximizes the sum of the variances of the squared loadings, i.e., it tends to produce sparser factors, which are influenced by only a few features each (the “simple structure”). See e.g., the first example below.

Examples:

Factor Analysis (with rotation) to visualize patterns

Model selection with Probabilistic PCA and Factor Analysis (FA)

2.5.6. Independent component analysis (ICA)
Independent component analysis separates a multivariate signal into additive subcomponents that are maximally independent. It is implemented in scikit-learn using the Fast ICA algorithm. Typically, ICA is not used for reducing dimensionality but for separating superimposed signals. Since the ICA model does not include a noise term, for the model to be correct, whitening must be applied. This can be done internally using the whiten argument or manually using one of the PCA variants.

It is classically used to separate mixed signals (a problem known as blind source separation), as in the example below:

../_images/sphx_glr_plot_ica_blind_source_separation_001.png
ICA can also be used as yet another non linear decomposition that finds components with some sparsity:

pca_img4 ica_img4

Examples:

Blind source separation using FastICA

FastICA on 2D point clouds

Faces dataset decompositions

2.5.7. Non-negative matrix factorization (NMF or NNMF)
2.5.7.1. NMF with the Frobenius norm
NMF [1] is an alternative approach to decomposition that assumes that the data and the components are non-negative. NMF can be plugged in instead of PCA or its variants, in the cases where the data matrix does not contain negative values. It finds a decomposition of samples 
 into two matrices 
 and 
 of non-negative elements, by optimizing the distance 
 between 
 and the matrix product 
. The most widely used distance function is the squared Frobenius norm, which is an obvious extension of the Euclidean norm to matrices:

 
 
 
Unlike PCA, the representation of a vector is obtained in an additive fashion, by superimposing the components, without subtracting. Such additive models are efficient for representing images and text.

It has been observed in [Hoyer, 2004] [2] that, when carefully constrained, NMF can produce a parts-based representation of the dataset, resulting in interpretable models. The following example displays 16 sparse components found by NMF from the images in the Olivetti faces dataset, in comparison with the PCA eigenfaces.

pca_img5 nmf_img5

The init attribute determines the initialization method applied, which has a great impact on the performance of the method. NMF implements the method Nonnegative Double Singular Value Decomposition. NNDSVD [4] is based on two SVD processes, one approximating the data matrix, the other approximating positive sections of the resulting partial SVD factors utilizing an algebraic property of unit rank matrices. The basic NNDSVD algorithm is better fit for sparse factorization. Its variants NNDSVDa (in which all zeros are set equal to the mean of all elements of the data), and NNDSVDar (in which the zeros are set to random perturbations less than the mean of the data divided by 100) are recommended in the dense case.

Note that the Multiplicative Update (‘mu’) solver cannot update zeros present in the initialization, so it leads to poorer results when used jointly with the basic NNDSVD algorithm which introduces a lot of zeros; in this case, NNDSVDa or NNDSVDar should be preferred.

NMF can also be initialized with correctly scaled random non-negative matrices by setting init="random". An integer seed or a RandomState can also be passed to random_state to control reproducibility.

In NMF, L1 and L2 priors can be added to the loss function in order to regularize the model. The L2 prior uses the Frobenius norm, while the L1 prior uses an elementwise L1 norm. As in ElasticNet, we control the combination of L1 and L2 with the l1_ratio (
) parameter, and the intensity of the regularization with the alpha_W and alpha_H (
 and 
) parameters. The priors are scaled by the number of samples (
) for H and the number of features (
) for W to keep their impact balanced with respect to one another and to the data fit term as independent as possible of the size of the training set. Then the priors terms are:

 
 
and the regularized objective function is:

 
 
2.5.7.2. NMF with a beta-divergence
As described previously, the most widely used distance function is the squared Frobenius norm, which is an obvious extension of the Euclidean norm to matrices:

 
 
 
Other distance functions can be used in NMF as, for example, the (generalized) Kullback-Leibler (KL) divergence, also referred as I-divergence:

 
 
Or, the Itakura-Saito (IS) divergence:

 
 
 
These three distances are special cases of the beta-divergence family, with 
 respectively [6]. The beta-divergence are defined by :

 
 
../_images/sphx_glr_plot_beta_divergence_001.png
Note that this definition is not valid if 
, yet it can be continuously extended to the definitions of 
 and 
 respectively.

NMF implements two solvers, using Coordinate Descent (‘cd’) [5], and Multiplicative Update (‘mu’) [6]. The ‘mu’ solver can optimize every beta-divergence, including of course the Frobenius norm (
), the (generalized) Kullback-Leibler divergence (
) and the Itakura-Saito divergence (
). Note that for 
, the ‘mu’ solver is significantly faster than for other values of 
. Note also that with a negative (or 0, i.e. ‘itakura-saito’) 
, the input matrix cannot contain zero values.

The ‘cd’ solver can only optimize the Frobenius norm. Due to the underlying non-convexity of NMF, the different solvers may converge to different minima, even when optimizing the same distance function.

NMF is best used with the fit_transform method, which returns the matrix W. The matrix H is stored into the fitted model in the components_ attribute; the method transform will decompose a new matrix X_new based on these stored components:

>>>
>>> import numpy as np
>>> X = np.array([[1, 1], [2, 1], [3, 1.2], [4, 1], [5, 0.8], [6, 1]])
>>> from sklearn.decomposition import NMF
>>> model = NMF(n_components=2, init='random', random_state=0)
>>> W = model.fit_transform(X)
>>> H = model.components_
>>> X_new = np.array([[1, 0], [1, 6.1], [1, 0], [1, 4], [3.2, 1], [0, 4]])
>>> W_new = model.transform(X_new)
Examples:

Faces dataset decompositions

Topic extraction with Non-negative Matrix Factorization and Latent Dirichlet Allocation

Beta-divergence loss functions

2.5.7.3. Mini-batch Non Negative Matrix Factorization
MiniBatchNMF [7] implements a faster, but less accurate version of the non negative matrix factorization (i.e. NMF), better suited for large datasets.

By default, MiniBatchNMF divides the data into mini-batches and optimizes the NMF model in an online manner by cycling over the mini-batches for the specified number of iterations. The batch_size parameter controls the size of the batches.

In order to speed up the mini-batch algorithm it is also possible to scale past batches, giving them less importance than newer batches. This is done introducing a so-called forgetting factor controlled by the forget_factor parameter.

The estimator also implements partial_fit, which updates H by iterating only once over a mini-batch. This can be used for online learning when the data is not readily available from the start, or when the data does not fit into memory.

References:

[1]
“Learning the parts of objects by non-negative matrix factorization” D. Lee, S. Seung, 1999

[2]
“Non-negative Matrix Factorization with Sparseness Constraints” P. Hoyer, 2004

[4]
“SVD based initialization: A head start for nonnegative matrix factorization” C. Boutsidis, E. Gallopoulos, 2008

[5]
“Fast local algorithms for large scale nonnegative matrix and tensor factorizations.” A. Cichocki, A. Phan, 2009

[6] (1,2)
“Algorithms for nonnegative matrix factorization with the beta-divergence” C. Fevotte, J. Idier, 2011

[7]
“Online algorithms for nonnegative matrix factorization with the Itakura-Saito divergence” A. Lefevre, F. Bach, C. Fevotte, 2011

2.5.8. Latent Dirichlet Allocation (LDA)
Latent Dirichlet Allocation is a generative probabilistic model for collections of discrete dataset such as text corpora. It is also a topic model that is used for discovering abstract topics from a collection of documents.

The graphical model of LDA is a three-level generative model:

../_images/lda_model_graph.png
Note on notations presented in the graphical model above, which can be found in Hoffman et al. (2013):

The corpus is a collection of 
 documents.

A document is a sequence of 
 words.

There are 
 topics in the corpus.

The boxes represent repeated sampling.

In the graphical model, each node is a random variable and has a role in the generative process. A shaded node indicates an observed variable and an unshaded node indicates a hidden (latent) variable. In this case, words in the corpus are the only data that we observe. The latent variables determine the random mixture of topics in the corpus and the distribution of words in the documents. The goal of LDA is to use the observed words to infer the hidden topic structure.

When modeling text corpora, the model assumes the following generative process for a corpus with 
 documents and 
 topics, with 
 corresponding to n_components in the API:

For each topic 
, draw 
. This provides a distribution over the words, i.e. the probability of a word appearing in topic 
. 
 corresponds to topic_word_prior.

For each document 
, draw the topic proportions 
. 
 corresponds to doc_topic_prior.

For each word 
 in document 
:

Draw the topic assignment 

Draw the observed word 

For parameter estimation, the posterior distribution is:

 
Since the posterior is intractable, variational Bayesian method uses a simpler distribution 
 to approximate it, and those variational parameters 
, 
, 
 are optimized to maximize the Evidence Lower Bound (ELBO):

Maximizing ELBO is equivalent to minimizing the Kullback-Leibler(KL) divergence between 
 and the true posterior 
.

LatentDirichletAllocation implements the online variational Bayes algorithm and supports both online and batch update methods. While the batch method updates variational variables after each full pass through the data, the online method updates variational variables from mini-batch data points.

Note Although the online method is guaranteed to converge to a local optimum point, the quality of the optimum point and the speed of convergence may depend on mini-batch size and attributes related to learning rate setting.
When LatentDirichletAllocation is applied on a “document-term” matrix, the matrix will be decomposed into a “topic-term” matrix and a “document-topic” matrix. While “topic-term” matrix is stored as components_ in the model, “document-topic” matrix can be calculated from transform method.

LatentDirichletAllocation also implements partial_fit method. This is used when data can be fetched sequentially.

Examples:

Topic extraction with Non-negative Matrix Factorization and Latent Dirichlet Allocation

References:

“Latent Dirichlet Allocation” D. Blei, A. Ng, M. Jordan, 2003

“Online Learning for Latent Dirichlet Allocation” M. Hoffman, D. Blei, F. Bach, 2010

“Stochastic Variational Inference” M. Hoffman, D. Blei, C. Wang, J. Paisley, 2013

“The varimax criterion for analytic rotation in factor analysis” H. F. Kaiser, 1958

See also Dimensionality reduction for dimensionality reduction with Neighborhood Components Analysis.

### Model selection

> Comparing, validating and choosing parameters and models.

> Applications: Improved accuracy via parameter tuning

> Algorithms: grid search, cross validation, metrics, and more...

> Demonstration of multi-metric evaluation on cross_val_score and GridSearchCV

3.1. Cross-validation: evaluating estimator performance
3.1.1. Computing cross-validated metrics
3.1.2. Cross validation iterators
3.1.3. A note on shuffling
3.1.4. Cross validation and model selection
3.1.5. Permutation test score
3.2. Tuning the hyper-parameters of an estimator
3.2.1. Exhaustive Grid Search
3.2.2. Randomized Parameter Optimization
3.2.3. Searching for optimal parameters with successive halving
3.2.4. Tips for parameter search
3.2.5. Alternatives to brute force parameter search
3.3. Metrics and scoring: quantifying the quality of predictions
3.3.1. The scoring parameter: defining model evaluation rules
3.3.2. Classification metrics
3.3.3. Multilabel ranking metrics
3.3.4. Regression metrics
3.3.5. Clustering metrics
3.3.6. Dummy estimators
3.4. Validation curves: plotting scores to evaluate models
3.4.1. Validation curve
3.4.2. Learning curve

### Preprocessing

> Feature extraction and normalization.

> Applications: Transforming input data such as text for use with machine learning algorithms.

> Algorithms: preprocessing, feature extraction, and more...

6.3. Preprocessing data¶
The sklearn.preprocessing package provides several common utility functions and transformer classes to change raw feature vectors into a representation that is more suitable for the downstream estimators.

In general, learning algorithms benefit from standardization of the data set. If some outliers are present in the set, robust scalers or transformers are more appropriate. The behaviors of the different scalers, transformers, and normalizers on a dataset containing marginal outliers is highlighted in Compare the effect of different scalers on data with outliers.

6.3.1. Standardization, or mean removal and variance scaling
Standardization of datasets is a common requirement for many machine learning estimators implemented in scikit-learn; they might behave badly if the individual features do not more or less look like standard normally distributed data: Gaussian with zero mean and unit variance.

In practice we often ignore the shape of the distribution and just transform the data to center it by removing the mean value of each feature, then scale it by dividing non-constant features by their standard deviation.

For instance, many elements used in the objective function of a learning algorithm (such as the RBF kernel of Support Vector Machines or the l1 and l2 regularizers of linear models) may assume that all features are centered around zero or have variance in the same order. If a feature has a variance that is orders of magnitude larger than others, it might dominate the objective function and make the estimator unable to learn from other features correctly as expected.

The preprocessing module provides the StandardScaler utility class, which is a quick and easy way to perform the following operation on an array-like dataset:

>>>
>>> from sklearn import preprocessing
>>> import numpy as np
>>> X_train = np.array([[ 1., -1.,  2.],
...                     [ 2.,  0.,  0.],
...                     [ 0.,  1., -1.]])
>>> scaler = preprocessing.StandardScaler().fit(X_train)
>>> scaler
StandardScaler()

>>> scaler.mean_
array([1. ..., 0. ..., 0.33...])

>>> scaler.scale_
array([0.81..., 0.81..., 1.24...])

>>> X_scaled = scaler.transform(X_train)
>>> X_scaled
array([[ 0.  ..., -1.22...,  1.33...],
       [ 1.22...,  0.  ..., -0.26...],
       [-1.22...,  1.22..., -1.06...]])
Scaled data has zero mean and unit variance:

>>>
>>> X_scaled.mean(axis=0)
array([0., 0., 0.])

>>> X_scaled.std(axis=0)
array([1., 1., 1.])
This class implements the Transformer API to compute the mean and standard deviation on a training set so as to be able to later re-apply the same transformation on the testing set. This class is hence suitable for use in the early steps of a Pipeline:

>>>
>>> from sklearn.datasets import make_classification
>>> from sklearn.linear_model import LogisticRegression
>>> from sklearn.model_selection import train_test_split
>>> from sklearn.pipeline import make_pipeline
>>> from sklearn.preprocessing import StandardScaler

>>> X, y = make_classification(random_state=42)
>>> X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=42)
>>> pipe = make_pipeline(StandardScaler(), LogisticRegression())
>>> pipe.fit(X_train, y_train)  # apply scaling on training data
Pipeline(steps=[('standardscaler', StandardScaler()),
                ('logisticregression', LogisticRegression())])

>>> pipe.score(X_test, y_test)  # apply scaling on testing data, without leaking training data.
0.96
It is possible to disable either centering or scaling by either passing with_mean=False or with_std=False to the constructor of StandardScaler.

6.3.1.1. Scaling features to a range
An alternative standardization is scaling features to lie between a given minimum and maximum value, often between zero and one, or so that the maximum absolute value of each feature is scaled to unit size. This can be achieved using MinMaxScaler or MaxAbsScaler, respectively.

The motivation to use this scaling include robustness to very small standard deviations of features and preserving zero entries in sparse data.

Here is an example to scale a toy data matrix to the [0, 1] range:

>>>
>>> X_train = np.array([[ 1., -1.,  2.],
...                     [ 2.,  0.,  0.],
...                     [ 0.,  1., -1.]])
...
>>> min_max_scaler = preprocessing.MinMaxScaler()
>>> X_train_minmax = min_max_scaler.fit_transform(X_train)
>>> X_train_minmax
array([[0.5       , 0.        , 1.        ],
       [1.        , 0.5       , 0.33333333],
       [0.        , 1.        , 0.        ]])
The same instance of the transformer can then be applied to some new test data unseen during the fit call: the same scaling and shifting operations will be applied to be consistent with the transformation performed on the train data:

>>>
>>> X_test = np.array([[-3., -1.,  4.]])
>>> X_test_minmax = min_max_scaler.transform(X_test)
>>> X_test_minmax
array([[-1.5       ,  0.        ,  1.66666667]])
It is possible to introspect the scaler attributes to find about the exact nature of the transformation learned on the training data:

>>>
>>> min_max_scaler.scale_
array([0.5       , 0.5       , 0.33...])

>>> min_max_scaler.min_
array([0.        , 0.5       , 0.33...])
If MinMaxScaler is given an explicit feature_range=(min, max) the full formula is:

X_std = (X - X.min(axis=0)) / (X.max(axis=0) - X.min(axis=0))

X_scaled = X_std * (max - min) + min
MaxAbsScaler works in a very similar fashion, but scales in a way that the training data lies within the range [-1, 1] by dividing through the largest maximum value in each feature. It is meant for data that is already centered at zero or sparse data.

Here is how to use the toy data from the previous example with this scaler:

>>>
>>> X_train = np.array([[ 1., -1.,  2.],
...                     [ 2.,  0.,  0.],
...                     [ 0.,  1., -1.]])
...
>>> max_abs_scaler = preprocessing.MaxAbsScaler()
>>> X_train_maxabs = max_abs_scaler.fit_transform(X_train)
>>> X_train_maxabs
array([[ 0.5, -1. ,  1. ],
       [ 1. ,  0. ,  0. ],
       [ 0. ,  1. , -0.5]])
>>> X_test = np.array([[ -3., -1.,  4.]])
>>> X_test_maxabs = max_abs_scaler.transform(X_test)
>>> X_test_maxabs
array([[-1.5, -1. ,  2. ]])
>>> max_abs_scaler.scale_
array([2.,  1.,  2.])
6.3.1.2. Scaling sparse data
Centering sparse data would destroy the sparseness structure in the data, and thus rarely is a sensible thing to do. However, it can make sense to scale sparse inputs, especially if features are on different scales.

MaxAbsScaler was specifically designed for scaling sparse data, and is the recommended way to go about this. However, StandardScaler can accept scipy.sparse matrices as input, as long as with_mean=False is explicitly passed to the constructor. Otherwise a ValueError will be raised as silently centering would break the sparsity and would often crash the execution by allocating excessive amounts of memory unintentionally. RobustScaler cannot be fitted to sparse inputs, but you can use the transform method on sparse inputs.

Note that the scalers accept both Compressed Sparse Rows and Compressed Sparse Columns format (see scipy.sparse.csr_matrix and scipy.sparse.csc_matrix). Any other sparse input will be converted to the Compressed Sparse Rows representation. To avoid unnecessary memory copies, it is recommended to choose the CSR or CSC representation upstream.

Finally, if the centered data is expected to be small enough, explicitly converting the input to an array using the toarray method of sparse matrices is another option.

6.3.1.3. Scaling data with outliers
If your data contains many outliers, scaling using the mean and variance of the data is likely to not work very well. In these cases, you can use RobustScaler as a drop-in replacement instead. It uses more robust estimates for the center and range of your data.

References:

Further discussion on the importance of centering and scaling data is available on this FAQ: Should I normalize/standardize/rescale the data?

Scaling vs Whitening

It is sometimes not enough to center and scale the features independently, since a downstream model can further make some assumption on the linear independence of the features.

To address this issue you can use PCA with whiten=True to further remove the linear correlation across features.

6.3.1.4. Centering kernel matrices
If you have a kernel matrix of a kernel 
 that computes a dot product in a feature space (possibly implicitly) defined by a function 
, a KernelCenterer can transform the kernel matrix so that it contains inner products in the feature space defined by 
 followed by the removal of the mean in that space. In other words, KernelCenterer computes the centered Gram matrix associated to a positive semidefinite kernel 
.

Mathematical formulation

We can have a look at the mathematical formulation now that we have the intuition. Let 
 be a kernel matrix of shape (n_samples, n_samples) computed from 
, a data matrix of shape (n_samples, n_features), during the fit step. 
 is defined by

 is a function mapping of 
 to a Hilbert space. A centered kernel 
 is defined as:

where 
 results from centering 
 in the Hilbert space.

Thus, one could compute 
 by mapping 
 using the function 
 and center the data in this new space. However, kernels are often used because they allows some algebra calculations that avoid computing explicitly this mapping using 
. Indeed, one can implicitly center as shown in Appendix B in [Scholkopf1998]:

 is a matrix of (n_samples, n_samples) where all entries are equal to 
 
. In the transform step, the kernel becomes 
 defined as:

 is the test dataset of shape (n_samples_test, n_features) and thus 
 is of shape (n_samples_test, n_samples). In this case, centering 
 is done as:

 is a matrix of shape (n_samples_test, n_samples) where all entries are equal to 
 
.

References

[Scholkopf1998]
B. Schölkopf, A. Smola, and K.R. Müller, “Nonlinear component analysis as a kernel eigenvalue problem.” Neural computation 10.5 (1998): 1299-1319.

6.3.2. Non-linear transformation
Two types of transformations are available: quantile transforms and power transforms. Both quantile and power transforms are based on monotonic transformations of the features and thus preserve the rank of the values along each feature.

Quantile transforms put all features into the same desired distribution based on the formula 
 where 
 is the cumulative distribution function of the feature and 
 the quantile function of the desired output distribution 
. This formula is using the two following facts: (i) if 
 is a random variable with a continuous cumulative distribution function 
 then 
 is uniformly distributed on 
; (ii) if 
 is a random variable with uniform distribution on 
 then 
 has distribution 
. By performing a rank transformation, a quantile transform smooths out unusual distributions and is less influenced by outliers than scaling methods. It does, however, distort correlations and distances within and across features.

Power transforms are a family of parametric transformations that aim to map data from any distribution to as close to a Gaussian distribution.

6.3.2.1. Mapping to a Uniform distribution
QuantileTransformer provides a non-parametric transformation to map the data to a uniform distribution with values between 0 and 1:

>>>
>>> from sklearn.datasets import load_iris
>>> from sklearn.model_selection import train_test_split
>>> X, y = load_iris(return_X_y=True)
>>> X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=0)
>>> quantile_transformer = preprocessing.QuantileTransformer(random_state=0)
>>> X_train_trans = quantile_transformer.fit_transform(X_train)
>>> X_test_trans = quantile_transformer.transform(X_test)
>>> np.percentile(X_train[:, 0], [0, 25, 50, 75, 100]) 
array([ 4.3,  5.1,  5.8,  6.5,  7.9])
This feature corresponds to the sepal length in cm. Once the quantile transformation applied, those landmarks approach closely the percentiles previously defined:

>>>
>>> np.percentile(X_train_trans[:, 0], [0, 25, 50, 75, 100])
... 
array([ 0.00... ,  0.24...,  0.49...,  0.73...,  0.99... ])
This can be confirmed on a independent testing set with similar remarks:

>>>
>>> np.percentile(X_test[:, 0], [0, 25, 50, 75, 100])
... 
array([ 4.4  ,  5.125,  5.75 ,  6.175,  7.3  ])
>>> np.percentile(X_test_trans[:, 0], [0, 25, 50, 75, 100])
... 
array([ 0.01...,  0.25...,  0.46...,  0.60... ,  0.94...])
6.3.2.2. Mapping to a Gaussian distribution
In many modeling scenarios, normality of the features in a dataset is desirable. Power transforms are a family of parametric, monotonic transformations that aim to map data from any distribution to as close to a Gaussian distribution as possible in order to stabilize variance and minimize skewness.

PowerTransformer currently provides two such power transformations, the Yeo-Johnson transform and the Box-Cox transform.

The Yeo-Johnson transform is given by:

 
 
while the Box-Cox transform is given by:

 
 
 
Box-Cox can only be applied to strictly positive data. In both methods, the transformation is parameterized by 
, which is determined through maximum likelihood estimation. Here is an example of using Box-Cox to map samples drawn from a lognormal distribution to a normal distribution:

>>>
>>> pt = preprocessing.PowerTransformer(method='box-cox', standardize=False)
>>> X_lognormal = np.random.RandomState(616).lognormal(size=(3, 3))
>>> X_lognormal
array([[1.28..., 1.18..., 0.84...],
       [0.94..., 1.60..., 0.38...],
       [1.35..., 0.21..., 1.09...]])
>>> pt.fit_transform(X_lognormal)
array([[ 0.49...,  0.17..., -0.15...],
       [-0.05...,  0.58..., -0.57...],
       [ 0.69..., -0.84...,  0.10...]])
While the above example sets the standardize option to False, PowerTransformer will apply zero-mean, unit-variance normalization to the transformed output by default.

Below are examples of Box-Cox and Yeo-Johnson applied to various probability distributions. Note that when applied to certain distributions, the power transforms achieve very Gaussian-like results, but with others, they are ineffective. This highlights the importance of visualizing the data before and after transformation.

../_images/sphx_glr_plot_map_data_to_normal_001.png
It is also possible to map data to a normal distribution using QuantileTransformer by setting output_distribution='normal'. Using the earlier example with the iris dataset:

>>>
>>> quantile_transformer = preprocessing.QuantileTransformer(
...     output_distribution='normal', random_state=0)
>>> X_trans = quantile_transformer.fit_transform(X)
>>> quantile_transformer.quantiles_
array([[4.3, 2. , 1. , 0.1],
       [4.4, 2.2, 1.1, 0.1],
       [4.4, 2.2, 1.2, 0.1],
       ...,
       [7.7, 4.1, 6.7, 2.5],
       [7.7, 4.2, 6.7, 2.5],
       [7.9, 4.4, 6.9, 2.5]])
Thus the median of the input becomes the mean of the output, centered at 0. The normal output is clipped so that the input’s minimum and maximum — corresponding to the 1e-7 and 1 - 1e-7 quantiles respectively — do not become infinite under the transformation.

6.3.3. Normalization
Normalization is the process of scaling individual samples to have unit norm. This process can be useful if you plan to use a quadratic form such as the dot-product or any other kernel to quantify the similarity of any pair of samples.

This assumption is the base of the Vector Space Model often used in text classification and clustering contexts.

The function normalize provides a quick and easy way to perform this operation on a single array-like dataset, either using the l1, l2, or max norms:

>>>
>>> X = [[ 1., -1.,  2.],
...      [ 2.,  0.,  0.],
...      [ 0.,  1., -1.]]
>>> X_normalized = preprocessing.normalize(X, norm='l2')

>>> X_normalized
array([[ 0.40..., -0.40...,  0.81...],
       [ 1.  ...,  0.  ...,  0.  ...],
       [ 0.  ...,  0.70..., -0.70...]])
The preprocessing module further provides a utility class Normalizer that implements the same operation using the Transformer API (even though the fit method is useless in this case: the class is stateless as this operation treats samples independently).

This class is hence suitable for use in the early steps of a Pipeline:

>>>
>>> normalizer = preprocessing.Normalizer().fit(X)  # fit does nothing
>>> normalizer
Normalizer()
The normalizer instance can then be used on sample vectors as any transformer:

>>>
>>> normalizer.transform(X)
array([[ 0.40..., -0.40...,  0.81...],
       [ 1.  ...,  0.  ...,  0.  ...],
       [ 0.  ...,  0.70..., -0.70...]])

>>> normalizer.transform([[-1.,  1., 0.]])
array([[-0.70...,  0.70...,  0.  ...]])
Note: L2 normalization is also known as spatial sign preprocessing.

Sparse input

normalize and Normalizer accept both dense array-like and sparse matrices from scipy.sparse as input.

For sparse input the data is converted to the Compressed Sparse Rows representation (see scipy.sparse.csr_matrix) before being fed to efficient Cython routines. To avoid unnecessary memory copies, it is recommended to choose the CSR representation upstream.

6.3.4. Encoding categorical features
Often features are not given as continuous values but categorical. For example a person could have features ["male", "female"], ["from Europe", "from US", "from Asia"], ["uses Firefox", "uses Chrome", "uses Safari", "uses Internet Explorer"]. Such features can be efficiently coded as integers, for instance ["male", "from US", "uses Internet Explorer"] could be expressed as [0, 1, 3] while ["female", "from Asia", "uses Chrome"] would be [1, 2, 1].

To convert categorical features to such integer codes, we can use the OrdinalEncoder. This estimator transforms each categorical feature to one new feature of integers (0 to n_categories - 1):

>>>
>>> enc = preprocessing.OrdinalEncoder()
>>> X = [['male', 'from US', 'uses Safari'], ['female', 'from Europe', 'uses Firefox']]
>>> enc.fit(X)
OrdinalEncoder()
>>> enc.transform([['female', 'from US', 'uses Safari']])
array([[0., 1., 1.]])
Such integer representation can, however, not be used directly with all scikit-learn estimators, as these expect continuous input, and would interpret the categories as being ordered, which is often not desired (i.e. the set of browsers was ordered arbitrarily).

By default, OrdinalEncoder will also passthrough missing values that are indicated by np.nan.

>>>
>>> enc = preprocessing.OrdinalEncoder()
>>> X = [['male'], ['female'], [np.nan], ['female']]
>>> enc.fit_transform(X)
array([[ 1.],
       [ 0.],
       [nan],
       [ 0.]])
OrdinalEncoder provides a parameter encoded_missing_value to encode the missing values without the need to create a pipeline and using SimpleImputer.

>>>
>>> enc = preprocessing.OrdinalEncoder(encoded_missing_value=-1)
>>> X = [['male'], ['female'], [np.nan], ['female']]
>>> enc.fit_transform(X)
array([[ 1.],
       [ 0.],
       [-1.],
       [ 0.]])
The above processing is equivalent to the following pipeline:

>>>
>>> from sklearn.pipeline import Pipeline
>>> from sklearn.impute import SimpleImputer
>>> enc = Pipeline(steps=[
...     ("encoder", preprocessing.OrdinalEncoder()),
...     ("imputer", SimpleImputer(strategy="constant", fill_value=-1)),
... ])
>>> enc.fit_transform(X)
array([[ 1.],
       [ 0.],
       [-1.],
       [ 0.]])
Another possibility to convert categorical features to features that can be used with scikit-learn estimators is to use a one-of-K, also known as one-hot or dummy encoding. This type of encoding can be obtained with the OneHotEncoder, which transforms each categorical feature with n_categories possible values into n_categories binary features, with one of them 1, and all others 0.

Continuing the example above:

>>>
>>> enc = preprocessing.OneHotEncoder()
>>> X = [['male', 'from US', 'uses Safari'], ['female', 'from Europe', 'uses Firefox']]
>>> enc.fit(X)
OneHotEncoder()
>>> enc.transform([['female', 'from US', 'uses Safari'],
...                ['male', 'from Europe', 'uses Safari']]).toarray()
array([[1., 0., 0., 1., 0., 1.],
       [0., 1., 1., 0., 0., 1.]])
By default, the values each feature can take is inferred automatically from the dataset and can be found in the categories_ attribute:

>>>
>>> enc.categories_
[array(['female', 'male'], dtype=object), array(['from Europe', 'from US'], dtype=object), array(['uses Firefox', 'uses Safari'], dtype=object)]
It is possible to specify this explicitly using the parameter categories. There are two genders, four possible continents and four web browsers in our dataset:

>>>
>>> genders = ['female', 'male']
>>> locations = ['from Africa', 'from Asia', 'from Europe', 'from US']
>>> browsers = ['uses Chrome', 'uses Firefox', 'uses IE', 'uses Safari']
>>> enc = preprocessing.OneHotEncoder(categories=[genders, locations, browsers])
>>> Note that for there are missing categorical values for the 2nd and 3rd
>>> feature
>>> X = [['male', 'from US', 'uses Safari'], ['female', 'from Europe', 'uses Firefox']]
>>> enc.fit(X)
OneHotEncoder(categories=[['female', 'male'],
                          ['from Africa', 'from Asia', 'from Europe',
                           'from US'],
                          ['uses Chrome', 'uses Firefox', 'uses IE',
                           'uses Safari']])
>>> enc.transform([['female', 'from Asia', 'uses Chrome']]).toarray()
array([[1., 0., 0., 1., 0., 0., 1., 0., 0., 0.]])
If there is a possibility that the training data might have missing categorical features, it can often be better to specify handle_unknown='infrequent_if_exist' instead of setting the categories manually as above. When handle_unknown='infrequent_if_exist' is specified and unknown categories are encountered during transform, no error will be raised but the resulting one-hot encoded columns for this feature will be all zeros or considered as an infrequent category if enabled. (handle_unknown='infrequent_if_exist' is only supported for one-hot encoding):

>>>
>>> enc = preprocessing.OneHotEncoder(handle_unknown='infrequent_if_exist')
>>> X = [['male', 'from US', 'uses Safari'], ['female', 'from Europe', 'uses Firefox']]
>>> enc.fit(X)
OneHotEncoder(handle_unknown='infrequent_if_exist')
>>> enc.transform([['female', 'from Asia', 'uses Chrome']]).toarray()
array([[1., 0., 0., 0., 0., 0.]])
It is also possible to encode each column into n_categories - 1 columns instead of n_categories columns by using the drop parameter. This parameter allows the user to specify a category for each feature to be dropped. This is useful to avoid co-linearity in the input matrix in some classifiers. Such functionality is useful, for example, when using non-regularized regression (LinearRegression), since co-linearity would cause the covariance matrix to be non-invertible:

>>>
>>> X = [['male', 'from US', 'uses Safari'],
...      ['female', 'from Europe', 'uses Firefox']]
>>> drop_enc = preprocessing.OneHotEncoder(drop='first').fit(X)
>>> drop_enc.categories_
[array(['female', 'male'], dtype=object), array(['from Europe', 'from US'], dtype=object),
 array(['uses Firefox', 'uses Safari'], dtype=object)]
>>> drop_enc.transform(X).toarray()
array([[1., 1., 1.],
       [0., 0., 0.]])
One might want to drop one of the two columns only for features with 2 categories. In this case, you can set the parameter drop='if_binary'.

>>>
>>> X = [['male', 'US', 'Safari'],
...      ['female', 'Europe', 'Firefox'],
...      ['female', 'Asia', 'Chrome']]
>>> drop_enc = preprocessing.OneHotEncoder(drop='if_binary').fit(X)
>>> drop_enc.categories_
[array(['female', 'male'], dtype=object), array(['Asia', 'Europe', 'US'], dtype=object),
 array(['Chrome', 'Firefox', 'Safari'], dtype=object)]
>>> drop_enc.transform(X).toarray()
array([[1., 0., 0., 1., 0., 0., 1.],
       [0., 0., 1., 0., 0., 1., 0.],
       [0., 1., 0., 0., 1., 0., 0.]])
In the transformed X, the first column is the encoding of the feature with categories “male”/”female”, while the remaining 6 columns is the encoding of the 2 features with respectively 3 categories each.

When handle_unknown='ignore' and drop is not None, unknown categories will be encoded as all zeros:

>>>
>>> drop_enc = preprocessing.OneHotEncoder(drop='first',
...                                        handle_unknown='ignore').fit(X)
>>> X_test = [['unknown', 'America', 'IE']]
>>> drop_enc.transform(X_test).toarray()
array([[0., 0., 0., 0., 0.]])
All the categories in X_test are unknown during transform and will be mapped to all zeros. This means that unknown categories will have the same mapping as the dropped category. OneHotEncoder.inverse_transform will map all zeros to the dropped category if a category is dropped and None if a category is not dropped:

>>>
>>> drop_enc = preprocessing.OneHotEncoder(drop='if_binary', sparse_output=False,
...                                        handle_unknown='ignore').fit(X)
>>> X_test = [['unknown', 'America', 'IE']]
>>> X_trans = drop_enc.transform(X_test)
>>> X_trans
array([[0., 0., 0., 0., 0., 0., 0.]])
>>> drop_enc.inverse_transform(X_trans)
array([['female', None, None]], dtype=object)
OneHotEncoder supports categorical features with missing values by considering the missing values as an additional category:

>>>
>>> X = [['male', 'Safari'],
...      ['female', None],
...      [np.nan, 'Firefox']]
>>> enc = preprocessing.OneHotEncoder(handle_unknown='error').fit(X)
>>> enc.categories_
[array(['female', 'male', nan], dtype=object),
 array(['Firefox', 'Safari', None], dtype=object)]
>>> enc.transform(X).toarray()
array([[0., 1., 0., 0., 1., 0.],
       [1., 0., 0., 0., 0., 1.],
       [0., 0., 1., 1., 0., 0.]])
If a feature contains both np.nan and None, they will be considered separate categories:

>>>
>>> X = [['Safari'], [None], [np.nan], ['Firefox']]
>>> enc = preprocessing.OneHotEncoder(handle_unknown='error').fit(X)
>>> enc.categories_
[array(['Firefox', 'Safari', None, nan], dtype=object)]
>>> enc.transform(X).toarray()
array([[0., 1., 0., 0.],
       [0., 0., 1., 0.],
       [0., 0., 0., 1.],
       [1., 0., 0., 0.]])
See Loading features from dicts for categorical features that are represented as a dict, not as scalars.

6.3.4.1. Infrequent categories
OneHotEncoder supports aggregating infrequent categories into a single output for each feature. The parameters to enable the gathering of infrequent categories are min_frequency and max_categories.

min_frequency is either an integer greater or equal to 1, or a float in the interval (0.0, 1.0). If min_frequency is an integer, categories with a cardinality smaller than min_frequency will be considered infrequent. If min_frequency is a float, categories with a cardinality smaller than this fraction of the total number of samples will be considered infrequent. The default value is 1, which means every category is encoded separately.

max_categories is either None or any integer greater than 1. This parameter sets an upper limit to the number of output features for each input feature. max_categories includes the feature that combines infrequent categories.

In the following example, the categories, 'dog', 'snake' are considered infrequent:

>>>
>>> X = np.array([['dog'] * 5 + ['cat'] * 20 + ['rabbit'] * 10 +
...               ['snake'] * 3], dtype=object).T
>>> enc = preprocessing.OneHotEncoder(min_frequency=6, sparse_output=False).fit(X)
>>> enc.infrequent_categories_
[array(['dog', 'snake'], dtype=object)]
>>> enc.transform(np.array([['dog'], ['cat'], ['rabbit'], ['snake']]))
array([[0., 0., 1.],
       [1., 0., 0.],
       [0., 1., 0.],
       [0., 0., 1.]])
By setting handle_unknown to 'infrequent_if_exist', unknown categories will be considered infrequent:

>>>
>>> enc = preprocessing.OneHotEncoder(
...    handle_unknown='infrequent_if_exist', sparse_output=False, min_frequency=6)
>>> enc = enc.fit(X)
>>> enc.transform(np.array([['dragon']]))
array([[0., 0., 1.]])
OneHotEncoder.get_feature_names_out uses ‘infrequent’ as the infrequent feature name:

>>>
>>> enc.get_feature_names_out()
array(['x0_cat', 'x0_rabbit', 'x0_infrequent_sklearn'], dtype=object)
When 'handle_unknown' is set to 'infrequent_if_exist' and an unknown category is encountered in transform:

If infrequent category support was not configured or there was no infrequent category during training, the resulting one-hot encoded columns for this feature will be all zeros. In the inverse transform, an unknown category will be denoted as None.

If there is an infrequent category during training, the unknown category will be considered infrequent. In the inverse transform, ‘infrequent_sklearn’ will be used to represent the infrequent category.

Infrequent categories can also be configured using max_categories. In the following example, we set max_categories=2 to limit the number of features in the output. This will result in all but the 'cat' category to be considered infrequent, leading to two features, one for 'cat' and one for infrequent categories - which are all the others:

>>>
>>> enc = preprocessing.OneHotEncoder(max_categories=2, sparse_output=False)
>>> enc = enc.fit(X)
>>> enc.transform([['dog'], ['cat'], ['rabbit'], ['snake']])
array([[0., 1.],
       [1., 0.],
       [0., 1.],
       [0., 1.]])
If both max_categories and min_frequency are non-default values, then categories are selected based on min_frequency first and max_categories categories are kept. In the following example, min_frequency=4 considers only snake to be infrequent, but max_categories=3, forces dog to also be infrequent:

>>>
>>> enc = preprocessing.OneHotEncoder(min_frequency=4, max_categories=3, sparse_output=False)
>>> enc = enc.fit(X)
>>> enc.transform([['dog'], ['cat'], ['rabbit'], ['snake']])
array([[0., 0., 1.],
       [1., 0., 0.],
       [0., 1., 0.],
       [0., 0., 1.]])
If there are infrequent categories with the same cardinality at the cutoff of max_categories, then then the first max_categories are taken based on lexicon ordering. In the following example, “b”, “c”, and “d”, have the same cardinality and with max_categories=2, “b” and “c” are infrequent because they have a higher lexicon order.

>>>
>>> X = np.asarray([["a"] * 20 + ["b"] * 10 + ["c"] * 10 + ["d"] * 10], dtype=object).T
>>> enc = preprocessing.OneHotEncoder(max_categories=3).fit(X)
>>> enc.infrequent_categories_
[array(['b', 'c'], dtype=object)]
6.3.5. Discretization
Discretization (otherwise known as quantization or binning) provides a way to partition continuous features into discrete values. Certain datasets with continuous features may benefit from discretization, because discretization can transform the dataset of continuous attributes to one with only nominal attributes.

One-hot encoded discretized features can make a model more expressive, while maintaining interpretability. For instance, pre-processing with a discretizer can introduce nonlinearity to linear models. For more advanced possibilities, in particular smooth ones, see Generating polynomial features further below.

6.3.5.1. K-bins discretization
KBinsDiscretizer discretizes features into k bins:

>>>
>>> X = np.array([[ -3., 5., 15 ],
...               [  0., 6., 14 ],
...               [  6., 3., 11 ]])
>>> est = preprocessing.KBinsDiscretizer(n_bins=[3, 2, 2], encode='ordinal').fit(X)
By default the output is one-hot encoded into a sparse matrix (See Encoding categorical features) and this can be configured with the encode parameter. For each feature, the bin edges are computed during fit and together with the number of bins, they will define the intervals. Therefore, for the current example, these intervals are defined as:

feature 1: 

feature 2: 

feature 3: 

Based on these bin intervals, X is transformed as follows:

>>>
>>> est.transform(X)                      
array([[ 0., 1., 1.],
       [ 1., 1., 1.],
       [ 2., 0., 0.]])
The resulting dataset contains ordinal attributes which can be further used in a Pipeline.

Discretization is similar to constructing histograms for continuous data. However, histograms focus on counting features which fall into particular bins, whereas discretization focuses on assigning feature values to these bins.

KBinsDiscretizer implements different binning strategies, which can be selected with the strategy parameter. The ‘uniform’ strategy uses constant-width bins. The ‘quantile’ strategy uses the quantiles values to have equally populated bins in each feature. The ‘kmeans’ strategy defines bins based on a k-means clustering procedure performed on each feature independently.

Be aware that one can specify custom bins by passing a callable defining the discretization strategy to FunctionTransformer. For instance, we can use the Pandas function pandas.cut:

>>>
>>> import pandas as pd
>>> import numpy as np
>>> bins = [0, 1, 13, 20, 60, np.inf]
>>> labels = ['infant', 'kid', 'teen', 'adult', 'senior citizen']
>>> transformer = preprocessing.FunctionTransformer(
...     pd.cut, kw_args={'bins': bins, 'labels': labels, 'retbins': False}
... )
>>> X = np.array([0.2, 2, 15, 25, 97])
>>> transformer.fit_transform(X)
['infant', 'kid', 'teen', 'adult', 'senior citizen']
Categories (5, object): ['infant' < 'kid' < 'teen' < 'adult' < 'senior citizen']
Examples:

Using KBinsDiscretizer to discretize continuous features

Feature discretization

Demonstrating the different strategies of KBinsDiscretizer

6.3.5.2. Feature binarization
Feature binarization is the process of thresholding numerical features to get boolean values. This can be useful for downstream probabilistic estimators that make assumption that the input data is distributed according to a multi-variate Bernoulli distribution. For instance, this is the case for the BernoulliRBM.

It is also common among the text processing community to use binary feature values (probably to simplify the probabilistic reasoning) even if normalized counts (a.k.a. term frequencies) or TF-IDF valued features often perform slightly better in practice.

As for the Normalizer, the utility class Binarizer is meant to be used in the early stages of Pipeline. The fit method does nothing as each sample is treated independently of others:

>>>
>>> X = [[ 1., -1.,  2.],
...      [ 2.,  0.,  0.],
...      [ 0.,  1., -1.]]

>>> binarizer = preprocessing.Binarizer().fit(X)  # fit does nothing
>>> binarizer
Binarizer()

>>> binarizer.transform(X)Classification
array([[1., 0., 1.],
       [1., 0., 0.],
       [0., 1., 0.]])
It is possible to adjust the threshold of the binarizer:
Classification
>>>
>>> binarizer = preprocessing.Binarizer(threshold=1.1)
>>> binarizer.transform(X)
array([[0., 0., 1.],
       [1., 0., 0.],
       [0., 0., 0.]])
As for the Normalizer class, the preprocessing module provides a companion function binarize to be used when the transformer API is not necessary.

Note that the Binarizer is similar to the KBinsDiscretizer when k = 2, and when the bin edge is at the value threshold.

Sparse input

binarize and Binarizer accept both dense array-like and sparse matrices from scipy.sparse as input.

For sparse input the data is converted to the Compressed Sparse Rows representation (see scipy.sparse.csr_matrix). To avoid unnecessary memory copies, it is recommended to choose the CSR representation upstream.

6.3.6. Imputation of missing values
Tools for imputing missing values are discussed at Imputation of missing values.

6.3.7. Generating polynomial features
Often it’s useful to add complexity to a model by considering nonlinear features of the input data. We show two possibilities that are both based on polynomials: The first one uses pure polynomials, the second one uses splines, i.e. piecewise polynomials.

6.3.7.1. Polynomial features
A simple and common method to use is polynomial features, which can get features’ high-order and interaction terms. It is implemented in PolynomialFeatures:

>>>
>>> import numpy as np
>>> from sklearn.preprocessing import PolynomialFeatures
>>> X = np.arange(6).reshape(3, 2)
>>> X
array([[0, 1],
       [2, 3],
       [4, 5]])
>>> poly = PolynomialFeatures(2)
>>> poly.fit_transform(X)
array([[ 1.,  0.,  1.,  0.,  0.,  1.],
       [ 1.,  2.,  3.,  4.,  6.,  9.],
       [ 1.,  4.,  5., 16., 20., 25.]])
The features of X have been transformed from 
 to 
.

In some cases, only interaction terms among features are required, and it can be gotten with the setting interaction_only=True:

>>>
>>> X = np.arange(9).reshape(3, 3)
>>> X
array([[0, 1, 2],
       [3, 4, 5],
       [6, 7, 8]])
>>> poly = PolynomialFeatures(degree=3, interaction_only=True)
>>> poly.fit_transform(X)
array([[  1.,   0.,   1.,   2.,   0.,   0.,   2.,   0.],
       [  1.,   3.,   4.,   5.,  12.,  15.,  20.,  60.],
       [  1.,   6.,   7.,   8.,  42.,  48.,  56., 336.]])
The features of X have been transformed from 
 to 
.

Note that polynomial features are used implicitly in kernel methods (e.g., SVC, KernelPCA) when using polynomial Kernel functions.

See Polynomial and Spline interpolation for Ridge regression using created polynomial features.

6.3.7.2. Spline transformer
Another way to add nonlinear terms instead of pure polynomials of features is to generate spline basis functions for each feature with the SplineTransformer. Splines are piecewise polynomials, parametrized by their polynomial degree and the positions of the knots. The SplineTransformer implements a B-spline basis, cf. the references below.

Note The SplineTransformer treats each feature separately, i.e. it won’t give you interaction terms.
Some of the advantages of splines over polynomials are:

B-splines are very flexible and robust if you keep a fixed low degree, usually 3, and parsimoniously adapt the number of knots. Polynomials would need a higher degree, which leads to the next point.

B-splines do not have oscillatory behaviour at the boundaries as have polynomials (the higher the degree, the worse). This is known as Runge’s phenomenon.

B-splines provide good options for extrapolation beyond the boundaries, i.e. beyond the range of fitted values. Have a look at the option extrapolation.

B-splines generate a feature matrix with a banded structure. For a single feature, every row contains only degree + 1 non-zero elements, which occur consecutively and are even positive. This results in a matrix with good numerical properties, e.g. a low condition number, in sharp contrast to a matrix of polynomials, which goes under the name Vandermonde matrix. A low condition number is important for stable algorithms of linear models.

The following code snippet shows splines in action:

>>>
>>> import numpy as np
>>> from sklearn.preprocessing import SplineTransformer
>>> X = np.arange(5).reshape(5, 1)
>>> X
array([[0],
       [1],
       [2],
       [3],
       [4]])
>>> spline = SplineTransformer(degree=2, n_knots=3)
>>> spline.fit_transform(X)
array([[0.5  , 0.5  , 0.   , 0.   ],
       [0.125, 0.75 , 0.125, 0.   ],
       [0.   , 0.5  , 0.5  , 0.   ],
       [0.   , 0.125, 0.75 , 0.125],
       [0.   , 0.   , 0.5  , 0.5  ]])
As the X is sorted, one can easily see the banded matrix output. Only the three middle diagonals are non-zero for degree=2. The higher the degree, the more overlapping of the splines.

Interestingly, a SplineTransformer of degree=0 is the same as KBinsDiscretizer with encode='onehot-dense' and n_bins = n_knots - 1 if knots = strategy.

Examples:

Polynomial and Spline interpolation

Time-related feature engineering

References:

Eilers, P., & Marx, B. (1996). Flexible Smoothing with B-splines and Penalties. Statist. Sci. 11 (1996), no. 2, 89–121.

Perperoglou, A., Sauerbrei, W., Abrahamowicz, M. et al. A review of spline function procedures in R. BMC Med Res Methodol 19, 46 (2019).

6.3.8. Custom transformers
Often, you will want to convert an existing Python function into a transformer to assist in data cleaning or processing. You can implement a transformer from an arbitrary function with FunctionTransformer. For example, to build a transformer that applies a log transformation in a pipeline, do:

>>>
>>> import numpy as np
>>> from sklearn.preprocessing import FunctionTransformer
>>> transformer = FunctionTransformer(np.log1p, validate=True)
>>> X = np.array([[0, 1], [2, 3]])
>>> Since FunctionTransformer is no-op during fit, we can call transform directly
>>> transformer.transform(X)
array([[0.        , 0.69314718],
       [1.09861229, 1.38629436]])
You can ensure that func and inverse_func are the inverse of each other by setting check_inverse=True and calling fit before transform. Please note that a warning is raised and can be turned into an error with a filterwarnings:

>>>
>>> import warnings
>>> warnings.filterwarnings("error", message=".*check_inverse*.",
...                         category=UserWarning, append=False)
For a full code example that demonstrates using a FunctionTransformer to extract features from text data see Column Transformer with Heterogeneous Data Sources and Time-related feature engineering.

### Demos

#### Release Highlights(发布热点)

> These examples illustrate the main features of the releases of scikit-learn.

Release Highlights for scikit-learn 1.2
Release Highlights for scikit-learn 1.2
Release Highlights for scikit-learn 1.1
Release Highlights for scikit-learn 1.1
Release Highlights for scikit-learn 1.0
Release Highlights for scikit-learn 1.0
Release Highlights for scikit-learn 0.24
Release Highlights for scikit-learn 0.24
Release Highlights for scikit-learn 0.23
Release Highlights for scikit-learn 0.23
Release Highlights for scikit-learn 0.22
Release Highlights for scikit-learn 0.22

#### Biclustering(双聚类分析)

> Examples concerning the sklearn.cluster.bicluster module.

A demo of the Spectral Biclustering algorithm
A demo of the Spectral Biclustering algorithm
A demo of the Spectral Co-Clustering algorithm
A demo of the Spectral Co-Clustering algorithm
Biclustering documents with the Spectral Co-clustering algorithm
Biclustering documents with the Spectral Co-clustering algorithm

#### Calibration(校准)

> Examples illustrating the calibration of predicted probabilities of classifiers.

Comparison of Calibration of Classifiers
Comparison of Calibration of Classifiers
Probability Calibration curves
Probability Calibration curves
Probability Calibration for 3-class classification
Probability Calibration for 3-class classification
Probability calibration of classifiers
Probability calibration of classifiers

#### Classification(分类)

> General examples about classification algorithms.

Classifier comparison
Classifier comparison
Linear and Quadratic Discriminant Analysis with covariance ellipsoid
Linear and Quadratic Discriminant Analysis with covariance ellipsoid
Normal, Ledoit-Wolf and OAS Linear Discriminant Analysis for classification
Normal, Ledoit-Wolf and OAS Linear Discriminant Analysis for classification
Plot classification probability
Plot classification probability
Recognizing hand-written digits
Recognizing hand-written digits

#### Clustering(聚类分析)

> Examples concerning the sklearn.cluster module.

A demo of K-Means clustering on the handwritten digits data
A demo of K-Means clustering on the handwritten digits data
A demo of structured Ward hierarchical clustering on an image of coins
A demo of structured Ward hierarchical clustering on an image of coins
A demo of the mean-shift clustering algorithm
A demo of the mean-shift clustering algorithm
Adjustment for chance in clustering performance evaluation
Adjustment for chance in clustering performance evaluation
Agglomerative clustering with and without structure
Agglomerative clustering with and without structure
Agglomerative clustering with different metrics
Agglomerative clustering with different metrics
An example of K-Means++ initialization
An example of K-Means++ initialization
Bisecting K-Means and Regular K-Means Performance Comparison
Bisecting K-Means and Regular K-Means Performance Comparison
Color Quantization using K-Means
Color Quantization using K-Means
Compare BIRCH and MiniBatchKMeans
Compare BIRCH and MiniBatchKMeans
Comparing different clustering algorithms on toy datasets
Comparing different clustering algorithms on toy datasets
Comparing different hierarchical linkage methods on toy datasets
Comparing different hierarchical linkage methods on toy datasets
Comparison of the K-Means and MiniBatchKMeans clustering algorithms
Comparison of the K-Means and MiniBatchKMeans clustering algorithms
Demo of DBSCAN clustering algorithm
Demo of DBSCAN clustering algorithm
Demo of OPTICS clustering algorithm
Demo of OPTICS clustering algorithm
Demo of affinity propagation clustering algorithm
Demo of affinity propagation clustering algorithm
Demonstration of k-means assumptions
Demonstration of k-means assumptions
Empirical evaluation of the impact of k-means initialization
Empirical evaluation of the impact of k-means initialization
Feature agglomeration
Feature agglomeration
Feature agglomeration vs. univariate selection
Feature agglomeration vs. univariate selection
Hierarchical clustering: structured vs unstructured ward
Hierarchical clustering: structured vs unstructured ward
Inductive Clustering
Inductive Clustering
K-means Clustering
K-means Clustering
Online learning of a dictionary of parts of faces
Online learning of a dictionary of parts of faces
Plot Hierarchical Clustering Dendrogram
Plot Hierarchical Clustering Dendrogram
Segmenting the picture of greek coins in regions
Segmenting the picture of greek coins in regions
Selecting the number of clusters with silhouette analysis on KMeans clustering
Selecting the number of clusters with silhouette analysis on KMeans clustering
Spectral clustering for image segmentation
Spectral clustering for image segmentation
Various Agglomerative Clustering on a 2D embedding of digits
Various Agglomerative Clustering on a 2D embedding of digits
Vector Quantization Example
Vector Quantization Example

#### Covariance estimation(协方差估计)

> Examples concerning the sklearn.covariance module.

Ledoit-Wolf vs OAS estimation
Ledoit-Wolf vs OAS estimation
Robust covariance estimation and Mahalanobis distances relevance
Robust covariance estimation and Mahalanobis distances relevance
Robust vs Empirical covariance estimate
Robust vs Empirical covariance estimate
Shrinkage covariance estimation: LedoitWolf vs OAS and max-likelihood
Shrinkage covariance estimation: LedoitWolf vs OAS and max-likelihood
Sparse inverse covariance estimation
Sparse inverse covariance estimation

#### Cross decomposition(交叉分解)

> Examples concerning the sklearn.cross_decomposition module.

Compare cross decomposition methods
Compare cross decomposition methods
Principal Component Regression vs Partial Least Squares Regression
Principal Component Regression vs Partial Least Squares Regression

#### Dataset examples(数据集示例)

> Examples concerning the sklearn.datasets module.

Plot randomly generated classification dataset
Plot randomly generated classification dataset
Plot randomly generated multilabel dataset
Plot randomly generated multilabel dataset
The Digit Dataset
The Digit Dataset
The Iris Dataset
The Iris Dataset

#### Decision Trees(决策树)

> Examples concerning the sklearn.tree module.

Decision Tree Regression
Decision Tree Regression
Multi-output Decision Tree Regression
Multi-output Decision Tree Regression
Plot the decision surface of decision trees trained on the iris dataset
Plot the decision surface of decision trees trained on the iris dataset
Post pruning decision trees with cost complexity pruning
Post pruning decision trees with cost complexity pruning
Understanding the decision tree structure
Understanding the decision tree structure

#### Decomposition(分解)

> Examples concerning the sklearn.decomposition module.

Beta-divergence loss functions
Beta-divergence loss functions
Blind source separation using FastICA
Blind source separation using FastICA
Comparison of LDA and PCA 2D projection of Iris dataset
Comparison of LDA and PCA 2D projection of Iris dataset
Faces dataset decompositions
Faces dataset decompositions
Factor Analysis (with rotation) to visualize patterns
Factor Analysis (with rotation) to visualize patterns
FastICA on 2D point clouds
FastICA on 2D point clouds
Image denoising using dictionary learning
Image denoising using dictionary learning
Incremental PCA
Incremental PCA
Kernel PCA
Kernel PCA
Model selection with Probabilistic PCA and Factor Analysis (FA)
Model selection with Probabilistic PCA and Factor Analysis (FA)
PCA example with Iris Data-set
PCA example with Iris Data-set
Principal components analysis (PCA)
Principal components analysis (PCA)
Sparse coding with a precomputed dictionary
Sparse coding with a precomputed dictionary

#### Ensemble methods(集成方法)

> Examples concerning the sklearn.ensemble module.

Categorical Feature Support in Gradient Boosting
Categorical Feature Support in Gradient Boosting
Combine predictors using stacking
Combine predictors using stacking
Comparing random forests and the multi-output meta estimator
Comparing random forests and the multi-output meta estimator
Decision Tree Regression with AdaBoost
Decision Tree Regression with AdaBoost
Discrete versus Real AdaBoost
Discrete versus Real AdaBoost
Early stopping of Gradient Boosting
Early stopping of Gradient Boosting
Feature importances with a forest of trees
Feature importances with a forest of trees
Feature transformations with ensembles of trees
Feature transformations with ensembles of trees
Gradient Boosting Out-of-Bag estimates
Gradient Boosting Out-of-Bag estimates
Gradient Boosting regression
Gradient Boosting regression
Gradient Boosting regularization
Gradient Boosting regularization
Hashing feature transformation using Totally Random Trees
Hashing feature transformation using Totally Random Trees
IsolationForest example
IsolationForest example
Monotonic Constraints
Monotonic Constraints
Multi-class AdaBoosted Decision Trees
Multi-class AdaBoosted Decision Trees
OOB Errors for Random Forests
OOB Errors for Random Forests
Pixel importances with a parallel forest of trees
Pixel importances with a parallel forest of trees
Plot class probabilities calculated by the VotingClassifier
Plot class probabilities calculated by the VotingClassifier
Plot individual and voting regression predictions
Plot individual and voting regression predictions
Plot the decision boundaries of a VotingClassifier
Plot the decision boundaries of a VotingClassifier
Plot the decision surfaces of ensembles of trees on the iris dataset
Plot the decision surfaces of ensembles of trees on the iris dataset
Prediction Intervals for Gradient Boosting Regression
Prediction Intervals for Gradient Boosting Regression
Single estimator versus bagging: bias-variance decomposition
Single estimator versus bagging: bias-variance decomposition
Two-class AdaBoost

#### Two-class AdaBoost(二分法)

> Examples based on real world datasets
Applications to real world problems with some medium sized datasets or interactive user interface.

Compressive sensing: tomography reconstruction with L1 prior (Lasso)
Compressive sensing: tomography reconstruction with L1 prior (Lasso)
Faces recognition example using eigenfaces and SVMs
Faces recognition example using eigenfaces and SVMs
Image denoising using kernel PCA
Image denoising using kernel PCA
Libsvm GUI
Libsvm GUI
Model Complexity Influence
Model Complexity Influence
Out-of-core classification of text documents
Out-of-core classification of text documents
Outlier detection on a real data set
Outlier detection on a real data set
Prediction Latency
Prediction Latency
Species distribution modeling
Species distribution modeling
Time-related feature engineering
Time-related feature engineering
Topic extraction with Non-negative Matrix Factorization and Latent Dirichlet Allocation
Topic extraction with Non-negative Matrix Factorization and Latent Dirichlet Allocation
Visualizing the stock market structure
Visualizing the stock market structure
Wikipedia principal eigenvector
Wikipedia principal eigenvector

#### Feature Selection(功能选择)

> Examples concerning the sklearn.feature_selection module.

Comparison of F-test and mutual information
Comparison of F-test and mutual information
Model-based and sequential feature selection
Model-based and sequential feature selection
Pipeline ANOVA SVM
Pipeline ANOVA SVM
Recursive feature elimination
Recursive feature elimination
Recursive feature elimination with cross-validation
Recursive feature elimination with cross-validation
Univariate Feature Selection
Univariate Feature Selection

#### Gaussian Mixture Models(高斯混合模型)

> Examples concerning the sklearn.mixture module.

Concentration Prior Type Analysis of Variation Bayesian Gaussian Mixture
Concentration Prior Type Analysis of Variation Bayesian Gaussian Mixture
Density Estimation for a Gaussian mixture
Density Estimation for a Gaussian mixture
GMM Initialization Methods
GMM Initialization Methods
GMM covariances
GMM covariances
Gaussian Mixture Model Ellipsoids
Gaussian Mixture Model Ellipsoids
Gaussian Mixture Model Selection
Gaussian Mixture Model Selection
Gaussian Mixture Model Sine Curve
Gaussian Mixture Model Sine Curve

#### Gaussian Process for Machine Learning(机器学习的高斯过程)

> Examples concerning the sklearn.gaussian_process module.

Comparison of kernel ridge and Gaussian process regression
Comparison of kernel ridge and Gaussian process regression
Gaussian Processes regression: basic introductory example
Gaussian Processes regression: basic introductory example
Gaussian process classification (GPC) on iris dataset
Gaussian process classification (GPC) on iris dataset
Gaussian process regression (GPR) on Mauna Loa CO2 data
Gaussian process regression (GPR) on Mauna Loa CO2 data
Gaussian process regression (GPR) with noise-level estimation
Gaussian process regression (GPR) with noise-level estimation
Gaussian processes on discrete data structures
Gaussian processes on discrete data structures
Illustration of Gaussian process classification (GPC) on the XOR dataset
Illustration of Gaussian process classification (GPC) on the XOR dataset
Illustration of prior and posterior Gaussian process for different kernels
Illustration of prior and posterior Gaussian process for different kernels
Iso-probability lines for Gaussian Processes classification (GPC)
Iso-probability lines for Gaussian Processes classification (GPC)
Probabilistic predictions with Gaussian process classification (GPC)
Probabilistic predictions with Gaussian process classification (GPC)

#### Generalized Linear Models(广义线性模型)

> Examples concerning the sklearn.linear_model module.

Comparing Linear Bayesian Regressors
Comparing Linear Bayesian Regressors
Comparing various online solvers
Comparing various online solvers
Curve Fitting with Bayesian Ridge Regression
Curve Fitting with Bayesian Ridge Regression
Early stopping of Stochastic Gradient Descent
Early stopping of Stochastic Gradient Descent
Fitting an Elastic Net with a precomputed Gram Matrix and Weighted Samples
Fitting an Elastic Net with a precomputed Gram Matrix and Weighted Samples
HuberRegressor vs Ridge on dataset with strong outliers
HuberRegressor vs Ridge on dataset with strong outliers
Joint feature selection with multi-task Lasso
Joint feature selection with multi-task Lasso
L1 Penalty and Sparsity in Logistic Regression
L1 Penalty and Sparsity in Logistic Regression
Lasso and Elastic Net
Lasso and Elastic Net
Lasso and Elastic Net for Sparse Signals
Lasso and Elastic Net for Sparse Signals
Lasso model selection via information criteria
Lasso model selection via information criteria
Lasso model selection: AIC-BIC / cross-validation
Lasso model selection: AIC-BIC / cross-validation
Lasso on dense and sparse data
Lasso on dense and sparse data
Lasso path using LARS
Lasso path using LARS
Linear Regression Example
Linear Regression Example
Logistic Regression 3-class Classifier
Logistic Regression 3-class Classifier
Logistic function
Logistic function
MNIST classification using multinomial logistic + L1
MNIST classification using multinomial logistic + L1
Multiclass sparse logistic regression on 20newgroups
Multiclass sparse logistic regression on 20newgroups
Non-negative least squares
Non-negative least squares
One-Class SVM versus One-Class SVM using Stochastic Gradient Descent
One-Class SVM versus One-Class SVM using Stochastic Gradient Descent
Ordinary Least Squares and Ridge Regression Variance
Ordinary Least Squares and Ridge Regression Variance
Orthogonal Matching Pursuit
Orthogonal Matching Pursuit
Plot Ridge coefficients as a function of the L2 regularization
Plot Ridge coefficients as a function of the L2 regularization
Plot Ridge coefficients as a function of the regularization
Plot Ridge coefficients as a function of the regularization
Plot multi-class SGD on the iris dataset
Plot multi-class SGD on the iris dataset
Plot multinomial and One-vs-Rest Logistic Regression
Plot multinomial and One-vs-Rest Logistic Regression
Poisson regression and non-normal loss
Poisson regression and non-normal loss
Polynomial and Spline interpolation
Polynomial and Spline interpolation
Quantile regression
Quantile regression
Regularization path of L1- Logistic Regression
Regularization path of L1- Logistic Regression
Robust linear estimator fitting
Robust linear estimator fitting
Robust linear model estimation using RANSAC
Robust linear model estimation using RANSAC
SGD: Maximum margin separating hyperplane
SGD: Maximum margin separating hyperplane
SGD: Penalties
SGD: Penalties
SGD: Weighted samples
SGD: Weighted samples
SGD: convex loss functions
SGD: convex loss functions
Sparsity Example: Fitting only features 1  and 2
Sparsity Example: Fitting only features 1 and 2
Theil-Sen Regression
Theil-Sen Regression
Tweedie regression on insurance claims
Tweedie regression on insurance claims

#### Inspection(检查)

> Examples related to the sklearn.inspection module.

Common pitfalls in the interpretation of coefficients of linear models
Common pitfalls in the interpretation of coefficients of linear models
Failure of Machine Learning to infer causal effects
Failure of Machine Learning to infer causal effects
Partial Dependence and Individual Conditional Expectation Plots
Partial Dependence and Individual Conditional Expectation Plots
Permutation Importance vs Random Forest Feature Importance (MDI)
Permutation Importance vs Random Forest Feature Importance (MDI)
Permutation Importance with Multicollinear or Correlated Features
Permutation Importance with Multicollinear or Correlated Features

#### Kernel Approximation（核近似，核逼近）

Examples concerning the sklearn.kernel_approximation module.

Scalable learning with polynomial kernel approximation
Scalable learning with polynomial kernel approximation

#### Manifold learning(流形学习)

> Examples concerning the sklearn.manifold module.

Comparison of Manifold Learning methods
Comparison of Manifold Learning methods
Manifold Learning methods on a severed sphere
Manifold Learning methods on a severed sphere
Manifold learning on handwritten digits: Locally Linear Embedding, Isomap...
Manifold learning on handwritten digits: Locally Linear Embedding, Isomap...
Multi-dimensional scaling
Multi-dimensional scaling
Swiss Roll And Swiss-Hole Reduction
Swiss Roll And Swiss-Hole Reduction
t-SNE: The effect of various perplexity values on the shape
t-SNE: The effect of various perplexity values on the shape

#### Miscellaneous(杂项)

> Miscellaneous and introductory examples for scikit-learn.

Advanced Plotting With Partial Dependence
Advanced Plotting With Partial Dependence
Comparing anomaly detection algorithms for outlier detection on toy datasets
Comparing anomaly detection algorithms for outlier detection on toy datasets
Comparison of kernel ridge regression and SVR
Comparison of kernel ridge regression and SVR
Displaying Pipelines
Displaying Pipelines
Displaying estimators and complex pipelines
Displaying estimators and complex pipelines
Evaluation of outlier detection estimators
Evaluation of outlier detection estimators
Explicit feature map approximation for RBF kernels
Explicit feature map approximation for RBF kernels
Face completion with a multi-output estimators
Face completion with a multi-output estimators
Introducing the `set_output` API
Introducing the `set_output` API
Isotonic Regression
Isotonic Regression
Multilabel classification
Multilabel classification
ROC Curve with Visualization API
ROC Curve with Visualization API
The Johnson-Lindenstrauss bound for embedding with random projections
The Johnson-Lindenstrauss bound for embedding with random projections
Visualizations with Display Objects
Visualizations with Display Objects

#### Missing Value Imputation(缺失值插补)

> Examples concerning the sklearn.impute module.

Imputing missing values before building an estimator
Imputing missing values before building an estimator
Imputing missing values with variants of IterativeImputer
Imputing missing values with variants of IterativeImputer

#### Model Selection(模型选择)

> Examples related to the sklearn.model_selection module.

Balance model complexity and cross-validated score
Balance model complexity and cross-validated score
Class Likelihood Ratios to measure classification performance
Class Likelihood Ratios to measure classification performance
Comparing randomized search and grid search for hyperparameter estimation
Comparing randomized search and grid search for hyperparameter estimation
Comparison between grid search and successive halving
Comparison between grid search and successive halving
Confusion matrix
Confusion matrix
Custom refit strategy of a grid search with cross-validation
Custom refit strategy of a grid search with cross-validation
Demonstration of multi-metric evaluation on cross_val_score and GridSearchCV
Demonstration of multi-metric evaluation on cross_val_score and GridSearchCV
Detection error tradeoff (DET) curve
Detection error tradeoff (DET) curve
Multiclass Receiver Operating Characteristic (ROC)
Multiclass Receiver Operating Characteristic (ROC)
Nested versus non-nested cross-validation
Nested versus non-nested cross-validation
Plotting Cross-Validated Predictions
Plotting Cross-Validated Predictions
Plotting Learning Curves and Checking Models' Scalability
Plotting Learning Curves and Checking Models' Scalability
Plotting Validation Curves
Plotting Validation Curves
Precision-Recall
Precision-Recall
Receiver Operating Characteristic (ROC) with cross validation
Receiver Operating Characteristic (ROC) with cross validation
Sample pipeline for text feature extraction and evaluation
Sample pipeline for text feature extraction and evaluation
Statistical comparison of models using grid search
Statistical comparison of models using grid search
Successive Halving Iterations
Successive Halving Iterations
Test with permutations the significance of a classification score
Test with permutations the significance of a classification score
Train error vs Test error
Train error vs Test error
Underfitting vs. Overfitting
Underfitting vs. Overfitting
Visualizing cross-validation behavior in scikit-learn
Visualizing cross-validation behavior in scikit-learn

#### Multioutput methods(多输出方法)

> Examples concerning the sklearn.multioutput module.

Classifier Chain
Classifier Chain

#### Nearest Neighbors(最近邻学习)

> Examples concerning the sklearn.neighbors module.

Approximate nearest neighbors in TSNE
Approximate nearest neighbors in TSNE
Caching nearest neighbors
Caching nearest neighbors
Comparing Nearest Neighbors with and without Neighborhood Components Analysis
Comparing Nearest Neighbors with and without Neighborhood Components Analysis
Dimensionality Reduction with Neighborhood Components Analysis
Dimensionality Reduction with Neighborhood Components Analysis
Kernel Density Estimate of Species Distributions
Kernel Density Estimate of Species Distributions
Kernel Density Estimation
Kernel Density Estimation
Nearest Centroid Classification
Nearest Centroid Classification
Nearest Neighbors Classification
Nearest Neighbors Classification
Nearest Neighbors regression
Nearest Neighbors regression
Neighborhood Components Analysis Illustration
Neighborhood Components Analysis Illustration
Novelty detection with Local Outlier Factor (LOF)
Novelty detection with Local Outlier Factor (LOF)
Outlier detection with Local Outlier Factor (LOF)
Outlier detection with Local Outlier Factor (LOF)
Simple 1D Kernel Density Estimation
Simple 1D Kernel Density Estimation

#### Neural Networks(神经网络)

> Examples concerning the sklearn.neural_network module.

Compare Stochastic learning strategies for MLPClassifier
Compare Stochastic learning strategies for MLPClassifier
Restricted Boltzmann Machine features for digit classification
Restricted Boltzmann Machine features for digit classification
Varying regularization in Multi-layer Perceptron
Varying regularization in Multi-layer Perceptron
Visualization of MLP weights on MNIST
Visualization of MLP weights on MNIST

#### Pipelines and composite estimators(管道和复合估计器)

> Examples of how to compose transformers and pipelines from other estimators. See the User Guide.

Column Transformer with Heterogeneous Data Sources
Column Transformer with Heterogeneous Data Sources
Column Transformer with Mixed Types
Column Transformer with Mixed Types
Concatenating multiple feature extraction methods
Concatenating multiple feature extraction methods
Effect of transforming the targets in regression model
Effect of transforming the targets in regression model
Pipelining: chaining a PCA and a logistic regression
Pipelining: chaining a PCA and a logistic regression
Selecting dimensionality reduction with Pipeline and GridSearchCV
Selecting dimensionality reduction with Pipeline and GridSearchCV

#### Preprocessing(预处理)

> Examples concerning the sklearn.preprocessing module.

Compare the effect of different scalers on data with outliers
Compare the effect of different scalers on data with outliers
Demonstrating the different strategies of KBinsDiscretizer
Demonstrating the different strategies of KBinsDiscretizer
Feature discretization
Feature discretization
Importance of Feature Scaling
Importance of Feature Scaling
Map data to a normal distribution
Map data to a normal distribution
Using KBinsDiscretizer to discretize continuous features
Using KBinsDiscretizer to discretize continuous features

#### Semi Supervised Classification(半监督分类)

> 半监督学习(Semi-Supervised Learning，SSL)是模式识别和机器学习领域研究的重点问题，是监督学习与无监督学习相结合的一种学习方法。半监督学习使用大量的未标记数据，以及同时使用标记数据，来进行模式识别工作。当使用半监督学习时，将会要求尽量少的人员来从事工作，同时，又能够带来比较高的准确性，因此，半监督学习正越来越受到人们的重视。

> 半监督学习的基本设置是给定一个来自某未知分布的有标记示例集L={(x1, y1), (x2, y2), ..., (x |L|,y|L|)}以及一个未标记示例集U = {x1’, x2’, ... , x |U|’},期望学得函数f: X→Y可以准确地对示例x 预测其标记y。这里xi, xj’ ∈X 均为d维向量,yi∈Y为示例xi的标记,|L|和|U|分别为L和U的大小,即它们所包含的示例数。 

> 半监督学习的基本思想是利用数据分布上的模型假设建立学习器对未标签样例进行标签。它的形式化描述是给定一个来自某未知分布的样例集S=LU,其中L是已标签样例集L={(x1,y1),(x2,y2),,,(x|L|,y|L|)},U是一个未标签样例集U={xc1,xc2,,,xc|U|},希望得到函数f:XyY可以准确地对样例x预测其标签y。其中xi,xc1均为d维向量，ytIY为样例xi的标签，|L|和|U|分别为L和U的大小，即所包含的样例数，半监督学习就是在样例集S上寻找最优的学习器。如果S=L，那么问题就转化为传统的有监督学习；反之,如果S=U,那么问题是转化为传统的无监督学习。如何综合利用已标签样例和未标签样例,是半监督学习需要解决的问题。

> 在半监督学习中有三个常用的基本假设来建立预测样例和学习目标之间的关系，有以下三个：

> > （1）平滑假设(Smoothness Assumption)：位于稠密数据区域的两个距离很近的样例的类标签相似，也就是说，当两个样例被稠密数据区域中的边连接时，它们在很大的概率下有相同的类标签；相反地，当两个样例被稀疏数据区域分开时，它们的类标签趋于不同。

> > （2）聚类假设(Cluster Assumption)：当两个样例位于同一聚类簇时，它们在很大的概率下有相同的类标签。这个假设的等价定义为低密度分离假设(Low Sensity Separation Assumption)，即分类决策边界应该穿过稀疏数据区域，而避免将稠密数据区域的样例分到决策边界两侧。
聚类假设是指样本数据间的距离相互比较近时，则他们拥有相同的类别。根据该假设，分类边界就必须尽可能地通过数据较为稀疏的地方，以能够避免把密集的样本数据点分到分类边界的两侧。在这一假设的前提下，学习算法就可以利用大量未标记的样本数据来分析样本空间中样本数据分布情况，从而指导学习算法对分类边界进行调整，使其尽量通过样本数据布局比较稀疏的区域。例如，Joachims提出的转导支持向量机算法，在训练过程中，算法不断修改分类超平面并交换超平面两侧某些未标记的样本数据的标记，使得分类边界在所有训练数据上最大化间隔，从而能够获得一个通过数据相对稀疏的区域，又尽可能正确划分所有有标记的样本数据的分类超平面。

> > （3）流形假设(Manifold Assumption)：将高维数据嵌入到低维流形中，当两个样例位于低维流形中的一个小局部邻域内时，它们具有相似的类标签。

> Examples concerning the sklearn.semi_supervised module.

Decision boundary of semi-supervised classifiers versus SVM on the Iris dataset
Decision boundary of semi-supervised classifiers versus SVM on the Iris dataset
Effect of varying threshold for self-training
Effect of varying threshold for self-training
Label Propagation digits active learning
Label Propagation digits active learning
Label Propagation digits: Demonstrating performance
Label Propagation digits: Demonstrating performance
Label Propagation learning a complex structure
Label Propagation learning a complex structure
Semi-supervised Classification on a Text Dataset
Semi-supervised Classification on a Text Dataset

#### Support Vector Machines(支持向量机)

> Examples concerning the sklearn.svm module.

> > Non-linear SVM

> > One-class SVM with non-linear kernel (RBF)

> > Plot different SVM classifiers in the iris dataset

> > Plot the support vectors in LinearSVC

> > RBF SVM parameters

> > SVM Margins Example

> > SVM Tie Breaking Example

> > SVM with custom kernel

> > SVM-Anova: SVM with univariate feature selection

> > SVM-Kernels

> > SVM: Maximum margin separating hyperplane

> > SVM: Separating hyperplane for unbalanced classes

> > SVM: Weighted samples

> > Scaling the regularization parameter for SVCs

> > Support Vector Regression (SVR) using linear and non-linear kernels

#### Tutorial exercises(教程练习)

> Exercises for the tutorials

> > Cross-validation on Digits Dataset Exercise

> > Cross-validation on diabetes Dataset Exercise

> > Digits Classification Exercise

> > SVM Exercise

#### Working with text documents(使用文本文档)

> Examples concerning the sklearn.feature_extraction.text module.

Classification of text documents using sparse features
Classification of text documents using sparse features
Clustering text documents using k-means
Clustering text documents using k-means
FeatureHasher and DictVectorizer Comparison
FeatureHasher and DictVectorizer Comparison

## PyTorch 库

## SynapseML（Microsoft）

## 主流机器学习类库介绍

1. TensorFlow

TensorFlow 的官网地址为 https://www.tensorflow.org/。

TensorFlow 逐渐成为最流行的深度学习框架，目前在 GitHub 中已经有 1500 多个与深度学习相关的包中提到了 TensorFlow，而其中只有 5 个是谷歌公司官方提供的，可想而知它的应用是多么广泛。

TensorFlow 在很大程度上推动了深度学习的发展，并成为这个行业的标准，目前可以说是深度学习的代名词了。

TensorFlow 支持 Python 和 C++，也允许使用 CPU 和 GPU 进行计算。

TensorFlow 是一个非常全面的框架，基本可以满足我们对深度学习的所有需求。但是，它的缺点是非常底层，使用 TensorFlow 需要编写大量的代码，而如果我们不想什么事都自己手动去写，就可以使用更简单、更高层的包——比如 Keras。

2. Caffe

从名字来看 Caffe（Convolutional Architecture for Fast Feature Embedding，卷积神经网络框架）就是一个专注于视觉领域的框架。

实际上，Caffe 可以算得上是老牌框架了，在计算机视觉系统的工具上，Caffe 是无可争议的领导者。但是 Caffe 的文档不够友好，安装的过程也是痛点，因为要求大量的依赖包，总的来说并不是一个适合深度学习入门者上手使用的框架。

3. MXNet

MXNet 诞生于分布式机器学习社区（DMLC），这个包是亚马逊公司选择的深度学习库，业界对其充满了信心。

MXNet 同时也是一个支持大多数编程语言的框架，支持的编程语言包括 Python、R、C++、Julia 等。由于目前支持R语言的深度学习框架并不是很多，因此使用R语言的开发者通常会选择 MXNet。

在使用体验上，MXNet 性能非常好，运行速度快，对 GPU 的要求也不高。但它的缺点是上手难度比较大，对于深度学习的新手有一定的技术要求。

4. PyTorch

PyTorch是近期比较热门的一个框架，其前身为 Torch。

Torch 本身是性能优良的框架，但选用的人不多，这是因为 Torch 基于一个不怎么流行的语言——Lua，在使用 Torch 前还必须学习 Lua 语言，这就大大增加了入门的难度。所以，在以 Python 为大趋势的深度学习环境中，脸书公司于 2017 年 1 月 18 日推出了 PyTorch，这一次再也没有编程语言问题了，PyTorch 于是以极迅猛的势头流行开来。

PyTorch 的官网是 http://pytorch.org/，配套的文档和教程十分完整和友好，推荐读者看一看。

5. Cognitive Toolkit（CNTK）

这是微软公司研究院维护的一套框架，通常被称作微软认知工具箱（Cognitive Toolkit），更广为人知的缩写是 CNTK。GitHub 的地址为 https://github.com/Microsoft/CNTK。

相对来说 CNTK 并不是很流行，这可能和微软公司的推行力度不够有关。其实作为一个背靠微软研究院的框架，CNTK 的表现力还是很强劲的。但是和主流框架相比，CNTK 最大的劣势在于文档和社区支持度上，CNTK 有关的技术博客相对较少，在 Kaggle 中的相关讨论和在 StackOverFlow 上的提问也很少。

由于 CNTK 和 Keras 在 Python 上的语法非常类似，对于深度学习的入门者，我们推荐使用 Keras。鉴于微软研究院在深度学习方面的强大实力，建议读者持续关注此框架的发展。

6. Theano

Theano 是蒙特利尔大学 LISA 实验室推出的深度学习框架，它的官网地址为 http://deeplearning.net/software/theano。

Theano 在日前已经宣布终止开发，这里简单了解一下即可。就深度学习而言，Theano 是很老牌的包，它具有优化的数值计算，曾用于很多深度学习包的开端。

如果读者是还没有上手深度学习框架的初学者，那么把 Theano 作为历史名词了解即可；如果读者曾经选用了 Theano，那么最相似、最直接的转换选择是 TensorFlow 或者 PyTorch。

7. DL4J

DL4J 的全称是 DeepLearning4J，是一套基于 Java 语言的深度学习工具包，由 Skymind 公司支持并维护，它的官网地址为 https://deeplearning4j.org/。

DL4J 是很适合程序员和数据工程师的包。DL4J 兼容 JVM，也适用 Java、Clojure 和 Scala，并且包括了分布式、多线程的深度学习框架，这显然与大多数程序员日常编程的语言和工作环境相类似。

同时，DL4J 有着极其精美友好的文档和活跃的社区支持，社区中提供的科学论文、案例和教程都很有参考价值，推荐大家关注。

8. PaddlePaddle

PaddlePaddle 由百度公司在 2016 年 9 月推出，它的官网地址为 http://www.paddlepaddle.org/。

至此，百度公司成为继谷歌公司、脸书公司、IBM 公司之后另一个将人工智能技术开源的科技巨头，同时也是国内首个开源深度学习平台的科技公司。Paddle 的全称是 Parallel Distributed Deep Learning，即并行分布式深度学习，是在百度公司内部已经使用多年的框架。

总的来说，PaddlePaddle 整体的设计和 Caffe 很像，对 Caffe 有一定了解的学习者应该很容易上手。

PaddlePaddle 打出的宣传语即是易学易用的分布式深度学习平台。同时，背靠百度公司扎实的开发功底，PaddlePaddle 也算是一个十分成熟、稳定可靠的开发工具。

9. Lasagne

Lasagne 是一个工作在 Theano 之上的包，它的官网地址为 https://lasagne.readthedocs.io/en/latest/index.html。

同 Keras 的定位类似，此类搭建在低层框架（Theano）上的包，旨在降低深度学习算法的上手难度。

Lasagne 的优点在于它严谨的架构逻辑和较强的可适应性，但它的缺点是，作为一个老牌的包，和 Keras 相比，Lasagne 的更新速度、社区活跃度和文档友好程度都稍显落后。

现在随着 Theano 的终止开发，Lasagne 的使用率应该会越来越低。对于初学者而言，目前并不建议选用 Lasagne，但是 Theano+Lasagne 的组合，在深度学习项目上是很常见的选择，如果读者日后参阅 GitHub 上的项目，还有可能会遇到，所以在此介绍一下，供读者参考。

10. DSSTNE

DSSTNE 是 Deep Scalable Sparse Tensor Network Engine（深度可伸缩稀疏张量网络引擎）的缩写，由亚马逊公司发布和维护，它的官网地址为 https://www.amazon.com/amzn/amazon-dsstne。

这并不是一个面向主流的深度学习框架，因为 DSSTNE 就是为了推荐系统而设计的。

DSSTNE 是针对稀疏数据的情况完全从头开始构建的，并且完全使用 GPU 运行，即设计了针对单服务器多 GPU 的计算环境。其结果是，在稀疏数据的场景下，DSSTNE 的运算速度比其他深度学习包快得多。虽然这个框架并不支持用户随意在 CPU 和 GPU 之间切换，但是这个功能却在深度学习中经常用到。

虽然 DSSTNE 框架并不具备普适性，但在大热的自然语言理解与视觉识别之外，它在搜索与推荐领域也有着巨大的应用空间，相信这也是亚马逊公司开源 DSSTNE 的初衷。

11. Keras
  
从严格意义上来讲，Keras 并不算是一个深度学习框架。Keras 是一个高层的 API（应用程序编程接口），它运行在 TensorFlow、CNTK、Theano 或 MXNet 这些学习框架上。

Keras 于 2015 年 3 月首次发布，之后即因其易用性和语法简洁性而广受支持，并得到快速发展。Keras 也是谷歌公司支持的框架之一。
关注公众号「站长严长生」，在手机上阅读所有教程，随时随地都能学习。本公众号由C语言中文网站长亲自运营，长期更新，坚持原创。

## 总结

>  人工智能需要学习，这个学习过程似乎是不能少，必须基于一定的样本进行学习。

>  人类也是也会犯错，甚至出错多次，但是出错后可以纠错，因此基于计算机的人工只能应该也会出错，但是允许纠正，这种机制必须是规人工智能所具有的。