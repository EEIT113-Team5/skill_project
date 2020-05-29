package contactUs.service;

import org.springframework.stereotype.Component;

@Component
public class MailContent {
	private String insertContactMail;
	private String replyContactMail;
	private String contactUser;
	private String content;
	private String replyContent;

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


	
	
}
