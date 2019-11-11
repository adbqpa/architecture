//
//  dclife
//

import Foundation

public enum Main {
    public enum UI {
        public enum Flow {}
        public enum Service {}
        public enum Model {}
        public enum Controller {
            public typealias First = ControllerFirst
            public typealias Second = ControllerSecond
        }
    }
}
