
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap Theme by @Graphikaria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="">
    %{--<link rel="stylesheet" href="assets/css/bootstrap.min.css">--}%
    %{--<link rel="stylesheet" href="assets/css/theme.css">--}%
    %{--<link rel="stylesheet" href="assets/css/font-awesome.min.css">--}%
    %{--<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">--}%

    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap-select.min.css')}" type="text/css">
    <!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
<!-- Main Navbar -->
<nav class="navbar navbar-default navbar-static-top" role="navigation">
    <section class="wrapper-xs bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-10">
                    <i class="fa fa-question-circle"></i> Have any question? Email us at <i class="fa fa-envelope"></i> <a href="#link"><span class="text-light">info@interstatelovesong.com</span></a>
                </div><!-- /.col -->
                <div class="col-sm-12 col-md-2">
                    <ul class="list-inline no-margin-bottom">
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-twitter"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-facebook"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-pinterest"></i></a></li>
                    </ul>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.wrapper -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo-dark.png" alt="Website Logo">
            </a>
        </div>
        <!-- Navbar -->
        <div class="collapse navbar-collapse navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="index.html">Home</a>
                </li>
                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Real Estate <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="search_results.html">Search Results</a></li>
                        <li><a href="item_page.html">Item Page</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Agents <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="team.html">All Agents</a></li>
                        <li><a href="team_member.html">Agent Profile</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Corporate <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact 1</a></li>
                        <li><a href="contact_2.html">Contact 2</a></li>
                        <li><a href="login.html">Login/Signup</a></li>
                    </ul>
                </li>
            </ul><!-- /.navbar-nav -->
        </div><!-- /.collapse -->
    </div><!-- /.container -->
</nav><!-- /.navbar -->

<!-- hero -->
<section class="wrapper-lg bg-custom-home">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="widget padding-lg bg-dark">
                    <h1 class="heading-lg text-center text-light">Buy, Sell, or Rent Properties</h1>
                    <br class="spacer-lg">
                    <form action="" class="form-inline">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="">Search:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Personal:">
                                        <option>Apartment</option>
                                        <option>Condo</option>
                                        <option>Villa</option>
                                    </optgroup>
                                    <optgroup label="Business:">
                                        <option>Office</option>
                                        <option>Warehouse</option>
                                        <option>Studio</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Status:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Status:">
                                        <option>Buy</option>
                                        <option>Sale</option>
                                        <option>Rent</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-3">
                                <label for="">Location:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-live-search="true" data-style="btn-primary">
                                    <optgroup label="Location:">
                                        <option>Dubai</option>
                                        <option>Stockholm</option>
                                        <option>Changai</option>
                                        <option>Paris</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Price:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Price:">
                                        <option>Up to $5.000</option>
                                        <option>Up to $10.000</option>
                                        <option>Up to $20.000</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Ready?</label>
                                <button class="btn btn-primary btn-block">Search</button>
                            </div>
                        </div>
                    </form>
                </div><!-- /.widget -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>
<!-- /hero -->

<section class="wrapper-md">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2><i class="fa fa-trophy text-primary"></i> We are offering <span class="text-muted">the best real estate</span> deals</h2>
                <p class="lead">We pride ourselves on taking care of our customers. Between our detailed theme documentation, screencasts tand knowledgebase you’re sure to get up and running in no time.</p>
                <p><a href="#link" class="btn btn-lg btn-primary">Learn More »</a></p>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md bg-highlight">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
        </div><!-- /.row -->
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-md-6">

                <!-- Carousel -->
                <div id="my-carousel" class="carousel slide no-margin-bottom">
                    <!-- indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#my-carousel" data-slide-to="1"></li>
                    </ol>
                    <!-- carousel -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive" src="assets/img/wallpaper.jpg" alt="1200x500" >
                            <div class="carousel-caption visible-lg">
                                <h1>Bootstrap Framework Overhauled<br> Meet the new sexy</h1>
                                <p class="lead">Beautifull Bootstrap skin with overhauled components.</p><br>
                            </div>
                        </div><!-- /.item -->
                        <div class="item">
                            <img class="img-responsive" src="assets/img/wallpaper.jpg" alt="1200x500" >
                            <div class="carousel-caption visible-lg">
                                <h1>We help you being awesome at what you really do</h1>
                                <p class="lead">Providing the best service so you can concentrate on your thing</p>
                            </div>
                        </div><!-- /.item -->
                    </div><!-- /.carousel-inner -->
                <!-- Controls -->
                    <a class="left carousel-control" href="#my-carousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#my-carousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div><!-- /.carousel -->

            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md bg-primary">
    <div class="container">
        <h2 class="text-center headline">Featured This Week</h2>
        <br class="spacer-lg">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail text-default">
                    <div class="overlay-container">
                        <img src="assets/img/item-large.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3 heading-default">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail text-default">
                    <div class="overlay-container">
                        <img src="assets/img/item-large.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3 heading-default">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail text-default">
                    <div class="overlay-container">
                        <img src="assets/img/item-large.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3 heading-default">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail text-default">
                    <div class="overlay-container">
                        <img src="assets/img/item-large.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3 heading-default">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md">
    <div class="container">
        <h2 class="text-center">The Southern Graphikaria Real Estate Market Is About To Skyrocket</h2>
        <p class="text-center lead">Very affordable 2 bedroom 2 bathroom beachfront homes.</p>
        <br class="spacer-lg">
        <div class="row">
            <div class="col-sm-12 col-md-4 text-center">
                <div class="widget padding-md bg-primary">
                    <h2><i class="fa fa-list"></i> Listing</h2>
                    <p class="lead">We have already sold more than 5,000 Homes and we are still going at very good pace. </p>
                </div>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-4 text-center">
                <div class="widget padding-md bg-info">
                    <h2><i class="fa fa-flag"></i> Advertise</h2>
                    <p class="lead">We have already sold more than 5,000 Homes and we are still going at very good pace. </p>
                </div>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-4 text-center">
                <div class="widget padding-md bg-primary">
                    <h2><i class="fa fa-question-circle"></i> Consulting</h2>
                    <p class="lead">We have already sold more than 5,000 Homes and we are still going at very good pace. </p>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<!-- Footer -->
<footer class="footer-container">
    <section class="footer-primary">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <h3>Footer Component</h3>
                    <p>Choose from our favourite tags:</p>
                    <ul class="tags">
                        <li><a href="#link">design</a></li>
                        <li><a href="#link">layout</a></li>
                        <li><a href="#link">stack</a></li>
                        <li><a href="#link">PSD</a></li>
                        <li><a href="#link">bootstrap</a></li>
                        <li><a href="#link">menu</a></li>
                        <li><a href="#link">type</a></li>
                        <li><a href="#link">paper</a></li>
                        <li><a href="#link">press</a></li>
                    </ul>
                </div><!-- /.col -->
                <div class="col-sm-6 col-md-3">
                    <h3>Image Stream List</h3>
                    <p>View our latest stills in Flicker:</p>
                    <ul class="img-stream">
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                        <li><a href="#link"><img class="media-object" data-src="holder.js/55x55" alt="img"></a></li>
                    </ul>
                </div><!-- /.col -->
                <div class="col-sm-6 col-md-3">
                    <h3>Hyperlinks List</h3>
                    <p>Contact us whenever you want:</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-angle-right"></i> <a href="#link">9am-6pm ET Mon-Fri</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#link">US (877) 977-8732</a></li>
                        <li><i class="fa fa-angle-right"></i> <a href="#link">International +1 646 490 1679</a></li>
                    </ul>
                </div><!-- /.col -->
                <div class="col-sm-6 col-md-3">
                    <h3>Social Media List</h3>
                    <p>Stick to the social media hype:</p>
                    <ul class="social-networks">
                        <li><a class="btn btn-twitter" href="#"><i class="fa fa-fw fa-twitter"></i></a></li>
                        <li><a class="btn btn-facebook" href="#"><i class="fa fa-fw fa-facebook"></i></a></li>
                        <li><a class="btn btn-google-plus" href="#"><i class="fa fa-fw fa-google-plus"></i></a></li>
                        <li><a class="btn btn-pinterest" href="#"><i class="fa fa-fw fa-pinterest"></i></a></li>
                    </ul>
                    <p>We are friendly. Give us a ding!</p>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.wrapper-sm -->
    <section class="footer-secondary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="no-margin-bottom">All Rights Reserved ® Designed by <a href="http://twitter.com/graphikaria" target="_blank">@Graphikaria</a></p>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.footer-secondary -->
</footer><!-- /.footer-container --> <!-- End of footer -->

<!-- last but not least the javascript -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


%{--<script>window.jQuery || document.write('<script src="assets/js/jquery-1.8.3.min.js"><\/script>')</script>--}%
%{--<script src="assets/js/bootstrap.min.js"></script>--}%
%{--<script src="assets/js/bootstrap-select.min.js"></script>--}%

<script src="assets/js/holder.js"></script>


<script src="${resource(dir: 'js/theme', file: "bootstrap.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "bootstrap-select.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "jquery-1.8.3.min.js")}"></script>

<script>
    $(document).ready(function(){
        $('.selectpicker').selectpicker();
    });
</script>

<script   src="https://code.jquery.com/jquery-2.0.0.min.js"   integrity="sha256-1IKHGl6UjLSIT6CXLqmKgavKBXtr0/jJlaGMEkh+dhw="   crossorigin="anonymous"></script>
</body>
</html>