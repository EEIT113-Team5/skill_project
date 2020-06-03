package scheduler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.quartz.CronExpression;

public class CronExpParser {
	public static boolean parser(String cronExpression, String cronDate, List<String> result) {
		if (cronExpression == null || cronExpression.length() < 1 || cronDate == null || cronDate.length() < 1) {
			return false;
		} else {
			CronExpression exp = null;
			// 初始化
			try {
				exp = new CronExpression(cronExpression);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}

			// 定義時間範圍
			// 定義開始時間
			Calendar c = Calendar.getInstance();
			String sStart = cronDate + " 00:00:00";
			SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date dStart = null;
			try {
				dStart = sdf.parse(sStart);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			c.setTime(dStart);
			c.add(Calendar.SECOND, -1);
			dStart = c.getTime();

			// 定義結束時間
			c.add(Calendar.DATE, 1);
			Date dEnd = c.getTime();

			// 生成时间序列
			java.util.Date dd = dStart;
			dd = exp.getNextValidTimeAfter(dd);
			while ((dd.getTime() >= dStart.getTime()) && (dd.getTime() <= dEnd.getTime())) {
				result.add(sdf.format(dd));
				dd = exp.getNextValidTimeAfter(dd);
			}
			exp = null;
		}
		return true;
	}

	public static String translateToChinese(String cronExp) {
		if (cronExp == null || cronExp.length() < 1) {
			return "cron表達式為空";
		}
		CronExpression exp = null;
		// 初始化
		try {
			exp = new CronExpression(cronExp);
		} catch (ParseException e) {
			return "corn表達式不正確";
		}
		String[] tmpCorns = cronExp.split(" ");
		StringBuffer sBuffer = new StringBuffer();
		if (tmpCorns.length == 6) {
			// 解析月
			if (!tmpCorns[4].equals("*")) {
				if(tmpCorns[4].contains("/")) {
					String[] month = tmpCorns[4].split("/");
					sBuffer.append("每").append(month[1]).append("個月");
				}else {
					sBuffer.append(tmpCorns[4]).append("月");
				}
			} else {
				sBuffer.append("每月");
			}
			// 解析周
			if (!tmpCorns[5].equals("*") && !tmpCorns[5].equals("?")) {
				char[] tmpArray = tmpCorns[5].toCharArray();
				for (char tmp : tmpArray) {
					switch (tmp) {
					case '1':
						sBuffer.append("星期天");
						break;
					case '2':
						sBuffer.append("星期一");
						break;
					case '3':
						sBuffer.append("星期二");
						break;
					case '4':
						sBuffer.append("星期三");
						break;
					case '5':
						sBuffer.append("星期四");
						break;
					case '6':
						sBuffer.append("星期五");
						break;
					case '7':
						sBuffer.append("星期六");
						break;
					case '-':
						sBuffer.append("至");
						break;
					default:
						sBuffer.append(tmp);
						break;
					}
				}
			}

			// 解析日
			if (!tmpCorns[3].equals("?")) {
				if (!tmpCorns[3].equals("*")) {
					if(tmpCorns[4].contains("/")) {
						String[] day = tmpCorns[3].split("/");
						sBuffer.append("每").append(day[1]).append("日");
					}else {
						sBuffer.append(tmpCorns[3]).append("日");
					}
				} else {
					sBuffer.append("每日");
				}
			}

			// 解析時
			if (!tmpCorns[2].equals("*")) {
				if(tmpCorns[2].contains("/")) {
					String[] hour = tmpCorns[2].split("/");
					sBuffer.append("每").append(hour[2]).append("小時");
				}else {
					sBuffer.append(tmpCorns[2]).append("時");
				}
			} else {
				sBuffer.append("每時");
			}

			// 解析分
			if (!tmpCorns[1].equals("*")) {
				if(tmpCorns[1].contains("/")) {
					String[] min = tmpCorns[1].split("/");
					sBuffer.append("每").append(min[1]).append("分");
				}else {
					sBuffer.append(tmpCorns[1]).append("分");
				}
			} else {
				sBuffer.append("每分");
			}

			// 解析秒
			if (!tmpCorns[0].equals("*")) {
				if(tmpCorns[0].contains("/")) {
					String[] sec = tmpCorns[0].split("/");
					sBuffer.append("每").append(sec[1]).append("秒");
				}else {
					sBuffer.append(tmpCorns[0]).append("秒");
				}
			} else {
				sBuffer.append("每秒");
			}
		}

		return sBuffer.toString();

	}
}
