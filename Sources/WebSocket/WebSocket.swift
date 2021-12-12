import Vapor
import Fluent
import FluentSQLiteDriver
import Leaf

public struct WebSocket {
    public private(set) var text = "Hello, World!"
    
    public func configure(_ app: Application) throws {
      // Configure rendering engine
      app.views.use(.leaf)

      // Configure database
      app.databases.use(.sqlite(), as: .sqlite)
      app.migrations.add(CreateQuestion())
      app.http.server.configuration.hostname = "0.0.0.0"
      app.http.server.configuration.port = 9001
      
      // Run migrations at app startup.
      try app.autoMigrate().wait()

      // register routes
      try routes(app)
    }

    public init() {
        guard var env = try? Environment.detect() else {
            return
        }
        try? LoggingSystem.bootstrap(from: &env)
        let app = Application(env)
        defer { app.shutdown() }
        try? configure(app)
        try? app.run()
    }
}
