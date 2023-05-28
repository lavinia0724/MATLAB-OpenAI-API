% <source>@gmail.com 換成你的信箱
% username = '<source user name>';
% password = convertCharsToStrings(getenv("Passwd"));
% mail = '<source>@gmail.com';

setpref('Internet', 'E_mail', mail);
setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
setpref('Internet', 'SMTP_Username', username);
setpref('Internet', 'SMTP_Password', password);
myprops = java.lang.System.getProperties;
myprops.setProperty('mail.smtp.auth', 'true');
myprops.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
myprops.setProperty('mail.smtp.socketFactory.port', '465');

% <<destination>@gmail.com> 換成你的寄信目標
% <file path> 換成你的檔案路徑
% sendmail('<destination>@gmail.com','Introduction to Cloud Computing Homework''The attached file is my Matlab homework Code, Thanks!', ...'See the attached files for more info.',{'<file path>'});
