export class Hw_user{
  auth:Auth

  constructor(name:string,password:string,domain:string) {
this.auth={
    "identity": {
      "methods": [
        "password"
      ],
      "password": {
        "user": {
          "domain": {
            "name": domain      //IAM用户所属账号名
          },
          "name": name,             //IAM用户名
          "password": password      //IAM用户密码
        }
      }
    },
    "scope": {
      "domain": {
        "name": domain        //IAM用户所属账号名
      }
    }
  }
}
  }


interface Auth{
  identity:Identity
    scope:Scope
}

interface Identity{
  methods:string[]
  password:Password
}

interface Password{
  user:User
}

interface User{
  name:string
  password:string
  domain:Domain
}

interface Domain{
  name:string
}

interface Scope{
  domain:Domain
}