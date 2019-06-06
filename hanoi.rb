# -*- coding: utf-8 -*-
# 上からn枚の板をaからcに移動する。
def hanoi(n,a,b,c)
  if n>0
    hanoi(n-1,a,c,b)
    print n,"番目の板を",a,"から",c,"に移動する。\n"
    hanoi(n-1,b,a,c)
  end
end
