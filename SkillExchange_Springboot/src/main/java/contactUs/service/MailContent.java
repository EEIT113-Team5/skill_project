package contactUs.service;

import java.util.List;

import org.springframework.stereotype.Component;

import activity.bean.ActivityBean;

@Component
public class MailContent {
	private String insertContactMail;
	private String replyContactMail;
	private String activityMail;
	private String contactUser;
	private String content;
	private String replyContent;
	private List<ActivityBean> activityBeans;

	public void setContactUser(String contactUser) {
		this.contactUser = contactUser;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getInsertContactMail() {
		insertContactMail = "<table style='background:#fafafa;width:100%;font-family:微軟正黑體;'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center;'>" + 
				"<td class='x_center' align='center' valign='top' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_row x_header' style='border-spacing:0; border-collapse:collapse; padding:0px; vertical-align:top; text-align:center; width:100%;'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_center' align='center' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_container' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:inherit; width:580px; margin:0 auto'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_wrapper x_last' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; padding-right:0px; border-collapse:collapse!important'>" + 
				"<table class='x_twelve x_columns' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:580px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td style='word-break:break-word; padding:0px 0px 10px; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_mark' style='text-align:center'><a href='www.google.co.uk' target='_blank' style='text-align:center; color:#4183C4; text-decoration:none'>" + 
				"<div style='display: inline-block; max-width: 99.9%;'>" + 
				"</a>" + 
				"</div>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"<table class='x_container' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:inherit; width:580px; margin:0 auto'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center; border:1px solid #dddddd; border-radius:3px; background:#fff;'>" + 
				"<td style='word-break:break-word; padding:10px; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_row' style='border-spacing:0; border-collapse:collapse; padding:0px; vertical-align:top; text-align:center; width:100%; display:block'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_wrapper x_last' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; padding-right:0px; border-collapse:collapse!important'>" + 
				"<table class='x_twelve x_columns' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:580px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_no-padding' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_hero-image-wrap' style='overflow:hidden; border-radius:3px 3px 0 0'>" + 
				"<a href='http://github.us11.list-manage.com/track/click?u=9d7ced8c4bbd6c2f238673f0f&amp;id=b91251874a&amp;e=fe54590ab1' target='_blank' style='color:#4183C4; text-decoration:none'>" + 
				"<div style='display: inline-block; max-width: 99.9%;'>" + 
				"<img src='https://www.climbhangar18.com/wp-content/uploads/2016/07/mail.png' alt='Occuly Recruitment' border='0' class='x_hero-image' style='margin:0; padding:0; outline:none; text-decoration:none; height:150px; max-width:100%; border:none; display:block'>" + 
				"</div>" + 
				"</a>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"<div class='x_panel' style='background:#ffffff; background-color:#ffffff;padding:0 20px 20px;width:538px'>" + 
				"<table class='x_twelve x_columns x_panel-contents' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:540px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td style='word-break:break-word; padding:0px 0px 10px; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_content'>" + 
				"<h2 class='x_content-heading' style='color:#333; font-weight:300; padding:0; margin:25px 0 20px; text-align:center; line-height:1; word-break:normal; font-size:22px;font-family:微軟正黑體;'>" + 
				"感謝您的留言，我們將盡快回覆！</h2>" + 
				"<p class='x_copy' style='margin:0 30px; word-wrap:normal;  font-size:16px; font-weight:300; color:#333333; line-height:1.5; padding:0; text-align:left;font-family:微軟正黑體;'>" + 
				"親愛的 "+contactUser+"~<br>" + 
				"已收到您的留言，內容如下：<br>" + 
				"<br>" + content + "<br><br>" + 
				"<span style='font-family:微軟正黑體;'>感謝您的支持，我們將盡快回覆！！！</span><br>" + 
				"</p>" + 
				"<hr style='color: gray;'>" + 
				"<div>" + 
				"<span style='color:#EA0000;font-weight:800;font-size: 1.2em;font-family:微軟正黑體;'>此為系統訊息，請勿回覆。</span><br>" + 
				"</div>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</div>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"";
		return insertContactMail;
	}

	public String getReplyContactMail() {
		replyContactMail = "<table style='background:#fafafa;width:100%;font-family:微軟正黑體;'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center;'>" + 
				"<td class='x_center' align='center' valign='top' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_row x_header' style='border-spacing:0; border-collapse:collapse; padding:0px; vertical-align:top; text-align:center; width:100%;'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_center' align='center' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_container' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:inherit; width:580px; margin:0 auto'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_wrapper x_last' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; padding-right:0px; border-collapse:collapse!important'>" + 
				"<table class='x_twelve x_columns' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:580px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td style='word-break:break-word; padding:0px 0px 10px; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_mark' style='text-align:center'><a href='www.google.co.uk' target='_blank' style='text-align:center; color:#4183C4; text-decoration:none'>" + 
				"<div style='display: inline-block; max-width: 99.9%;'>" + 
				"</a>" + 
				"</div>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"<table class='x_container' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:inherit; width:580px; margin:0 auto'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center; border:1px solid #dddddd; border-radius:3px; background:#fff;'>" + 
				"<td style='word-break:break-word; padding:10px; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<table class='x_row' style='border-spacing:0; border-collapse:collapse; padding:0px; vertical-align:top; text-align:center; width:100%; display:block'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_wrapper x_last' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; padding-right:0px; border-collapse:collapse!important'>" + 
				"<table class='x_twelve x_columns' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:580px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td class='x_no-padding' style='word-break:break-word; padding:0; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_hero-image-wrap' style='overflow:hidden; border-radius:3px 3px 0 0'>" + 
				"<a href='http://github.us11.list-manage.com/track/click?u=9d7ced8c4bbd6c2f238673f0f&amp;id=b91251874a&amp;e=fe54590ab1' target='_blank' style='color:#4183C4; text-decoration:none'>" + 
				"<div style='display: inline-block; max-width: 99.9%;'>" + 
				"<img src='https://www.climbhangar18.com/wp-content/uploads/2016/07/mail.png' alt='Occuly Recruitment' border='0' class='x_hero-image' style='margin:0; padding:0; outline:none; text-decoration:none; height:150px; max-width:100%; border:none; display:block'>" + 
				"</div>" + 
				"</a>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333;  font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"<div class='x_panel' style='background:#ffffff; background-color:#ffffff;padding:0 20px 20px;width:538px'>" + 
				"<table class='x_twelve x_columns x_panel-contents' style='border-spacing:0; border-collapse:collapse; padding:0; vertical-align:top; text-align:center; margin:0 auto; width:540px'>" + 
				"<tbody>" + 
				"<tr style='padding:0; vertical-align:top; text-align:center'>" + 
				"<td style='word-break:break-word; padding:0px 0px 10px; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; border-collapse:collapse!important'>" + 
				"<div class='x_content'>" + 
				"<h2 class='x_content-heading' style='color:#333; font-weight:300; padding:0; margin:25px 0 20px; text-align:center; line-height:1; word-break:normal; font-size:22px;font-family:微軟正黑體;'>" + 
				"管理者已回覆您的留言</h2>" + 
				"<p class='x_copy' style='margin:0 30px; word-wrap:normal;  font-size:16px; font-weight:300; color:#333333; line-height:1.5; padding:0; text-align:left;font-family:微軟正黑體;'>" + 
				"親愛的 "+contactUser+"~<br>" + 
				"已收到您的留言，內容如下：<br>" + 
				"<br>" + content + "<br><br>" +
				"<span style='color:#484891'>管理員回覆內容如下：<br>"+replyContent+ "</span><br><br>" +
				"<span style='font-family:微軟正黑體;'>您的支持是我們進步的動力！！！</span><br>" + 
				"</p>" + 
				"<hr style='color: gray;'>" + 
				"<div>" + 
				"<span style='color:#EA0000;font-weight:800;font-size: 1.2em;font-family:微軟正黑體;'>此為系統訊息，請勿回覆。</span><br>" + 
				"</div>" + 
				"</div>" + 
				"</td>" + 
				"<td class='x_expander' style='word-break:break-word; padding:0!important; vertical-align:top; text-align:center; color:#333333; font-weight:normal; margin:0; line-height:20px; font-size:14px; visibility:hidden; width:0px; border-collapse:collapse!important'>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</div>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"</td>" + 
				"</tr>" + 
				"</tbody>" + 
				"</table>" + 
				"";
		return replyContactMail;
	}

	public String getActivityMail() {
		activityMail = "<style>" + 
				"    /* Basics */" + 
				"    body {" + 
				"        margin: 0 !important;" + 
				"        padding: 0;" + 
				"        background-color: #ffffff;" +
				"    }" +  
				"    table {" + 
				"        border-spacing: 0;" + 
				"        font-family: 微軟正黑體;" + 
				"        color: #333333;" + 
				"    }" + 
				"    td {" + 
				"        padding: 0;" + 
				"    }" + 
				"    img {" + 
				"        border: 0;" + 
				"    }" +  
				"    div[style*='margin: 16px 0'] {" + 
				"        margin: 0 !important;" + 
				"    }" +  
				"    .wrapper {" + 
				"        width: 100%;" + 
				"        table-layout: fixed;" + 
				"        -webkit-text-size-adjust: 100%;" + 
				"        -ms-text-size-adjust: 100%;" + 
				"    }" + 
				"    .webkit {" + 
				"        max-width: 600px;" + 
				"        margin: 0 auto;" + 
				"    }" + 
				"    .outer {" + 
				"        margin: 0 auto;" + 
				"        width: 100%;" + 
				"        max-width: 600px;" + 
				"    }" + 
				"    .full-width-image img {" + 
				"        width: 100%;" + 
				"        max-width: 600px;" + 
				"        height: auto;" + 
				"    }" + 
				"    .inner {" + 
				"        padding: 10px;" + 
				"    }" + 
				"    p {" + 
				"        Margin: 0;" + 
				"    }" + 
				"    a {" + 
				"        color: #ee6a56;" + 
				"        text-decoration: underline;" + 
				"    }" + 
				"    .h1 {" + 
				"        font-size: 21px;" + 
				"        font-weight: bold;" + 
				"        Margin-bottom: 18px;" + 
				"    }" + 
				"    .h2 {" + 
				"        font-size: 18px;" + 
				"        font-weight: bold;" + 
				"        Margin-bottom: 12px;" + 
				"    }" + 
				"    /* One column layout */" + 
				"    .one-column .contents {" + 
				"        text-align: left;" + 
				"    }" + 
				"    .one-column p {" + 
				"        font-size: 14px;" + 
				"        Margin-bottom: 10px;" + 
				"    }" + 
				"    .two-column {" + 
				"        text-align: center;" + 
				"        font-size: 0;" + 
				"    }" + 
				"    .two-column .column {" + 
				"        width: 100%;" + 
				"        max-width: 300px;" + 
				"        display: inline-block;" + 
				"        vertical-align: top;" + 
				"    }" +  
				"    .contents {" + 
				"        width: 100%;" + 
				"    }" + 
				"    .two-column .contents {" + 
				"        font-size: 14px;" + 
				"        text-align: left;" + 
				"    }" + 
				"    .two-column img {" + 
				"        width: 100%;" + 
				"        max-width: 280px;" + 
				"    }" +  
				"    .two-column .text {" + 
				"        padding-top: 10px;" + 
				" font-size: 20px;" + 
				" color:mediumblue;" + 
				"    }" + 
				"    .three-column {" + 
				"        text-align: center;" + 
				"        font-size: 0;" + 
				"        padding-top: 10px;" + 
				"        padding-bottom: 10px;" + 
				"    }" + 
				"    .three-column .column {" + 
				"        width: 100%;" + 
				"        max-width: 200px;" + 
				"        display: inline-block;" + 
				"        vertical-align: top;" + 
				"    }" + 
				"    .three-column .contents {" + 
				"        font-size: 14px;" + 
				"        text-align: center;" + 
				"    }" + 
				"    .three-column img {" + 
				"        width: 100%;" + 
				"        max-width: 180px;" + 
				"        height: auto;" + 
				"    }" +  
				"    .three-column .text {" + 
				"        padding-top: 10px;" + 
				" font-size: 16px;" + 
				" color:mediumblue;" + 
				"    }" + 
				"    /* Left sidebar layout */" + 
				"    .left-sidebar {" + 
				"        text-align: center;" + 
				"        font-size: 0;" + 
				"    }" +  
				"    .left-sidebar .column {" + 
				"        width: 100%;" + 
				"        display: inline-block;" + 
				"        vertical-align: middle;" + 
				"    }" + 
				"    .left-sidebar .left {" + 
				"        max-width: 100px;" + 
				"    }" +  
				"    .left-sidebar .right {" + 
				"        max-width: 500px;" + 
				"    }" + 
				"    .left-sidebar .img {" + 
				"        width: 100%;" + 
				"        max-width: 80px;" + 
				"        height: auto;" + 
				"    }" +  
				"    .left-sidebar .contents {" + 
				"        font-size: 14px;" + 
				"        text-align: center;" + 
				"    }" + 
				"    .left-sidebar a {" + 
				"        color: #85ab70;" + 
				"    }" + 
				"    /*Media Queries*/" + 
				"    @media screen and (max-width: 400px) {" + 
				"        .two-column .column," + 
				"        .three-column .column {" + 
				"            max-width: 100% !important;" + 
				"        }" + 
				"        .two-column img {" + 
				"            max-width: 100% !important;" + 
				"        }" + 
				"        .three-column img {" + 
				"            max-width: 50% !important;" + 
				"        }" + 
				"    }" + 
				"    @media screen and (min-width: 401px) and (max-width: 620px) {" + 
				"        .three-column .column {" + 
				"            max-width: 33% !important;" + 
				"        }" + 
				"        .two-column .column {" + 
				"            max-width: 50% !important;" + 
				"        }" + 
				"    }" + 
				"</style>" + 
				"<div class='wrapper'>" + 
				"    <div class='webkit'>" + 
				"        <table class='outer' text-align='center'>" + 
				"            <tr>" + 
				"                <td class='full-width-image'>" + 
				"                    <br>" + 
				"                    <h2 style='font-family: 微軟正黑體;'>親愛的會員！以下是最新的活動訊息，趕快來參加吧~</h2>" + 
				"                </td>" + 
				"            </tr>" + 
				"            <tr>" + 
				"                <td class='two-column'>" + 
				"                    <div class='column'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                    <table class='contents'>" + 
				"                                        <tr>" + 
				"                                            <td>" + 
				"                                                <img src='https://cdn.tourradar.com/s3/serp/original/210322_TL6VlkyV.jpeg'" + 
				"                                                    width='280'height='187'alt='' />" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                        <tr>" + 
				"                                            <td class='text'>" + 
				"                                                北海道方言同好交流會" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                    </table>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"" + 
				"                    <div class='column'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                    <table class='contents'>" + 
				"                                        <tr>" + 
				"                                            <td>" + 
				"                                                <img src='https://images.unsplash.com/photo-1575385151519-05e02c4f734f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1850&q=80'" + 
				"                                                    width='280' height='187' alt='' />" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                        <tr>" + 
				"                                            <td class='text'>" + 
				"                                                德文同好交流會" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                    </table>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                </td>" + 
				"            </tr>" + 
				"            <tr>" + 
				"                <td class='three-column'>" + 
				"" + 
				"                    <div class='column'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                    <table class='contents'>" + 
				"                                        <tr>" + 
				"                                            <td>" + 
				"                                                <img src='https://www.knkx.org/sites/kplu/files/styles/medium/public/202004/geert-pieters-8QrPJ3Kfie4-unsplash.jpg'" + 
				"                                                    width='180' alt='' />" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                        <tr>" + 
				"                                            <td class='text'>" + 
				"                                                爵士鋼琴基礎和弦講座" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                    </table>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                    <div class='column'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                    <table class='contents'>" + 
				"                                        <tr>" + 
				"                                            <td>" + 
				"                                                <img src='https://i0.wp.com/queretanizate.com/wp-content/uploads/2019/06/jens-thekkeveettil-2538-unsplash.jpg?fit=800%2C533&ssl=1'" + 
				"                                                    width='180' alt='' />" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                        <tr>" + 
				"                                            <td class='text'>" + 
				"                                                薩克斯風同好會" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                    </table>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                    <div class='column'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                    <table class='contents'>" + 
				"                                        <tr>" + 
				"                                            <td>" + 
				"                                                <img src='https://miro.medium.com/max/1400/0*rUpzTIj8H8iZH-mH'" + 
				"                                                    width='180' alt='' />" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                        <tr>" + 
				"                                            <td class='text'>" + 
				"                                                鋼弦吉他同好交流" + 
				"                                            </td>" + 
				"                                        </tr>" + 
				"                                    </table>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                </td>" + 
				"            </tr>" + 
				"            <tr>" + 
				"                <td class='left-sidebar'>" + 
				"" + 
				"                    <div class='column left'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner'>" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                    <div class='column right'>" + 
				"                        <table width='100%'>" + 
				"                            <tr>" + 
				"                                <td class='inner contents'>" + 
				"                                    COPYRIGHT 2020. ALL RIGHTS RESERVED.<br>" + 
				"Design And Developed By SkillExchange Team" + 
				"                                </td>" + 
				"                            </tr>" + 
				"                        </table>" + 
				"                    </div>" + 
				"                </td>" + 
				"            </tr>" + 
				"        </table>" + 
				"    </div>" + 
				"</div>";
		return activityMail;
	}

	public void setActivityBeans(List<ActivityBean> activityBeans) {
		this.activityBeans = activityBeans;
	}


	
	
}
