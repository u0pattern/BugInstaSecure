print "\nUsername => ";
chomp(my $username=<STDIN>);
print "\nPassword => ";
chomp(my $password=<STDIN>);
print "\nCookie => ";
chomp(my $Cookie=<STDIN>);
print "\nToken => ";
chomp(my $Token=<STDIN>);
system("curl -i -s -k -X 'POST' \ -H 'Host: www.instagram.com' \ -H 'User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0)' -H 'Accept: */*' -H 'Accept-Language: ar,en-US;q=0.7,en;q=0.3' \ -H 'Accept-Encoding: gzip, deflate, br' \ -H 'X-CSRFToken: $Token' \ -H 'X-Instagram-AJAX: 1' \ -H 'Content-Type: application/json' \ -H 'X-Requested-With: XMLHttpRequest' \ -H 'Referer: https://www.instagram.com/' \ -H 'Content-Length: 40' \ -b '$Cookie' \ --data '{'username': '$username', 'password': '$password'} \ 'https://www.instagram.com/accounts/login/ajax/'")
