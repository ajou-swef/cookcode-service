//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/17.
//

import Foundation

public protocol FridgeServiceProtocol {
    func getMyIngredientCells() async -> Result<ServiceResponse<IngredientDetailDTOs>, ServiceError>
    func postIngredient(dto: IngredientFormDTO) async -> Result<DefaultResponse, ServiceError>
    func patchIngredient(dto: IngredientFormDTO, fridgeIngredId: Int) async -> Result<DefaultResponse, ServiceError>
    func deleteIngredient(fridgeIngredId: Int) async -> Result<DefaultResponse, ServiceError>
}

