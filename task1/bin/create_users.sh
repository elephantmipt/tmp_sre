curl -0 -v -X POST http://localhost:8080/api/v0/users \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"name": "s.petrov"
}
EOF

curl -0 -v -X PUT http://localhost:8080/api/v0/users/s.petrov \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"contacts": {
		"call": "+7 111-111-1111",
		"email": "s.petrov@student.com",
		"slack": "s.petrov",
		"sms": "+7 111-111-1111"
	},
	"full_name": "Sergey Petrov",
	"photo_url": null,
	"time_zone": "Europe/Moscow",
	"active": 1
}
EOF


