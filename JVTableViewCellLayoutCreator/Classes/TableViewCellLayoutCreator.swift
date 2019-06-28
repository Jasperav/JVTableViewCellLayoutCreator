import JVConstraintEdges
import UIKit

public class TableViewCellLayoutCreator: ViewModelCreator {
    
    public class func layout(cell: TableViewCellInnerContentView,
                             middleView: UIView,
                             leadingView: UIView? = nil,
                             trailingView: UIView? = nil,
                             edges: ConstraintEdges = .zero) {
        layout(view: cell.innerContentView, middleView: middleView, leadingView: leadingView, trailingView: trailingView, edges: edges)
    }
}
