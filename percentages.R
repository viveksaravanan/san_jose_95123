#find percent difference
diff <- ((sold$SP - sold$LP)/sold$LP) * 100

#add percent diff column to dataset
sold$"%_difference" <- diff