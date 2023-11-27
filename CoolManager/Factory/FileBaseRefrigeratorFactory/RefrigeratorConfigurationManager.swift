import Foundation
struct RefrigeratorConfigurationManager {
    let fileURL: URL

    init(fileURL: URL) {
        self.fileURL = fileURL
    }

    func loadConfigurations() throws -> [RefrigeratorConfiguration] {
        let content = try String(contentsOf: fileURL)
        let lines = content.components(separatedBy: .newlines).filter { !$0.isEmpty }
        let configurations = lines.map { line -> RefrigeratorConfiguration in
            let trimmedLine = line.trimmingCharacters(in: .whitespacesAndNewlines)
            let values = trimmedLine.components(separatedBy: ",")
            return RefrigeratorConfiguration(from: values)
        }
        return configurations
    }
}

