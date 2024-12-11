
import UIKit

extension NSLayoutConstraint {
    open class func activate(_ constraints: [NSLayoutConstraint], translatesAutoresizingMaskIntoConstraints: Bool) {
        for constraint in constraints {
            if let view = constraint.firstItem as? UIView {
                view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
            }
        }
        NSLayoutConstraint.activate(constraints)
    }
}
