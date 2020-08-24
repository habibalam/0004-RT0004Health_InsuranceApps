package com.app.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import com.app.model.AdminUser;


@Component
public class MyMailService {
   
	@Autowired
	private JavaMailSender mailSender;
	
	/*public boolean sendEmail(
			 String to,
			 String cc[],
			 String bcc[],
			 String subject,
			 String text,
			 FileSystemResource file
			                  )
	
	  {
		boolean flag=false;
		try {
		  //1create MimeMessage
		MimeMessage	message=mailSender.createMimeMessage();
		
		//crate Mime mesage  helper class obj
		MimeMessageHelper helper=new MimeMessageHelper(message,file!=null?true:false);
		//set the details
		helper.setTo(to);	
		helper.setSubject(subject);
		helper.setText(text);
		
		if(cc!=null && cc.length>0)
			helper.setCc(cc);
		if(bcc!=null && bcc.length>0)
			helper.setBcc(bcc);
		if(file!=null)
        helper.addAttachment(file.getFilename(), file);
		
		//send mail
		mailSender.send(message);
		flag=true;
		
		} catch (Exception e) {
		 e.printStackTrace();
		}
		
		
		return flag;
	}*/
	
	
	
	
	 public boolean sendUserAccountUnclockEmail(AdminUser user) {
			try {

				MimeMessage mimeMsg = mailSender.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(mimeMsg);

				helper.setTo(user.getEmail());
				helper.setSubject("Unlock your Account");
				helper.setText(getUnlockAccEmailBody(user),true);
				
				mailSender.send(mimeMsg);

				return true;
			} catch (Exception e) {

			}
			return false;
		}




	private String getUnlockAccEmailBody(AdminUser user) throws IOException {
		StringBuffer sb = new StringBuffer("");

		FileReader fr = new FileReader("UNLOCK-ACC-EMAIL-BODY-TEMPLATE.txt");
		BufferedReader br = new BufferedReader(fr);
		String line = br.readLine();

		while (line != null) {
			sb.append(line);
			line = br.readLine();
		}
		
		br.close();
		// format mail body
				String mailBody = sb.toString();
				mailBody = mailBody.replace("{FNAME}", user.getFirstName());
				mailBody = mailBody.replace("{LNAME}", user.getLastName());
				mailBody = mailBody.replace("{TEMP-PWD}",user.getPassword());
				mailBody = mailBody.replace("{EMAIL}", user.getEmail());

				return mailBody;
	
	
	
	}	
	
}
