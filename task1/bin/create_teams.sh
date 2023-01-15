curl -0 -v DELETE http://localhost:8080/api/v0/teams/team-foo 


curl -0 -v -X PUT http://localhost:8080/api/v0/teams/team-foo \
 	-H "Expect:" \
 	-H 'Content-Type: application/json; charset=utf-8' \
 	--data-binary @- << EOF
{
    "name": "team-foo", "scheduling_timezone": "US/Pacific"
}
EOF

curl DELETE http://localhost:8080/api/v0/teams/team-bar

curl -0 -v -X PUT http://localhost:8080/api/v0/teams/team-bar \
 	-H "Expect:" \
 	-H 'Content-Type: application/json; charset=utf-8' \
 	--data-binary @- << EOF
{
    "name": "team-bar", "scheduling_timezone": "US/Pacific"
}
EOF

curl http://localhost:8080/api/v0/teams | json_pp
