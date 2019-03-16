import JVConstraintEdges

open class TableViewCellInnerContentView: UITableViewCell {
    
    public let innerContentView = UIView()
    
    private var didSetConstraints = false
    
    public func set(edges: ConstraintEdges) {
        #if DEBUG
        assert(!didSetConstraints)
        didSetConstraints = true
        #endif
        innerContentView.fill(toSuperview: contentView, edges: edges)
    }
}
