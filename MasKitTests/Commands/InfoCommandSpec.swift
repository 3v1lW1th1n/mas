//
//  InfoCommandSpec.swift
//  MasKitTests
//
//  Created by Ben Chatelain on 2018-12-28.
//  Copyright © 2018 mas-cli. All rights reserved.
//

@testable import MasKit
import Result
import Quick
import Nimble

class InfoCommandSpec: QuickSpec {
    override func spec() {
        describe("Info command") {
            it("displays app details") {
                let cmd = InfoCommand()
                let result = cmd.run(InfoCommand.Options(appId: ""))
                print(result)
//                expect(result).to(beSuccess())
            }
        }
    }
}
