for x
do
  F=$(echo "$x" | openssl enc -e -aes-256-cbc -a -pass env:TURTLE | tr '/\n' '_@')
  openssl enc -e -aes-256-cbc -pass env:TURTLE < "$x" > "$F"
done
