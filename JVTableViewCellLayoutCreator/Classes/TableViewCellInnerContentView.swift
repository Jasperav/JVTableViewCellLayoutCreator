import JVConstraintEdges

open class TableViewCellInnerContentView: UITableViewCell {
    
    open class var edges: ConstraintEdges {
        fatalError()
    }
    
    public let innerContentView = UIView()
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        innerContentView.fill(toSuperview: contentView, edges: type(of: self).edges)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
