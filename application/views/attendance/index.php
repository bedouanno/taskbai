<? $object; ?>
<!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                                <div class="col-md-6">
                                <span class="badge badge-lg badge-primary mt-4">
                                <?php $createdDates = new DateTime($current_datetime);
                                    $createdDateFormats = date_format($createdDates, 'F d, Y - g:i a');
                                    echo $createdDateFormats;?>
                                </span>
                                </div>
                                <div class="col-md-6">
                                <?php if(empty($timeout)): ?>
                                <?php echo form_open('attendance'); ?>
                                    <?php if(empty($timein)){ ?>
                                    <button type="submit" value="1" name="clockin" class="btn btn-lg btn-primary float-right mb-1">Clock In</button>
                                    <?php }else{ ?>
                                    <button type="submit" value="0" name="clockout" class="btn btn-lg btn-danger float-right mb-1">Clock Out</button>
                                    <?php } ?>
                                </form>
                                <?php endif; ?>
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
                                                <?php echo dateTimeDateFunction($attendance['date_attendance']); ?>
                                                </td>
                                            </tr>
                                            <?php endforeach;?>
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


