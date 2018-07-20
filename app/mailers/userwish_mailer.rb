class UserwishMailer < ApplicationMailer
  default from: "dharshiniram27@gmail.com"
  def send_digest_email(x)

    puts "varuthu"
      puts "New"
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
        cur=Date.parse((Date.today).to_s)
        cur_date=cur.mday
        cur_month=cur.mon
        cur_year=cur.year
        if dob_date==cur_date
          if dob_month==cur_month
              @years=cur_year-dob_date;
          end
              @matter="birthday"
              mail(to:x.email,subject:"Emergency : Open the mail fast !"); puts "birthday"
          end
        if doj_date==cur_date
          if doj_month==cur_month
            @years=cur_year-dob_date;
            if @year==0
              @months=cur_month-doj_month
            end
            @matter="workanni"
            mail(to:x.email,subject:"Hurry : Open the mail fast !");
          end
          puts "work"
        end
      if @notmarried==false
        if doj_date==cur_date
          if doj_month==cur_month
            @years=cur_year-dob_date;
            if @year==0
              @month=cur_month-doj_month
            end

            @matter="marrianni"
            mail(to:x.email,subject:"Most important : Open the mail fast !");
          end
        end

      end

end
end
