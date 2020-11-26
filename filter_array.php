<!DOCTYPE html>
<html>
<body>

<?php
$userdb=Array
(
    (0) => Array
        (
            (uid) => '100',
            (name) => 'Sandra Shush',
            (url) => 'urlof100'
        ),

    (1) => Array
        (
            (uid) => '5465',
            (name) => 'Stefanie Mcmohn',
            (pic_square) => 'urlof100'
        ),

    (2) => Array
        (
            (uid) => '5465',
            (name) => 'Michael',
            (pic_square) => 'urlof40489'
        )
);
$search = 5465;
$found = array_filter($userdb,function($v,$k) use ($search){
  return $v['uid'] == $search;
},ARRAY_FILTER_USE_BOTH); 

$values= array_values($found);

echo "<pre>";
print_r($values);
?>

</body>
</html>
