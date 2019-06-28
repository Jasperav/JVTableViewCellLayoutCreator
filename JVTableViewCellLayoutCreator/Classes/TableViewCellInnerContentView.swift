import JVConstraintEdges

open class TableViewCellInnerContentView: UITableViewCell {
    
    open class var edges: ConstraintEdges {
        return ConstraintEdges(height: 5, width: 5)
    }
    
    public let innerContentView = UIView()
    
    public private (set) var topConstraint: NSLayoutConstraint!
    public private (set) var bottomConstraint: NSLayoutConstraint!
    public private (set) var leadingConstraint: NSLayoutConstraint!
    public private (set) var trailingConstraint: NSLayoutConstraint!
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let edges = type(of: self).edges
        
        innerContentView.addAsSubview(to: contentView)
        
        topConstraint = innerContentView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: edges.top!)
        bottomConstraint = innerContentView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -edges.bottom!)
        leadingConstraint = innerContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: edges.leading!)
        trailingConstraint = innerContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -edges.trailing!)
        
        NSLayoutConstraint.activate([topConstraint, bottomConstraint, leadingConstraint, trailingConstraint])
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
