import JVConstraintEdges

public class TableViewCellLayoutCreator {
    
    private let spaceBetweenViews: CGFloat = 5
    private let edgesLeadingView = ConstraintEdges(leading: 0, trailing: nil, top: 0, bottom: 0)
    private let edgesTrailingView = ConstraintEdges(leading: nil, trailing: 0, top: 0, bottom: 0)
    
    private unowned let middleView: UIView
    private unowned let toCell: TableViewCellInnerContentView
    private unowned var leadingView: UIView?
    private unowned var trailingView: UIView?
    
    private init(middleView: UIView, toCell: TableViewCellInnerContentView, leadingView: UIView? = nil, trailingView: UIView? = nil) {
        self.middleView = middleView
        self.toCell = toCell
        self.leadingView = leadingView
        self.trailingView = trailingView
    }
    
    public static func create(middleView: UIView, toCell: TableViewCellInnerContentView, leadingView: UIView? = nil, trailingView: UIView? = nil) {
        
        let layoutCreator = TableViewCellLayoutCreator(middleView: middleView, toCell: toCell, leadingView: leadingView, trailingView: trailingView)
        
        layoutCreator.create()
    }
    
    private func create() {
        if leadingView == nil && trailingView == nil {
            addMiddleViewWithoutSurroundingViews()
            
            return
        }
        
        if leadingView != nil, trailingView == nil {
            addMiddleViewWithLeadingView()
            
            return
        }
        
        if trailingView != nil && leadingView == nil {
            addMiddleViewWithTrailingView()
            
            return
        }
        
        addMiddleViewWithLeadingAndTrailingView()
    }
    
    private func addMiddleViewWithoutSurroundingViews() {
        middleView.fill(toSuperview: toCell.innerContentView)
    }
    
    private func addMiddleViewWithLeadingView() {
        fillLeadingView()
        fillMiddleView(edges: ConstraintEdges(leading: nil, trailing: 0, top: 0, bottom: 0))
        
        addLeadingAnchor()
    }
    
    private func addMiddleViewWithTrailingView() {
        fillTrailingView()
        fillMiddleView(edges: ConstraintEdges(leading: 0, trailing: nil, top: 0, bottom: 0))
        
        addTrailingAnchor()
    }
    
    private func addMiddleViewWithLeadingAndTrailingView() {
        fillLeadingView()
        fillTrailingView()
        fillMiddleView(edges: ConstraintEdges(leading: nil, trailing: nil, top: 0, bottom: 0))
        
        addLeadingAnchor()
        addTrailingAnchor()
    }
    
    private func fillTrailingView() {
        trailingView!.fill(toSuperview: toCell.innerContentView, edges: edgesTrailingView)
    }
    
    private func fillLeadingView() {
        leadingView!.fill(toSuperview: toCell.innerContentView, edges: edgesLeadingView)
    }
    
    private func fillMiddleView(edges: ConstraintEdges) {
        middleView.fill(toSuperview: toCell.innerContentView, edges: edges)
    }
    
    private func addTrailingAnchor() {
        middleView.trailingAnchor.constraint(equalTo: trailingView!.leadingAnchor, constant: -spaceBetweenViews).isActive = true
    }
    
    private func addLeadingAnchor() {
        middleView.leadingAnchor.constraint(equalTo: leadingView!.trailingAnchor, constant: spaceBetweenViews).isActive = true
    }
}
