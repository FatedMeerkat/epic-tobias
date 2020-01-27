import Foundation
import TelegramBotSDK
import Cocoa

let bot = TelegramBot(token: "T0:KEN1337666")
let router = Router(bot: bot)

while let update = bot.nextUpdateSync() {
    if let message = update.message, let from = message.from, let text = message.text {
        if text == "/launchcalc" {
            bot.sendMessageAsync(chatId: from.id, text: "Launching Calculator.app.\n")
            NSWorkspace.shared.launchApplication("Calculator.app")
        }
    }
}
