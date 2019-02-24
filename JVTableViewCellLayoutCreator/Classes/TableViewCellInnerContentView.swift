import JVConstraintEdges

open class TableViewCellInnerContentView: UITableViewCell {
    
    private static let innerContentViewEdges = ConstraintEdges(height: 15, width: 15)
    
    public let innerContentView = UIView()
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier!)
        
        innerContentView.fill(toSuperview: contentView, edges: TableViewCellInnerContentView.innerContentViewEdges)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
