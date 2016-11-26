<h3>Student Form</h3>
<p>This form uses to Add new Student</p>

<?php if(!empty($success)):?>
<div class="alert alert-info">
	<p><?php echo $success?></p>
</div>	
<?php endif?>

<div class="row">
	<div class="col-md-6">

		<form role="form" action="" method="post" enctype="multipart/form-data">
		  	<div class="form-group">
		    	<label>NIS</label>
		    	<input type="text" class="form-control" name="input_nis">
		  	</div>
		  	<div class="form-group">
		    	<label>Full Name</label>
		    	<input type="text" class="form-control" name="input_name">
		  	</div>  
		  	<div class="form-group">
		    	<label>Email</label>
		    	<input type="email" class="form-control" name="input_email">
		  	</div>  
		  	<div class="form-group">
		  		<label>Nationality</label>
		  		<select class="form-control" name="input_nationality">
		  			<option>--Select Nationality--</option>
		  			<?php foreach ($data['nat'] as $n):?>
		  				<option value="<?php echo $n['id_nationality']?>">
		  					<?php echo $n['code'].' - '.$n['nationality']?>
		  				</option>
		  			<?php endforeach?>
		  		</select>
		  	</div>	
			
			<div class="form-group">
		    	<label>Image</label>
		    	<input type="file" class="form-control" name="input_file">
		  	</div> 
			
		  	<button type="submit" class="btn btn-info">Submit</button>
		</form>

	</div>
</div>

<h3>List Students Data</h3>
<table class="table table-striped">
	<tr>
		<th>No</th>
		<th>Foto</th>
		<th>NIS</th>
		<th>Nama</th>
		<th>Nationality</th>
		<th>Action</th>
	</tr>	
	<?php $no=1;?>
	<?php foreach($data['siswa'] as $s):?>
	<tr>
		<td><?php echo $no?></td>
		<td>
			<?php if(!empty($s['foto'])):?>
			<img src="<?php echo $s['foto']?>" width="100px" class="img img-circle">
			<?php else:?>
			<img src="img/foto.jpg" width="100px" class="img img-circle">
			<?php endif?>
		</td>
		<td><?php echo $s['nis']?></td>
		<td><?php echo $s['full_name']?></td>
		<td><?php echo $s['nationality']?></td>
		<td>
			<a href="edit_siswa.php?id=<?php echo $s['id_siswa']?>">
				<span class="label label-success">edit</span>
			</a>
			<a href="del_siswa.php?id=<?php echo $s['id_siswa']?>">
				<span class="label label-danger">delete</span>
			</a>
		</td>
	</tr>	
	<?php $no++?>
	<?php endforeach?>
</table>	