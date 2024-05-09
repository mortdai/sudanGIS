<?php
 /* Start XML file, create parent node */
   $doc = new DOMDocument('1.0', 'UTF-8');

    /* create the root element of the xml tree */
    $xmlRoot = $doc->createElement("xml");
    /* append it to the document created */
    $xmlRoot = $doc->appendChild($xmlRoot);

    $currentTrack = $doc->createElement("markers");
    $currentTrack = $xmlRoot->appendChild($currentTrack);


// Opens a connection to a MySQL server
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sudanGIS";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql ="SELECT * FROM locals WHERE 1";
$result = $conn->query($sql);
if (!$result) {
  die('Invalid query: ' . mysql_error());
}


header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
  // Add to XML document node
  $node = $doc->createElement("marker");

 $newnode = $xmlRoot->appendChild( $node);
  $newnode->setAttribute ("name", $row['name']);
  $newnode->setAttribute ("address", $row['address']);
  $newnode->setAttribute ("lat", $row['lat']);
  $newnode->setAttribute ("lng", $row['lng']);
  $newnode->setAttribute ("type", $row['type']);
}
}
$xmlfile = $doc->saveXML();

echo $xmlfile;

?>
