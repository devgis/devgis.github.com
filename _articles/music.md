---
layout: post
title: 美妙音乐
description: 美妙音乐收集
date: 2023-09-19 10:23:01
updatedate: 2023-09-20 10:23:01
---
- [好听的歌](#好听的歌)
- [美妙音乐](#美妙音乐)

# 好听的歌

> 风往北吹 刀郎

> 你笑起来真好看

> 两两相忘

# 美妙音乐

type GRN struct{ DocType, GRNNO, PRID, PRODUCE, VARIETY string }

func filter(in []GRN, produce, variety string) []GRN {
	var out []GRN
	for _, each := range in {
		if each.PRODUCE == produce && each.VARIETY == variety {
			out = append(out, each)
		}
	}
	return out
}