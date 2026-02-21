<?php
// Include config
include('config.php');
include('navbar.php');
// Check slug safely
$slug = isset($_GET['post']) ? $_GET['post'] : '';

// Default empty data
$data = null;

if($slug != ''){
    // Safe query
    $sql = "SELECT * FROM tbl_posts WHERE post_slug='$slug' LIMIT 1";
    $query = $conn->query($sql);

    if($query && $query->num_rows > 0){
        $data = $query->fetch_assoc();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title><?php echo $sitename; ?></title>
<link href="css/styles.css" rel="stylesheet" />
</head>

<body>

<?php include('navbar.php'); ?>

<?php if(!$data){ ?>

    <!-- ERROR SHOW -->
    <?php include("error.php"); ?>

<?php } else { ?>

<?php
$img = $data['post_header'];
?>

<!-- HEADER -->
<header class="masthead" style="background-image:url('assets\img\bestphp.jfif<?php echo $img; ?>'; background-size:cover;">
<div class="container">
<div class="post-heading">

<h2><?php echo $data['post_title']; ?></h2>

<p style="font-size:14px;">
By <?php echo $data['post_author']; ?> -
<?php echo date("d-M-Y", strtotime($data['post_date'])); ?>
</p>

</div>
</div>
</header>

<!-- CONTENT -->
<article class="mb-4">
<div class="container">

<h1><?php echo $data['post_title']; ?></h1>

<p>
<?php echo nl2br($data['post_content']); ?>
</p>

</div>
</article>

<?php } ?>

<?php include('footer.php'); ?>

</body>
</html>