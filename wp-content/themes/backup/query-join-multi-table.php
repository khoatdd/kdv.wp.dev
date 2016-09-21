<?php 
// header("Content-type:text/plain");
// echo "/////////////////////////
// //SQL Join Multi Table //
// /////////////////////////\n";
class Table {
	public $name;
	public $table;
	public $columns = array("id");

	function __construct( $name, $fields ) {
		$this->name = $name;
		$this->table = $name;
		foreach( $fields as $field ) {
			$this->columns[] = $field;
		}
	}

	function getID() {
		return "{$this->name}.{$this->columns[0]}";
	}
	function getColumn() {
		$query = "";
		$i = 0;
		for ($i = 1; $i < count($this->columns) - 1; $i++){
			$query .= "{$this->name}.{$this->columns[$i]}, ";
		}
		$query .= "{$this->name}.{$this->columns[$i]}";
		return $query;
	}

	function setTable( $query ) {
		$this->table = $query;
	}
	function getTable() {
		return $this->table;
	}
}

function buildSubQuery( $table1, $table2 ) {
	$query = "SELECT DISTINCT {$table1->getID()}, {$table1->getColumn()}, {$table2->getColumn()}";
	$query .= " FROM {$table1->getTable()}";
	$query .= " JOIN {$table2->getTable()}";
	$query .= " ON {$table1->getID()}={$table2->getID()}";
	return $query;
}

function buildColumn( $table1, $table2 ){
	$columns = array();
	for($i = 1; $i < count( $table1->columns ); $i++) {
		$columns[] = $table1->columns[$i];
	}
	for($i = 1; $i < count( $table2->columns ); $i++) {
		$columns[] = $table2->columns[$i];
	}
	return $columns;
}
//new code go here
function buildOneTableQuery($table) {
	$query = "SELECT DISTINCT {$table->getID()}, {$table->getColumn()}";
	$query .= " FROM {$table->getTable()}";
	return $query;
}

function getPrimaryData ($count) {
		global $wpdb;
		$arrayTableNames = array();
		$arrayTableFields = array();
		$comparedFields = array();
		$keyWords = array();
		$combine = array();
	for ($i=1; $i <= $count ; $i++) { 
		$loaitimkiem = "loaitimkiem".$i;
		$loaitimkiem = $_POST[$loaitimkiem];
		$tableName = $wpdb->get_row("SELECT bang FROM timkiem WHERE LoaiTimKiem_KhongDau = '$loaitimkiem'",ARRAY_N);
		$arrayTableNames[] = $tableName[0];
		$tableField = $wpdb->get_row("SELECT field FROM timkiem WHERE LoaiTimKiem_KhongDau = '$loaitimkiem'",ARRAY_N);
		$arrayTableFields[] = $tableField[0];
		$comparedField = $wpdb->get_row("SELECT comparedField FROM timkiem WHERE LoaiTimKiem_KhongDau = '$loaitimkiem'",ARRAY_N);
		$comparedFields[] = $comparedField[0];
		$tukhoa = "tukhoa".$i;
		$get_database = $wpdb->get_results("SELECT * FROM bangviettat",ARRAY_N);
		$keyWord = stringReplace($_POST[$tukhoa],$get_database);
		$dieukien = 'dieukien'.$i;
		$dieukien = $_POST[$dieukien];
		$preffixAndSuffix = $wpdb->get_row("SELECT Preffix,Suffix FROM dieukientimkiem WHERE dieukien = '$loaitimkiem' AND KyHieu = '$dieukien'",ARRAY_N);
		$keyWords[] = $preffixAndSuffix[0].$keyWord.$preffixAndSuffix[1];

		if ($i >= 2) {
			$kethop = "kethop".$i;
			$combine[] = $_POST[$kethop];
		}
	}
	// if (!in_array("hovaten", $arrayTableFields)) {
	// 	$arrayTableNames[] = "thongtinchung";
	// 	$arrayTableFields[] = "hovaten";
	// 	$comparedFields[] = "hovaten";
	// 	$keyWords[] ="";
	// 	$combine[] ="";
	// }
	return array($arrayTableNames,$arrayTableFields,$comparedFields,$keyWords,$combine);
} 

