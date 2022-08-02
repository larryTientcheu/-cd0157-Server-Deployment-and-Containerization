export TOKEN=`curl -d '{"email":"udacity@gmail.com","password":"password"}' -H "Content-Type: application/json" -X POST http://a83d0799fd6ad4f458f18dee7a587ffe-1927190338.us-east-2.elb.amazonaws.com/auth  | jq -r '.token'`

curl --request GET 'http://a83d0799fd6ad4f458f18dee7a587ffe-1927190338.us-east-2.elb.amazonaws.com/contents' -H "Authorization: Bearer ${TOKEN}" | jq



curl --request GET 'localhost:8080/contents' -H "Authorization: Bearer ${TOKEN}" | jq 