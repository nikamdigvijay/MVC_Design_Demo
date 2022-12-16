//
//  BackDataPassing.swift
//  MVCStudentDemo
//
//  Created by Digvijay Nikam on 09/11/22.
//

import Foundation

protocol BackDataPassing : AnyObject {
    func passingDataToFirstViewController(student : Student)
}
