//
//  NetworkError.swift
//  YoutubeClone
//
//  Created by Ismael Ruiz on 25/3/22.
//

import Foundation

enum NetworkError: String, Error{
    case invalidURL
    case serializationFailed
    case generic
    case couldNotDecodeData
    case httpResponseError
    case statusCodeError = "ocurrió un error al tratar de consultar el API: status code"
    case JSONDecoder = "error al intentar extraer datos del json"
    case unauthorized
}
