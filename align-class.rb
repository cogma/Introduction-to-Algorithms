# -*- coding: utf-8 -*-
load("./make2d.rb")
load("./max.rb")

class Align

  def initialize(s0,s1)
    @s0 = s0
    @s1 = s1
    @gap = -2
    @eq = 2
    @neq = -1
    align()
    traceback()
    tracebackAll()    
  end

  def g()
    @gap        # 「ギャップ」のスコア
  end
  
  def q(x,y)
    if x == y
      @eq       # 「一致」のスコア
    else
      @neq      # 「不一致」のスコア
    end
  end
  
  def align()
    m = @s0.length()      # sの長さ
    n = @s1.length()      # tの長さ
    @a = make2d(m+1,n+1)  # 表を2次元配列で表す。
    @a[0][0] = 0
    for j in 1..n
      @a[0][j] = @a[0][j-1] + g() # a[0][j] = j*g
    end
    for i in 1..m
      @a[i][0] = @a[i-1][0] + g() # a[i][0] = i*g
    end
    for i in 1..m 
      for j in 1..n
        v0 = @a[i][j-1] + g                      # tのj番目はギャップと対応
        v1 = @a[i-1][j-1] + q(@s0[i-1],@s1[j-1]) # sのi番目とtのj番目が対応
        v2 = @a[i-1][j] + g                      # sのi番目はギャップと対応
        @a[i][j] = max(v0,max(v1,v2))
      end
    end
  end

  def traceback()
    @s0a = ""         # @s0にギャップを入れたものを作る
    @s1a = ""         # @t0にギャップを入れたものを作る
    i = @s0.length()  # @s0の末尾
    j = @s1.length()  # @s1の末尾
    while i>0 || j>0                          # どちらかが残っていたら
      if j>0 && @a[i][j] == @a[i][j-1] + g()  # @s1が残っていて、@s0のギャップと対応しているなら、
        @s0a = "-"             + @s0a         # @s0aにギャップの印の「-」を入れ、 
        @s1a = @s1[j-1 .. j-1] + @s1a         # @s1aに@s1の文字を入れる。
        j = j-1                               # @s1は1文字前に進む。
      else
        if i>0 && j>0 && @a[i][j] == @a[i-1][j-1] + q(@s0[i-1], @s1[j-1]) # 両方のこっていて、@s0と@s1が対応するなら、
          print "自分で埋める\n"
        else
          if i>0 && @a[i][j] == @a[i-1][j] + g() # @s0が残っていて、@s1のギャップと対応しているなら、
            print "自分で埋める\n"
          end
        end
      end
    end
  end

  def tracebackAll()
    @ss = Array.new()
    tracebackAllSub("","",@s0.length(),@s1.length())
  end

  def tracebackAllSub(s0,s1,i,j)
    if i>0 || j>0                          # どちらかが残っていたら
      if j>0 && @a[i][j] == @a[i][j-1] + g()  # @s1が残っていて、@s0のギャップと対応しているなら、
        tracebackAllSub("-"+s0,@s1[j-1 .. j-1]+s1,i,j-1)
      end
      if i>0 && j>0 && @a[i][j] == @a[i-1][j-1] + q(@s0[i-1], @s1[j-1]) # 両方のこっていて、@s0と@s1が対応するなら、
        tracebackAllSub(@s0[i-1 .. i-1] + s0,@s1[j-1 .. j-1] + s1,i-1,j-1)
      end
      if i>0 && @a[i][j] == @a[i-1][j] + g() # @s0が残っていて、@s1のギャップと対応しているなら、
        tracebackAllSub(@s0[i-1 .. i-1] + s0,"-"+ s1,i-1,j)
      end
    else
      @ss << [s0,s1] 
    end
  end

  def setScore(gap,eq,neq)
    @gap = gap
    @eq = eq
    @neq = neq
  end

  def getScore()
    [@gap,@eq,@neq]
  end

  def getTotalScore
    @a[@a.size-1][@a[0].size-1]
  end

  def getTable
    @a
  end

  def getS0
    @s0a
  end

  def getS1
    @s1a
  end

  def getSS
    @ss
  end
end

def test
  c = Align.new("babab","abaabb")
  p c.getScore()
  c.align()
  print "score=",c.getTotalScore(),"\n"
  print "table=",c.getTable(),"\n"
  c.traceback() # 自分で埋めるところを完成してないと止まりません。
  print "s0=",c.getS0(),"\n"  
  print "s1=",c.getS1(),"\n"  
  c.tracebackAll()
  p c.getSS()
  "ok"
end
