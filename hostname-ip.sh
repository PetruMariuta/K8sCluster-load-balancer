#!/bin/sh



pod=$(kubectl -n namespace3 get pods )
kubectl exec -it $pod -- sh

hostName=$(hostname)
#ip=$(hostname -I | head -n 1)
ip=$(hostname -I | awk '{print $1}') 

#/var/www/html/index.html
rm /var/www/html/index.html
#cat > index.html << EOF
cat > /var/www/html/index.html << EOF


<!DOCTYPE html>
 <html>
    <head>
      <title>Task 3 oct frontend</title>
    </head>
    <body>
      <h1> $hostName  </h1>
      <h1> $ip </h1>
    </body>
</html>
EOF