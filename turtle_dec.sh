for x
do
  F=$(echo "$x" | tr '_@' '/\n' | openssl enc -d -aes-256-cbc -pass env:TURTLE -a)
  openssl enc -d -aes-256-cbc -pass env:TURTLE < "$x" > "$F"
done
