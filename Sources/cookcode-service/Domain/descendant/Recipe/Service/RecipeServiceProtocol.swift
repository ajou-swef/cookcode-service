//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

public protocol RecipeServiceProtocol: LikeServiceProtocol,
                                       CommentServiceProtocol {
    func fetchRecipeCellsByUserId(_ id: Int) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError>
    
    func searchRecipeCells(query: String, coockable: Bool, page: Int, size: Int, sort: String?) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError>
    
    func fetchRecipeCells(page: Int, size: Int, search: SearchMembershipType, sort: String?, month: Int?, cookcable: Bool?) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError>
    
    func searchRecipe(_ recipeID: Int) async -> Result<ServiceResponse<RecipeDetailDTO>, ServiceError>
    
    func postRecipe(_ form: RecipeFormDTO) async -> Result<ServiceResponse<PostRecipeResonse>, ServiceError>
    
    func patchRecipe(formDTO: RecipeFormDTO, recipeId: Int) async -> Result<DefaultResponse, ServiceError>
    
    func deleteRecipe(recipeId: Int) async -> Result<DefaultResponse, ServiceError>
}

