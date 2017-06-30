class AsciifyController < ApplicationController
  def index
    b = Artii::Base.new(font: "big")
    @output1 = b.asciify("Auto Pick")
  end

  def result
    @type = params[:type]
    @t_control = params[:control]
    @name = params[:name]
    
    if @type == "한 식"
      food = ["한솥","이모네","돼김"].sample(1)
    elsif @type == "일 식"
      food = ["행돈"]
    elsif @type == "중 식"
      food = ["이화관","중국성","진시왕"].sample(1)
    else
      if @t_control == "매움"
        food = ["치킨","불스","족비"].sample(1)
      else
        food = ["치킨","피탕","피자","피치셋트"].sample(1)
      end
    end
    
    @food = food
    
    if @food[0] == "돼김"
      if @t_control == "매움"
        result = ["돼지고기 김치찌게","매운 갈비찜","1인당 8000원","041-533-3292"]
      else
        result = ["돼지고기 김치찌게","된장찌게","1인당 6000원","041-533-3292"]
      end
    elsif @food[0] == "한솥"
      if @t_control == "매움"
        result = ["한솥도시락","나시고랭","4500원","041-542-2085"]
      else
        result = ["한솥도시락","치킨마요","2700원","041-542-2085"]
      end
    elsif @food[0] == "이모네"
      if @t_control == "매움"
        result = ["이모네 식당","순두부찌게","5000원","041-543-7888"]
      else
        result = ["이모네 식당","오징어볶음","5000원","041-543-7888"]
      end
    elsif @food[0] == "행돈"
      if @t_control == "매움"
        result = ["행복한 돈까스","매운 돈까스","홀:5500원, 포장.배달:7000원","041-543-3102"]
      else
        result = ["행복한 돈까스","수제등심돈까스","홀:5000원, 포장.배달:6500원","041-543-3102"]
      end
    elsif @food[0] == "이화관"
      if @t_control == "매움"
        result = ["이화관","미친 짬뽕","홀:6000원, 배달:8000원","041-532-0070"]
      else
        result = ["이화관","볶음밥","홀:4500원, 배달:5000원","041-532-0070"]
      end
    elsif @food[0] == "중국성"
      if @t_control == "매움"
        result = ["중국성","짬뽕","4500원, 배달 시 500원 추가","041-532-0070"]
      else
        result = ["중국성","볶음밥","5000원, 배달 시 500원 추가","041-532-0070"]
      end
    elsif @food[0] == "진시왕"
      if @t_control == "매움"
        result = ["진시왕","짬뽕","4500원, 배달 안함","041-544-5125"]
      else
        result = ["진시왕","오므라이스","5500원, 배달 안함","041-544-5125"]
      end
    elsif @food[0] == "치킨"
      if @t_control == "매움"
        result = ["미쳐버린 파닭","핫부르부르 맛","12000원","041-532-2522"]
      else
        result = ["미쳐버린 파닭","양념, 마늘간장 2마리 셋트","19000원","041-532-2522"]
      end
    elsif @food[0] == "피탕"
      result = ["마슬랜","감피탕","小:15000원, 中:19000원, 大:23000, 특大:26000원","041-541-8990"]
    elsif @food[0] == "피자"
      result = ["돈치킨","콤비네이션 피자","R:12000원, L:15000원","041-545-9492"]
    elsif @food[0] == "피치셋트"
      result = ["피자나라 치킨공주","피치셋트","R:14900원, L:17900원","041-549-9227"]
    elsif @food[0] == "불스"
      result = ["불스 떡볶이","A셋트 3단계","18000원","041-548-3727"]
    elsif @food[0] == "족비"
      result = ["뚱뚱이 할머니 족발 보쌈","족발 비빔면","小:14000원, 中:17000원, 大:23000","041-544-8989"]
    end
    
    @result = result
    
  end
end
