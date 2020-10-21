<?php 
    include '../koneksi.php';		
	$id       = $_POST['id'];
	$approval = $_POST['btnapproval'];
	$blokir   = $_POST['btnblokir'];
    $norek    = $_POST['btnnorek'];	
	$rand     = rand();	
	if(isset($approval)){		    	    
		$query = "update validasi set pegawai_level= 'Aktif' where pegawai_id = '$id'";			
		$result = mysqli_query($koneksi, $query);					
		if ($result){
		   header("location:validasi.php");
		} else
		{
		   echo "gagal"	;
		}			
		
	} else 
	if(isset($blokir)){		    	    
		$query = "update validasi set pegawai_level= 'Blokir' where pegawai_id = '$id'";			
		$result = mysqli_query($koneksi, $query);					
		if ($result){
		   header("location:validasi.php");
		} else
		{
		   echo "gagal"	;
		}			
		
	} else 
	if(isset($norek)){		    	    
		$query = "update validasi set no_rek_giro = '$rand' where pegawai_id = '$id'";			
		$result = mysqli_query($koneksi, $query);					
		if ($result){			
		   header("location:validasi_baca.php?id=".$id);
		} else
		{
		   echo "gagal"	;
		}			
		
	}		
	
	
	
	
?>