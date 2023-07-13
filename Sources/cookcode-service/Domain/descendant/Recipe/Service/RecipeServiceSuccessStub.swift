//
//  RecipeSuccessService.swift
//  Cookcode
//
//  Created by 노우영 on 2023/04/30.
//

import Foundation

public final class RecipeServiceSuccessStub: RecipeServiceProtocol {
    public func likesContentById(_ id: Int) async -> Result<DefaultResponse, ServiceError> {
        .success(.mock())
    }
    
    public func fetchRecipeCellsByUserId(_ id: Int) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError> {
        .success(.mock())
    }
    
    public func fetchRecipeCells(page: Int, size: Int, search: SearchMembershipType, sort: String?, month: Int?, cookcable: Bool?) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError> {
        .success(.mock())
    }
    
    public func searchRecipeCells(query: String, coockable: Bool, page: Int, size: Int, sort: String?) async -> Result<ServiceResponse<PageResponse<RecipeCellDTO>>, ServiceError> {
        .success(.mock())
    }
    
    public func fetchCommentsById(_ id: Int) async -> Result<ServiceResponse<PageResponse<CommentDTO>>, ServiceError> {
        .success(.mock())
    }
    
    public func deleteCommentById(_ id: Int) async -> Result<DefaultResponse, ServiceError> {
        .success(.mock())
    }
    
    public func postCommentWithId(_ comments: String, id: Int) async -> Result<DefaultResponse, ServiceError> {
        .success(.mock())
    }
    
    public func deleteRecipe(recipeId: Int) async -> Result<DefaultResponse, ServiceError> {
        .success(.mock())
    }
    
    public func patchRecipe(formDTO: RecipeFormDTO, recipeId: Int) async -> Result<DefaultResponse, ServiceError> {
        .success(.mock())
    }
    
    public func postRecipe(_ form: RecipeFormDTO) async -> Result<ServiceResponse<PostRecipeResonse>, ServiceError> {
        .success(.mock())
    }

    
    public func searchRecipe(_ recipeID: Int) async -> Result<ServiceResponse<RecipeDetailDTO>, ServiceError> {
        .success(.mock())
    }
}
