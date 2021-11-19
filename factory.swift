protocol Environment {
    var identifier: String { get }
}

class DevEnvironment: Environment {
    var identifier: String { return "dev" }
}

class LiveEnvironment: Environment {
    var identifier: String { return "live" }
}

class EnvironmentFactory {

    enum EnvType {
        case dev
        case live
    }

    func create(_ type: EnvType) -> Environment {

        switch type {
            case .dev:
                return DevEnvironment()
            case .live:
                return LiveEnvironment()
        }

    }

}

let factory = EnvironmentFactory()
let dev = factory.create(.dev)
print(dev.identifier)