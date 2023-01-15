set -e

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

curl -0 -v -X POST http://localhost:8080/api/v0/users \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"name": "v.ivanov"
}
EOF

curl -0 -v -X PUT http://localhost:8080/api/v0/users/v.ivanov \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"contacts": {
		"call": "+7 33333333",
		"email": "v.ivanov@student.com",
		"slack": "v.ivanov",
		"sms": "+7 33333333"
	},
	"full_name": "Vacheslav Ivanov",
	"photo_url": null,
	"time_zone": "Europe/Moscow",
	"active": 1
}
EOF

curl -0 -v -X POST http://localhost:8080/api/v0/users \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"name": "k.puchkov"
}
EOF

curl -0 -v -X PUT http://localhost:8080/api/v0/users/k.puchkov \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"contacts": {
		"call": "+7 2222222",
		"email": "k.puchkov@student.com",
		"slack": "k.puchkov",
		"sms": "+7 2222222"
	},
	"full_name": "Konstantin Puchkov",
	"photo_url": null,
	"time_zone": "Europe/Moscow",
	"active": 1
}
EOF

curl -0 -v -X POST http://localhost:8080/api/v0/users \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"name": "r.rachkov"
}
EOF

curl -0 -v -X PUT http://localhost:8080/api/v0/users/r.rachkov \
	-H "Expect:" \
	-H 'Content-Type: application/json; charset=utf-8' \
	--data-binary @- << EOF
{
	"contacts": {
		"call": "+7 2222222",
		"email": "r.rachkov@student.com",
		"slack": "r.rachkov",
		"sms": "+7 2222222"
	},
	"full_name": "Roman Rachkov",
	"photo_url": null,
	"time_zone": "Europe/Moscow",
	"active": 1
}
EOF

curl GET http://localhost:8080/api/v0/users | json_pp
