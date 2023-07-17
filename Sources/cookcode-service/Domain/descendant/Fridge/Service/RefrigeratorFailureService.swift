//
//  RefrigeratorFailureService.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/01.
//

import Foundation

public final class FridgeFailureStub: FridgeServiceProtocol {
    public func deleteIngredient(fridgeIngredId: Int) async -> Result<DefaultResponse, ServiceError> {
        .failure(.mock())
    }
    
    public func patchIngredient(dto: IngredientFormDTO, fridgeIngredId: Int) async -> Result<DefaultResponse, ServiceError> {
        .failure(.mock())
    }
    
    public func postIngredient(dto: IngredientFormDTO) async -> Result<DefaultResponse, ServiceError> {
        .failure(.mock())
    }
    
    public func getMyIngredientCells() async -> Result<ServiceResponse<IngredientDetailDTOs>, ServiceError> {
        .failure(.mock())
    }
}
