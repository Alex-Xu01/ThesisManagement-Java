<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理系统</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery/jQuery-2.2.0.min.js"></script>
    <script src="js/charts/Chart.js"></script>
</head>
<body>
<div id="areascontent">
    <div class="rows" style="margin-bottom: 0.8%; overflow: hidden;">
        <div style="float: left; width: 100%;">
            <div style="height: 100%; border: 1px solid #e6e6e6; overflow: hidden;">
                <div class="dashboard-stats">
                    <div class="dashboard-stats-item" style="background-color: #578ebe;">
                        <div class="stat-icon">
                            <i class="fa fa-user"></i>
                        </div>
                        <h2 class="m-top-none">${accountNumber}<span style="font-size:30px">个</span></h2>
                        <h5>账户个数</h5>
                    </div>
                </div>
                <div class="dashboard-stats">
                    <div class="dashboard-stats-item" style="background-color: #e35b5a;">
                        <h2 class="m-top-none">${depNumber}<span style="font-size:30px">个</span></h2>
                        <h5>系部个数</h5>
                        <div class="stat-icon">
                            <i class="fa fa-group"></i>
                        </div>
                    </div>
                </div>
                <div class="dashboard-stats">
                    <div class="dashboard-stats-item" style="background-color: #d58512;">
                        <h2 class="m-top-none">${passNumber}<span style="font-size:30px">篇</span></h2>
                        <h5>已审核论文</h5>
                        <div class="stat-icon">
                            <i class="fa fa-check"></i>
                        </div>
                    </div>
                </div>
                <div class="dashboard-stats">
                    <div class="dashboard-stats-item" style="background-color: #44b6ae;">
                        <h2 class="m-top-none">${failedNumber}<span style="font-size:30px;">篇</span></h2>
                        <h5>未审核论文</h5>
                        <div class="stat-icon">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>

        .dashboard-stats {
            float: left;
            width: 50%;
        }

        .dashboard-stats-item {
            position: relative;
            overflow: hidden;
            color: #fff;
            cursor: pointer;
            height: 200px;
            margin-right: 10px;
            margin-bottom: 10px;
            padding-left: 15px;
            padding-top: 20px;
        }

        .dashboard-stats-item .m-top-none {
            margin-top: 13px;
            margin-left: 70%;
            text-align: right;
            margin-right: 28px;

        }

        .dashboard-stats-item h2 {
            font-size: 85px;
            font-family: inherit;
            line-height: 1.7;
            font-weight: 500;
            padding-left: 70px;
        }

        .dashboard-stats-item h2 span {
            font-size: 50px;
            padding-left: 10px;
        }

        .dashboard-stats-item h5 {
            font-size: 40px;
            margin-top: -155px;
            padding-left: 100px;
        }

        .dashboard-stats-item .stat-icon {
            position: absolute;
            top: 18px;
            font-size: 50px;
            opacity: .3;
            margin-left: 30px;
        }

        .dashboard-stats i.fa.stats-icon {
            width: 50px;
            padding: 20px;
            font-size: 50px;
            text-align: center;
            color: #fff;
            height: 50px;
            border-radius: 10px;
        }

        .panel-default {
            border: none;
            border-radius: 0px;
            margin-bottom: 0px;
            box-shadow: none;
            -webkit-box-shadow: none;
        }

        .panel-default > .panel-heading {
            color: #777;
            background-color: #fff;
            border-color: #e6e6e6;
            padding: 10px 10px;
        }

        .panel-default > .panel-body {
            padding: 10px;
            padding-bottom: 0px;
        }

        .panel-default > .panel-body ul {
            overflow: hidden;
            padding: 0;
            margin: 0px;
            margin-top: -5px;
        }

        .panel-default > .panel-body ul li {
            line-height: 27px;
            list-style-type: none;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        .panel-default > .panel-body ul li .time {
            color: #a1a1a1;
            float: right;
            padding-right: 5px;
        }
    </style>
</body>
</html>
