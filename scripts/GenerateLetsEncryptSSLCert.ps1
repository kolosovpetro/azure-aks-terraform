$domain = "devtest.team";
$email = "kolosovp94@gmail.com";
$server = "https://acme-v02.api.letsencrypt.org/directory";

certbot certonly `
    --manual `
    --preferred-challenges=dns `
    --email $email `
    --server $server `
    -d "*.$domain" `
    -d "$domain"

nslookup -type=txt _acme-challenge.$domain

kubectl create secret tls my-tls-secret `
    --cert=fullchain.pem `
    --key=privkey.pem

# From folder C:\Certbot\live\mangomesenger.company in CMD as Admin
type fullchain.pem privkey.pem > bundle.pem

openssl pkcs12 -export -out "certificate_combined.pfx" -inkey "privkey.pem" -in "cert.pem" -certfile bundle.pem

# Import to kubernetes

kubectl create secret tls tls-secret --cert=fullchain.pem --key=privkey.pem

kubectl delete secret my-tls-secret --namespace event-triangle
kubectl create secret tls my-tls-secret --cert=fullchain.pem --key=privkey.pem --namespace event-triangle
