<p>This form uses to Edit Student Data</p>

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
				<input type="text" class="form-control" readonly="readonly"
					value="<?php echo $data['st']['nis']?>" name="input_nis">
			</div>
			<div class="form-group">
				<label>Full Name</label>
				<input type="text" class="form-control"
					value="<?php echo $data['st']['full_name']?>" name="input_name">
			</div>  
			<div class="form-group">
				<label>Email</label>
				<input type="email" class="form-control"
					value="<?php echo $data['st']['email']?>" name="input_email">
			</div>  
			<div class="form-group">
				<label>Nationality ( <?php echo $data['st']['nationality']?> )</label>
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