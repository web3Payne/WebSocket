import Fluent
import Vapor
import Leaf

struct QuestionsController: RouteCollection {
  let wsController: WebSocketController
  
  func boot(routes: RoutesBuilder) throws {
//    routes.webSocket("socket", onUpgrade: self.webSocket)
    routes.get(use: index)
//    routes.post(":questionId", "answer", use: answer)
  }
  
  func webSocket(req: Request, socket: WebSocket) {
    self.wsController.connect(socket)
  }
  
  struct QuestionsContext: Encodable {
    let questions: [Question]
  }

  func index(req: Request) throws -> EventLoopFuture<View> {
    // 1
    Question.query(on: req.db).all().flatMap {
      // 2
      return req.view.render("questions", QuestionsContext(questions: $0))
    }
  }
}
