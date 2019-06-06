# -*- coding: utf-8 -*-
load("make2d.rb")
def cantor2d2(n)
  s = 3**n # 大きさは3のn乗
  a = make2d(s,s) # 大きさs x sの配列を作成。要素はすべて0で初期化されている。
  subcantor2d2(a, s, 0, 0) # 再帰的な手続きsubcantor2d2を座標(0,0)に対して呼び出す。
  a # 配列aを返す。
end
def subcantor2d2(a, s, x, y) # 座標(x,y)を起点として、大きさsのCantor集合を配列aに設定する。
  if s==1
    a[y][x] = 1 # 大きさが1になれば単に1を設定。
  else
    s = s/3 # 3分の1の大きさのものを考える。
    for i in 0..2
      for j in 0..2
        if i != 1 || j != 1 # 中心以外は、
          subcantor2d2(a, s, x+i*s, y+j*s) # (x,y)からsの大きさのCantor集合を配列aに設定する。
        end
      end
    end
  end
end
