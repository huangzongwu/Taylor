import Foundation

let taylor = Taylor(port: 8080)
        
//What is going on
let router = Router()
let route = Route(m: .GET, path: "/") {
    (request: Request, response: Response) in
    
    response.stringBody = "<h1>TAYLOR, SWIFT</h1>"
    response.headers["Content-type"] = "text/html"
    response.send()
    
    return true
}
router.addRoute(route)
taylor.router = router

//Cool way
taylor.get("/irene") {
    (request: Request, response: Response) in
    
    response.stringBody = "Te quiero peque"
    response.send()
    
    return true
}

taylor.startListening()
