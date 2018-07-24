function addField() {
                  $("#dm").css('display', 'none');

            };

            function addField1() {
                            $("#dm").css('display', 'block');

                        };
                        $(document).on("click", ".change", function(){
                          if($(this).attr("id")==4 ||$(this).attr("id")==5)
                              {$('#'+'45').css('display','none');
                              $('#'+'4d').css('display','block');
                              $('#'+'4c').css('display','block');
                            }
                            else{
                          $('#'+$(this).attr("id")+"a").css('display','inline');
                          $('#'+$(this).attr("id")+"c").css('display','inline');
                          $('#'+$(this).attr("id")+"b").css('display','none');
                          $('#'+$(this).attr("id")).css('display','none');}
                        });
                        $(document).on("click",".more",function(){
                          
                          $('#'+$(this).attr("id")+'b').css('display','none');
                          $('#'+$(this).attr("id")+'c').css('display','inline');
                        });
                        $(document).on("click",".less",function(){

                          $('#'+$(this).attr("id")+'c').css('display','none');
                          $('#'+$(this).attr("id")+'b').css('display','inline');

                        });
                        $(document).on("click",'.save',function(){
                          var aa=$(this).attr("name")
                          alert(aa);var a
                          if(aa=="status")
                          a = $("input[name="+$(this).attr("name")+"]:checked").val()
                          else {
                            a = $("input[name="+$(this).attr("name")+"]").val()
                          }
                      alert ( a);
                      if(aa=="status")
                  {
                    aa="dom";
                  if($("input[name="+$(this).attr("name")+"]:checked").val()=="single")
                  a="nil";
                  else if($("input[name="+$(this).attr("name")+"]:checked").val()=="married")
                  a=$("input[name=dom]").val();
                }
                alert(a);
                        $.ajax({
                          data:{arg:aa,value:a},
                          method:'POST',
                          url:'/sessions/update'
                        }).then(function(data){
                          console.log(data);
                        })


        });
