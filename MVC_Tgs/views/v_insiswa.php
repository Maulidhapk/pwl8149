<div class="row">
	<div class="col-md-6">

		<?php if(!empty($data['num'])):?>
		<div class="alert alert-success">
			Berhasil diimport <?php $data['num']?> data.
		</div>
		<?php endif?>

		<form role="form" action="" method="post" enctype="multipart/form-data">			
			
			<div class="form-group">
		    	<label>Upload CSV</label>
		    	<input type="file" class="form-control" name="input_csv">

		  	</div> 
			
			<button type="submit" class="btn btn-info">Submit</button>
		</form>
	</div>
</div>	