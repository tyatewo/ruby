class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

bus = Bus.new
bus.run(5)

#↑CarクラスとBusクラスのメソッド内容(run)が重複している！！
#継承を使おう！！


class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car
end

bus = Bus.new
bus.run(5)

#Busクラス(子クラス)には、何もメソッドが書かれていないですが、
#継承をしているためCarクラス(親クラス)のrunメソッドが読み込まれました。
#一番上のコードよりすっきりしてる

puts Bus.superclass
#Busの親クラスが、Carかどうか確認
#親クラスを調べるときは「.superclass」を使用
