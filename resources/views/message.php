<html>
   <head>
      <meta name="csrf-token" content="{{ csrf_token() }}" />
      <title>Ajax Example</title>
      
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
      </script>
      
      <script>
          
         function getMessage(){
            $.ajaxSetup({
              headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
             }); 
             console.log(  $('meta[name="csrf-token"]').attr('content')  )    ;        
            $.ajax({             
               type:"POST",
               url:'/getmsg',
               data: {'id' : 12345},
               success:function(data){
                  console.log("ajax data sent");
                  //$("#msg").html(data.msg);
               }
            });
         }
      </script>
   </head>
   
   <body>
      <div id = 'msg'>This message will be replaced using Ajax. 
         Click the button to replace the message.</div>
      <?php
         //echo csrf_token();
         echo Form::button('Replace Message',['onClick'=>'getMessage()']);
      ?>
   </body>

</html>