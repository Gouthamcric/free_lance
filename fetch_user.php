<?php
include('DB.php');
include('functions.php');
session_start();
$query='select * from regestration where user_id!='.$_SESSION['user_id'].'';
$res=  mysqli_query($connection, $query);

        $count= mysqli_num_rows($res);
  
        $i=0;
        $output='';
        while($i!=$count){$out= mysqli_fetch_array($res)or die(mysqli_errno($connection));
         $status = '';
 $current_timestamp = strtotime(date("Y-m-d H:i:s") . '- 10 second');
 $current_timestamp = date('Y-m-d H:i:s', $current_timestamp);
 $user_last_activity = fetch_user_last_activity($out['user_id'], $connection);
  if($user_last_activity > $current_timestamp)
 {
  $status = '<p class="name text-success">Online</p>';
 }
 else
 {
  $status = '<p class="name text-danger">Offline</p>';
 }
 echo ' 				<li class="contact ">
					<div class="wrap">
						<img src="http://emilcarlsson.se/assets/louislitt.png" alt="" /><!-- frelancer display picture-->
						<div class="meta">
							<p class="name ">'.$out['firstname'].' '.count_unseen_message($out['user_id'],$_SESSION['user_id'],$connection).'</p><!-- frelancer Name-->'.$status.'
                                                            
							<p class="preview"><button type="button" class="btn btn-info btn-xs start_chat" data-touserid="'.$out['user_id'].'" data-tousername="'.$out['firstname'].'">Start Chat</button></p><!-- frelancer Last message-->
						</div>
					</div>
				</li>
        ';
        $i++;}
        

        
        