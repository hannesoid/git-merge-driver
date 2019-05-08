//
//  MergeTests.swift
//  MergeTests
//
//  Created by Hannes Oud on 02.05.19.
//  Copyright © 2019 IdeasOnCanvas GmbH. All rights reserved.
//

import GitBothingMerger
import XCTest

class MergeTests: XCTestCase {

    func testMerging() {
        Merger()
    }

}


enum Samples {

    struct Sample1 {
        let file1 =
        """
        # MindNode Testing Suggestions

        > ### Pull Request Title #PR-Number
        > - [iOS | macOS]: Area to Focus on during Testing

        ## Unassigned

        ### Fix derived style after drag-and-drop on iOS #4721

        """

        let file2 =
        """
        # MindNode Testing Suggestions

        > ### Pull Request Title #PR-Number
        > - [iOS | macOS]: Area to Focus on during Testing

        ## Unassigned

        ### Master Entry #5678
        Some entry which conflicts with other

        ### Fix derived style after drag-and-drop on iOS #4721

        """

        let expectedResult =
        """
        # MindNode Testing Suggestions

        > ### Pull Request Title #PR-Number
        > - [iOS | macOS]: Area to Focus on during Testing

        ## Unassigned

        ### Master Entry #5678
        Some entry which conflicts with other

        ### Local Entry #1234
        Some entry which conflicts with other

        ### Fix derived style after drag-and-drop on iOS #4721

        """
    }
}
