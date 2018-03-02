import Kitura
import HeliumLogger
import CouchDB

public class AppBackend {
    public static func run(){
        HeliumLogger.use()

        let connProperties = ConnectionProperties(
            host: "127.0.0.1",      // httpd address
            port: 5984,             // httpd port
            secured: false,         // https or http
            username: "candost",        // admin username
            password: "password"       // admin password
        )

        let db = Database(connProperties: connProperties, dbName: "kitura_test_db")
        let dbInteraction = DatabaseInteraction(db: db)
        let app = MainRouter(db: dbInteraction)

        Kitura.addHTTPServer(onPort: 8090, with: app.router)
        Kitura.run()
    }
}