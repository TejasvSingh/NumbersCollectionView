//
//  NumberCell.swift
//  Exam1
//
//  Created by Tejasv Singh on 9/12/25.
//
import UIKit

class NumberCell: UICollectionViewCell {
    static let reuseIdentifier = "NumberCell"
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textAlignment = .center
        label.textColor = .black
        contentView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
    func configure(with n: Int) {
        label.text = "\(n)"
        backgroundColor = color(for: n)
    }
    func color(for n: Int) -> UIColor {
        if n%3 == 0 && n%5 == 0 {
            return .green
        }
        else if n%3 == 0 && n%5 != 0 {
            return .red
        }
        else if n%5 == 0 && n%3 != 0 {
            return .blue
        }
        return .gray
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