function buildTableNamesAndFields($arrayTableNames,$arrayTableFields){
	$tableNames=array();
	$tableFields=array();
	for ($i=0; $i <count($arrayTableNames) ; $i++) {
		// $check = false;
		// for ($j=0; $j <count($tableNames) ; $j++) {
		// 	if ($arrayTableNames[$i]==$tableNames[$j]) {
		// 		if ($arrayTableFields[$i] == "hovaten") {
		// 			$tableFields[$j][] = 'hovatendem';
		// 			$tableFields[$j][] = 'ten';
		// 			continue;
		// 		}
		// 		$tableFields[$j][] = $arrayTableFields[$i];
		// 		// $check = true;
		// 	}
		// }
		// if ($check) {
		// 	continue;
		// }
		// $tableNames[] = $arrayTableNames[$i];
		// if ($arrayTableFields[$i] == "hovaten") {
		// 	$tableFields[count($tableNames)-1][] = 'hovatendem';
		// 	$tableFields[count($tableNames)-1][] = 'ten';
		// } else {$tableFields[][] = $arrayTableFields[$i];}
		if (!in_array($arrayTableNames[$i], $tableNames)) {
			$tableNames[] = $arrayTableNames[$i];
			if ($arrayTableFields[$i] == "hovaten") {
					$tableFields[count($tableNames)-1][] = 'hovatendem';
					$tableFields[count($tableNames)-1][] = 'ten';
				} else { $tableFields[count($tableNames)-1][] =  $arrayTableFields[$i]; }
		} else {
			$vitri = array_search($arrayTableNames[$i], $tableNames);
			if ($arrayTableFields[$i] == "hovaten") {
					$tableFields[$vitri][] = 'hovatendem';
					$tableFields[$vitri][] = 'ten';
				} else { $tableFields[$vitri][] =  $arrayTableFields[$i]; }
		}
	}
	// for ($i=0; $i < count($tableNames); $i++) { 
	// 	for ($j=$i; $j < count($tableNames) ; $j++) { 
	// 		if ($tableNames[$i]==$tableNames[$j]) {
	// 			unset($tableNames[$j]);
	// 			for ($k=0; $k < count($tableFields) ; $k++) { 
	// 				$tableFields[$i][] = $tableFields[$j][$k];
	// 			}
	// 			unset($tableFields[$j]);
	// 		}
	// 	}
	// }
	$n = array_search('thongtinchung',$tableNames);
	if ($n === false) { array_unshift($tableNames,'thongtinchung'); array_unshift($tableFields,array('hovatendem','ten'));}
	if (!in_array('hovatendem', $tableFields[$n])) {
		$tableFields[$n][] = 'hovatendem';
		$tableFields[$n][] = 'ten';
	}
	$tableNames[$n] = $tableNames[0];
	$tableNames[0] = 'thongtinchung';
	$temp = $tableFields[$n];
	$tableFields[$n] = $tableFields[0];
	$tableFields[0] = $temp;
	$n = array_search( 'hovatendem',$tableFields[0]);
	$tableFields[0][$n] = $tableFields[0][0];
	$tableFields[0][0] = 'hovatendem';
	$n = array_search( 'ten',$tableFields[0]);
	$tableFields[0][$n] = $tableFields[0][1];
	$tableFields[0][1] = 'ten';
	global $countTables;
	$countTables = count($tableNames);
	return array($tableNames,$tableFields);
}

function buildInputTables ($inputData) {
		$tables = array();
	for ($i=0; $i <count($inputData[0]) ; $i++) { 
		$table = new Table($inputData[0][$i],$inputData[1][$i]);
		$tables[] = $table;
		if ($i == count($inputData[0]) - 1) {
			global $lastTableName;
			$lastTableName = $inputData[0][$i];
		}
	}
	return $tables;
}

