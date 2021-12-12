import Vapor
import Fluent

enum WebSocketSendOption {
  case id(UUID), socket(WebSocket)
}

class WebSocketController {
  let lock: Lock
  var sockets: [UUID: WebSocket]
  let db: Database
  let logger: Logger
  
  init(db: Database) {
    self.lock = Lock()
    self.sockets = [:]
    self.db = db
    self.logger = Logger(label: "WebSocketController")
  }
  
  func connect(_ ws: WebSocket) {
    
  }
  
  func send<T: Codable>(message: T, to sendOption: WebSocketSendOption) {
    
  }
  
  func onData(_ ws: WebSocket, _ data: Data) {
  }
}
