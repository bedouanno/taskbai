<? $object; ?>
<!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                                <div class="col-md-6">
                                <span class="badge-success mt-4 float-left display-9 px-5 font-weight-bold">
                                        <?php echo $user['first_name'].' '.$user['last_name'];  ?>
                                </span>
                                </div>

                                <div class="col-md-6">
                                <span class="badge-primary mt-4 float-right display-9 px-5">
                                <?php $createdDates = new DateTime($current_datetime);
                                    $createdDateFormats = date_format($createdDates, 'F d, Y - g:i a');
                                    echo $createdDateFormats;?>
                                </span>
                                </div>
                                                        
                                <div class="col-md-12">
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <!-- <?php //echo $clockin; ?>  -->
                                        <thead>
                                            <tr>
                                                <th>Time In</th>
                                                <th>Time Out</th>
                                                <th>Late</th>
                                                <th>Absent</th>
                                                <th>Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php if(!empty($attendance_list)){ ?>
                                        <?php foreach ($attendance_list as $attendance):?>
                                            <tr class="tr-shadow">
                                                <td>
                                                <?php echo '<span class="text-xs" style="width: auto"><i class="fa fa-clock-o mr-1 text-success"></i></span>'.dateTimeFunction($attendance['time_in']); ?>
                                                </td>
                                                <td>
                                                <?php echo '<span class="text-xs" style="width: auto"><i class="fa fa-clock-o mr-1 text-danger"></i></span>'.dateTimeFunction($attendance['time_out']); ?>
                                            </td>
                                                <?php 

                                                    if(!empty($attendance['late'])){
                                                        echo '<td class="denied"><span>'.$attendance['late'].'</span></td>';
                                                    }else{
                                                        echo "<td><span>-</span></td>";
                                                    }
                                                ?>
                                                <td>-</td>
                                                <td>
                                                <?php //echo dateTimeDateFunctionv2($attendance['date_attendance']);
                                                
                                                $str = strtotime($attendance['date_attendance']);

                                                // $new_format = new DateTime($str);

                                                // $timef = date_format($new_format, 'D - F d, Y');
                                                echo date("D - F d, Y", $str);
                                                // echo dateTimeDateFunctionv2($attendance['date_attendance']);
                                                ?>
                                                </td>
                                            </tr>
                                            <?php endforeach; ?>
                                            <?php }else{ ?>
                                                <tr><td colspan='5'><span class='font-weight-italic'>No data found!</span></td></tr>
                                            <?php } ?>
                                        </tbody>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END DATA TABLE-->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->