function buildConditions ($arrayTableNames,$comparedFields,$keyWords,$combine,$nameAfterJoin,$lastTableName,$countTables) {
	$condition = " WHERE ";
	for ($i=0; $i <count($comparedFields) ; $i++) {
		if ($comparedFields[$i] == "hovaten") {
			if ($countTables > 2) {
				$condition .= "CONCAT(".$nameAfterJoin.".hovatendem,".$nameAfterJoin.".ten) ".$keyWords[$i]." ";
			} else {
				$condition .= "CONCAT(thongtinchung.hovatendem,' ',thongtinchung.ten) ".$keyWords[$i]." ";				
			}
		} elseif ($comparedFields[$i] == "ngaysinh") {
			if ($countTables > 2) {
				$condition .= "YEAR(".$nameAfterJoin.".ngaysinh)".$keyWords[$i]." ";
			} else {
				$condition .= "YEAR(ngaysinh)".$keyWords[$i]." ";				
			}
		} else {
				if ($countTables <= 2) {
					// if ($i == count($comparedFields) - 1 ) {
					// 		$condition .= $lastTableName.".".$comparedFields[$i]." ".$keyWords[$i]." ";
					// 	} else {
							$condition .= $arrayTableNames[$i].".".$comparedFields[$i]." ".$keyWords[$i]." ";
						// }
				} else {
					if ($i == count($comparedFields) - 1 ) {
						$condition .= $lastTableName.".".$comparedFields[$i]." ".$keyWords[$i]." ";
					} else {
						$condition .= $nameAfterJoin.".".$comparedFields[$i]." ".$keyWords[$i]." ";
					}
				}
			}
		if ($i < count($comparedFields) - 1) {
			$condition .= " ".$combine[$i]." ";
		}
	}
	$condition .= " GROUP BY id";
	return $condition;
}
//end new code

function buildQuery( $tables ){
	
	$numOfTables = count( $tables );
	//new code go here
	if ($numOfTables == 1) {
		$query = buildOneTableQuery($tables[0]);
		return $query;
	}
	//end new code
	if( $numOfTables == 2 ) {
		$query = buildSubQuery( $tables[0], $tables[1] );
		return $query;
	}
	global $nameAfterJoin;
	$nameAfterJoin = "T" . $numOfTables;
	$query = "( " . buildSubQuery( $tables[0], $tables[1] ) . " ) as $nameAfterJoin";
	$newTable = new Table( $nameAfterJoin, buildColumn( $tables[0], $tables[1] ) );
	$newTable->setTable( $query );

	$newTables = array( $newTable );
	for($i = 2; $i < $numOfTables; $i++){
		$newTables[] = $tables[$i];
	}
	return buildQuery( $newTables );

}
// $table1 = new Table( 'thongtinchung', array( 'hovaten', 'quequan' ) );
// $table2 = new Table( 'quatrinhcongtac', array( 'donvicongtac' ) );
// $table3 = new Table( 'trinhdothacsi', array( 'chuyennganh' ) );
// $table4 = new Table ('trinhdongoaingu', array( 'ngonngu' ));
// $tables = array( $table1, $table2, $table3, $table4 );
// $arrayTableNames = array("thongtinchung","quatrinhcongtac","thongtinchung","trinhdothacsi","thongtinchung");
// $arrayTableFields = array("hovatendem, ten","noicongtac","ngaysinh","chuyennganhthacsi","kinhnghiemkhac");
// $comparedFields = array("concat(hovatendem,' ',ten)","noicongtac","YEAR(ngaysinh)","chuyennganhthacsi","kinhnghiemkhac");
// $keyWords = array("like %hao%","like %a%",">1","like %a%","like %a%");
// $combine = array("and","and","and","and");
// $condition = buildConditions ($comparedFields,$keyWords,$combine);
// $test = buildTableNamesAndFields($arrayTableNames,$arrayTableFields);
// echo "<pre>";
// print_r($condition);
// echo "</pre>";
// $query = buildQuery( $tables );
// var_dump( $query );
function stringReplace($string,$get_database) {
	foreach ($get_database as $key) {
		if (substr_count($string,$key[1])>0) {
			$string = str_replace($key[1], $key[2], $string);
		}
	}
	return $string;
}
 ?>