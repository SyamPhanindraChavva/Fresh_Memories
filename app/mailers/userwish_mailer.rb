class UserwishMailer < ApplicationMailer
  default from: "dharshiniram27@gmail.com"
  def send_digest_email(x)

    puts "varuthu"
      puts x.username
      dt=x.dob
      d=Date.parse(dt.to_s);
      dob_date=d.mday
      dob_month=d.mon
      dob_year=d.year
      dt=x.doj
      d=Date.parse(dt.to_s);
      doj_date=d.mday
      doj_month=d.mon
      doj_year=d.year
      dt=x.dom
      @notmarried=false
      if dt==nil
          @notmarried=true
      end
      puts dt
      @birthday=""
      @workanni=""
      @marrianni=""
        cur=Date.parse((Date.today).to_s)
        cur_date=cur.mday
        cur_month=cur.mon
        cur_year=cur.year

        if dob_date==cur_date
          if dob_month==cur_month
              @years=cur_year-dob_date;
          end
          @birthday=1
          puts "birthdauy"
        end

        if doj_date==cur_date
          if doj_month==cur_month
              @years=cur_year-dob_date;

              @workanni=1
              puts "work"
          end
        end

        if @notmarried==false
          d=Date.parse(dt.to_s);
          dom_date=d.mday
          dom_month=d.mon
          dom_year=d.year
          if dom_date==cur_date
            if dom_month==cur_month
                @years=cur_year-dom_date;
                  if @year==0
                      @month=cur_month-dom_month
                  end
                @marrianni=1
                puts "marriage"
            end
          end
        end
      @scrt=""
      puts @birthday
      puts @workanni
      puts @marrianni
if @birthday==1 || @workanni==1 || @marrianni==1
  range = ((48..57).to_a+(65..90).to_a+(97..122).to_a).map{ |i| i.chr }
  sct=Array.new(100){ range.sample }.join
  @scrt=sct+x.username
  puts @scrt
  usr=User.find(x.id);
  usr.link=@scrt
  usr.save

    mail(to:x.email,subject:"Most important : Open the mail fast !");
end

end
end
