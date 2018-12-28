//
//  UpgradeCommandSpec.swift
//  MasKitTests
//
//  Created by Ben Chatelain on 2018-12-28.
//  Copyright © 2018 mas-cli. All rights reserved.
//

@testable import MasKit
import Result
import Quick
import Nimble

class UpgradeCommandSpec: QuickSpec {
    override func spec() {
        describe("upgrade command") {
            it("updates stuff") {
                let cmd = UpgradeCommand()
                let result = cmd.run(UpgradeCommand.Options(apps: [""]))
                print(result)
//                expect(result).to(beSuccess())
            }
        }
    }
}
