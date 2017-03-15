class HelloController < ApplicationController

  def index
    if request.post? then
      t = params["input1"].to_i
      seireki = t / 10000;
      month = (t/100) % 10
      day = t % 100
      a1=0;
      a2=0;
      a3=0;
      while seireki>0 do
          a1 = a1 + seireki%10;
          seireki = seireki/10;
      end
      
      while month>0 do
          a2 = a2 + month % 10;
          month = month / 10;
      end
      
      while day>0 do
          a3 = a3 + day%10;
          day = day/10;
      end
      
      while a1 / 10>0 do
          temp1=a1/10;
          temp2=a1%10;
          a1=temp1+temp2;
      end
      
      while a2/10>0 do
          temp1=a2/10;
          temp2=a2%10;
          a2=temp1+temp2;
      end
      
      while a3/10 > 0 do
          temp1 = a3/10;
          temp2 = a3%10;
          a3 = temp1 + temp2;
      end
      number = a1 + a2 + a3;
      
      while number/10>0 do
          temp1=number/10;
          temp2=number%10;
          number=temp1+temp2;
      end
    
    
     @result = "あなたの誕生数は"+number.to_s+"です"
    else
      @result = ''
    end
  end
end
