/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI definition
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v0
 *
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import {Configuration} from './configuration';
import globalAxios, {AxiosInstance, AxiosPromise} from 'axios';
// Some imports not used depending on template conditions
// @ts-ignore
import {
	assertParamExists,
	createRequestFunction,
	DUMMY_BASE_URL,
	serializeDataIfNeeded,
	setApiKeyToObject,
	setBasicAuthToObject,
	setBearerAuthToObject,
	setOAuthToObject,
	setSearchParams,
	toPathString
} from './common';
// @ts-ignore
import {BASE_PATH, BaseAPI, COLLECTION_FORMATS, RequestArgs, RequiredError} from './base';

/**
 *
 * @export
 * @interface CardBase
 */
export interface CardBase {
	/**
	 *
	 * @type {number}
	 * @memberof CardBase
	 */
	cardId: number;
	/**
	 *
	 * @type {string}
	 * @memberof CardBase
	 */
	name: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardBase
	 */
	family: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardBase
	 */
	affinity: string;
	/**
	 *
	 * @type {number}
	 * @memberof CardBase
	 */
	energy: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardBase
	 */
	hp: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardBase
	 */
	price: number;
}

/**
 *
 * @export
 * @interface CardDetail
 */
export interface CardDetail {
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	cardId: number;
	/**
	 *
	 * @type {string}
	 * @memberof CardDetail
	 */
	name: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardDetail
	 */
	description: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardDetail
	 */
	family: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardDetail
	 */
	affinity: string;
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	energy: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	hp: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	price: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	defense: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardDetail
	 */
	attack: number;
	/**
	 *
	 * @type {string}
	 * @memberof CardDetail
	 */
	imgUrl: string;
}

/**
 *
 * @export
 * @interface CardEntity
 */
export interface CardEntity {
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	cardId?: number;
	/**
	 *
	 * @type {string}
	 * @memberof CardEntity
	 */
	name?: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardEntity
	 */
	description?: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardEntity
	 */
	family?: string;
	/**
	 *
	 * @type {string}
	 * @memberof CardEntity
	 */
	affinity?: string;
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	energy?: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	hp?: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	defense?: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	price?: number;
	/**
	 *
	 * @type {number}
	 * @memberof CardEntity
	 */
	attack?: number;
	/**
	 *
	 * @type {string}
	 * @memberof CardEntity
	 */
	imgUrl?: string;
	/**
	 *
	 * @type {UserEntity}
	 * @memberof CardEntity
	 */
	user?: UserEntity;
}

/**
 *
 * @export
 * @interface RuntimeException
 */
export interface RuntimeException {
	/**
	 *
	 * @type {string}
	 * @memberof RuntimeException
	 */
	timestamp: string;
	/**
	 *
	 * @type {number}
	 * @memberof RuntimeException
	 */
	status: number;
	/**
	 *
	 * @type {string}
	 * @memberof RuntimeException
	 */
	error: string;
	/**
	 *
	 * @type {string}
	 * @memberof RuntimeException
	 */
	message: string;
	/**
	 *
	 * @type {string}
	 * @memberof RuntimeException
	 */
	path: string;
}

/**
 *
 * @export
 * @interface UserBase
 */
export interface UserBase {
	/**
	 *
	 * @type {string}
	 * @memberof UserBase
	 */
	lastname: string;
	/**
	 *
	 * @type {number}
	 * @memberof UserBase
	 */
	userId: number;
	/**
	 *
	 * @type {string}
	 * @memberof UserBase
	 */
	firstname: string;
	/**
	 *
	 * @type {number}
	 * @memberof UserBase
	 */
	money: number;
	/**
	 *
	 * @type {Array<number>}
	 * @memberof UserBase
	 */
	cardId: Array<number>;
}

/**
 *
 * @export
 * @interface UserEntity
 */
export interface UserEntity {
	/**
	 *
	 * @type {number}
	 * @memberof UserEntity
	 */
	userId?: number;
	/**
	 *
	 * @type {string}
	 * @memberof UserEntity
	 */
	firstname?: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserEntity
	 */
	lastname?: string;
	/**
	 *
	 * @type {number}
	 * @memberof UserEntity
	 */
	money?: number;
	/**
	 *
	 * @type {string}
	 * @memberof UserEntity
	 */
	login?: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserEntity
	 */
	password?: string;
	/**
	 *
	 * @type {Array<CardEntity>}
	 * @memberof UserEntity
	 */
	card?: Array<CardEntity>;
}

/**
 *
 * @export
 * @interface UserLoginRequest
 */
export interface UserLoginRequest {
	/**
	 *
	 * @type {string}
	 * @memberof UserLoginRequest
	 */
	login: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserLoginRequest
	 */
	hash: string;
}

/**
 *
 * @export
 * @interface UserRegisterRequest
 */
export interface UserRegisterRequest {
	/**
	 *
	 * @type {string}
	 * @memberof UserRegisterRequest
	 */
	firstname: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserRegisterRequest
	 */
	lastname: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserRegisterRequest
	 */
	login: string;
	/**
	 *
	 * @type {string}
	 * @memberof UserRegisterRequest
	 */
	password: string;
}

/**
 * AuthenticationControllerApi - axios parameter creator
 * @export
 */
export const AuthenticationControllerApiAxiosParamCreator = function (configuration?: Configuration) {
	return {
		/**
		 *
		 * @summary Init login
		 * @param {string} [body]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		loginInit: async (body?: string, options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/authentication/login/init`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			localVarHeaderParameter['Content-Type'] = 'application/json';

			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
			localVarRequestOptions.data = serializeDataIfNeeded(body, localVarRequestOptions, configuration)

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
		/**
		 *
		 * @summary Finish login
		 * @param {UserLoginRequest} [userLoginRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		loginValidate: async (userLoginRequest?: UserLoginRequest, options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/authentication/login/validate`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			localVarHeaderParameter['Content-Type'] = 'application/json';

			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
			localVarRequestOptions.data = serializeDataIfNeeded(userLoginRequest, localVarRequestOptions, configuration)

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
		/**
		 *
		 * @summary Logout
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		logout: async (options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/authentication/logout`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
		/**
		 *
		 * @summary Create a new account for a user
		 * @param {UserRegisterRequest} [userRegisterRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		register: async (userRegisterRequest?: UserRegisterRequest, options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/authentication/register`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			localVarHeaderParameter['Content-Type'] = 'application/json';

			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
			localVarRequestOptions.data = serializeDataIfNeeded(userRegisterRequest, localVarRequestOptions, configuration)

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
	}
};

/**
 * AuthenticationControllerApi - functional programming interface
 * @export
 */
export const AuthenticationControllerApiFp = function (configuration?: Configuration) {
	const localVarAxiosParamCreator = AuthenticationControllerApiAxiosParamCreator(configuration)
	return {
		/**
		 *
		 * @summary Init login
		 * @param {string} [body]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async loginInit(body?: string, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<string>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.loginInit(body, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
		/**
		 *
		 * @summary Finish login
		 * @param {UserLoginRequest} [userLoginRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async loginValidate(userLoginRequest?: UserLoginRequest, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<UserBase>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.loginValidate(userLoginRequest, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
		/**
		 *
		 * @summary Logout
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async logout(options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.logout(options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
		/**
		 *
		 * @summary Create a new account for a user
		 * @param {UserRegisterRequest} [userRegisterRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async register(userRegisterRequest?: UserRegisterRequest, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<UserBase>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.register(userRegisterRequest, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
	}
};

/**
 * AuthenticationControllerApi - factory interface
 * @export
 */
export const AuthenticationControllerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
	const localVarFp = AuthenticationControllerApiFp(configuration)
	return {
		/**
		 *
		 * @summary Init login
		 * @param {string} [body]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		loginInit(body?: string, options?: any): AxiosPromise<string> {
			return localVarFp.loginInit(body, options).then((request) => request(axios, basePath));
		},
		/**
		 *
		 * @summary Finish login
		 * @param {UserLoginRequest} [userLoginRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		loginValidate(userLoginRequest?: UserLoginRequest, options?: any): AxiosPromise<UserBase> {
			return localVarFp.loginValidate(userLoginRequest, options).then((request) => request(axios, basePath));
		},
		/**
		 *
		 * @summary Logout
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		logout(options?: any): AxiosPromise<void> {
			return localVarFp.logout(options).then((request) => request(axios, basePath));
		},
		/**
		 *
		 * @summary Create a new account for a user
		 * @param {UserRegisterRequest} [userRegisterRequest]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		register(userRegisterRequest?: UserRegisterRequest, options?: any): AxiosPromise<UserBase> {
			return localVarFp.register(userRegisterRequest, options).then((request) => request(axios, basePath));
		},
	};
};

/**
 * AuthenticationControllerApi - object-oriented interface
 * @export
 * @class AuthenticationControllerApi
 * @extends {BaseAPI}
 */
export class AuthenticationControllerApi extends BaseAPI {
	/**
	 *
	 * @summary Init login
	 * @param {string} [body]
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof AuthenticationControllerApi
	 */
	public loginInit(body?: string, options?: any) {
		return AuthenticationControllerApiFp(this.configuration).loginInit(body, options).then((request) => request(this.axios, this.basePath));
	}

	/**
	 *
	 * @summary Finish login
	 * @param {UserLoginRequest} [userLoginRequest]
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof AuthenticationControllerApi
	 */
	public loginValidate(userLoginRequest?: UserLoginRequest, options?: any) {
		return AuthenticationControllerApiFp(this.configuration).loginValidate(userLoginRequest, options).then((request) => request(this.axios, this.basePath));
	}

	/**
	 *
	 * @summary Logout
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof AuthenticationControllerApi
	 */
	public logout(options?: any) {
		return AuthenticationControllerApiFp(this.configuration).logout(options).then((request) => request(this.axios, this.basePath));
	}

	/**
	 *
	 * @summary Create a new account for a user
	 * @param {UserRegisterRequest} [userRegisterRequest]
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof AuthenticationControllerApi
	 */
	public register(userRegisterRequest?: UserRegisterRequest, options?: any) {
		return AuthenticationControllerApiFp(this.configuration).register(userRegisterRequest, options).then((request) => request(this.axios, this.basePath));
	}
}


/**
 * CardControllerApi - axios parameter creator
 * @export
 */
export const CardControllerApiAxiosParamCreator = function (configuration?: Configuration) {
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {number} id
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getCardDetail: async (id: number, options: any = {}): Promise<RequestArgs> => {
			// verify required parameter 'id' is not null or undefined
			assertParamExists('getCardDetail', 'id', id)
			const localVarPath = `/card/{id}`
				.replace(`{${"id"}}`, encodeURIComponent(String(id)));
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'GET', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
	}
};

/**
 * CardControllerApi - functional programming interface
 * @export
 */
export const CardControllerApiFp = function (configuration?: Configuration) {
	const localVarAxiosParamCreator = CardControllerApiAxiosParamCreator(configuration)
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {number} id
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async getCardDetail(id: number, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CardDetail>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.getCardDetail(id, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
	}
};

/**
 * CardControllerApi - factory interface
 * @export
 */
export const CardControllerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
	const localVarFp = CardControllerApiFp(configuration)
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {number} id
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getCardDetail(id: number, options?: any): AxiosPromise<CardDetail> {
			return localVarFp.getCardDetail(id, options).then((request) => request(axios, basePath));
		},
	};
};

/**
 * CardControllerApi - object-oriented interface
 * @export
 * @class CardControllerApi
 * @extends {BaseAPI}
 */
export class CardControllerApi extends BaseAPI {
	/**
	 *
	 * @summary Get connected user\'s information
	 * @param {number} id
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof CardControllerApi
	 */
	public getCardDetail(id: number, options?: any) {
		return CardControllerApiFp(this.configuration).getCardDetail(id, options).then((request) => request(this.axios, this.basePath));
	}
}


/**
 * MarketplaceControllerApi - axios parameter creator
 * @export
 */
export const MarketplaceControllerApiAxiosParamCreator = function (configuration?: Configuration) {
	return {
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		buy: async (idCard: number, userEntity?: UserEntity, options: any = {}): Promise<RequestArgs> => {
			// verify required parameter 'idCard' is not null or undefined
			assertParamExists('buy', 'idCard', idCard)
			const localVarPath = `/marketplace/buy/{idCard}`
				.replace(`{${"idCard"}}`, encodeURIComponent(String(idCard)));
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			localVarHeaderParameter['Content-Type'] = 'application/json';

			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
			localVarRequestOptions.data = serializeDataIfNeeded(userEntity, localVarRequestOptions, configuration)

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
		/**
		 *
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getCards: async (options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/marketplace/cards`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'GET', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		sell: async (idCard: number, userEntity?: UserEntity, options: any = {}): Promise<RequestArgs> => {
			// verify required parameter 'idCard' is not null or undefined
			assertParamExists('sell', 'idCard', idCard)
			const localVarPath = `/marketplace/sell`
				.replace(`{${"idCard"}}`, encodeURIComponent(String(idCard)));
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'POST', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			localVarHeaderParameter['Content-Type'] = 'application/json';

			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
			localVarRequestOptions.data = serializeDataIfNeeded(userEntity, localVarRequestOptions, configuration)

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
	}
};

/**
 * MarketplaceControllerApi - functional programming interface
 * @export
 */
export const MarketplaceControllerApiFp = function (configuration?: Configuration) {
	const localVarAxiosParamCreator = MarketplaceControllerApiAxiosParamCreator(configuration)
	return {
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async buy(idCard: number, userEntity?: UserEntity, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<number>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.buy(idCard, userEntity, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
		/**
		 *
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async getCards(options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<Array<CardBase>>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.getCards(options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async sell(idCard: number, userEntity?: UserEntity, options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<number>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.sell(idCard, userEntity, options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
	}
};

/**
 * MarketplaceControllerApi - factory interface
 * @export
 */
export const MarketplaceControllerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
	const localVarFp = MarketplaceControllerApiFp(configuration)
	return {
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		buy(idCard: number, userEntity?: UserEntity, options?: any): AxiosPromise<number> {
			return localVarFp.buy(idCard, userEntity, options).then((request) => request(axios, basePath));
		},
		/**
		 *
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getCards(options?: any): AxiosPromise<Array<CardBase>> {
			return localVarFp.getCards(options).then((request) => request(axios, basePath));
		},
		/**
		 *
		 * @param {number} idCard
		 * @param {UserEntity} [userEntity]
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		sell(idCard: number, userEntity?: UserEntity, options?: any): AxiosPromise<number> {
			return localVarFp.sell(idCard, userEntity, options).then((request) => request(axios, basePath));
		},
	};
};

/**
 * MarketplaceControllerApi - object-oriented interface
 * @export
 * @class MarketplaceControllerApi
 * @extends {BaseAPI}
 */
export class MarketplaceControllerApi extends BaseAPI {
	/**
	 *
	 * @param {number} idCard
	 * @param {UserEntity} [userEntity]
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof MarketplaceControllerApi
	 */
	public buy(idCard: number, userEntity?: UserEntity, options?: any) {
		return MarketplaceControllerApiFp(this.configuration).buy(idCard, userEntity, options).then((request) => request(this.axios, this.basePath));
	}

	/**
	 *
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof MarketplaceControllerApi
	 */
	public getCards(options?: any) {
		return MarketplaceControllerApiFp(this.configuration).getCards(options).then((request) => request(this.axios, this.basePath));
	}

	/**
	 *
	 * @param {number} idCard
	 * @param {UserEntity} [userEntity]
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof MarketplaceControllerApi
	 */
	public sell(idCard: number, userEntity?: UserEntity, options?: any) {
		return MarketplaceControllerApiFp(this.configuration).sell(idCard, userEntity, options).then((request) => request(this.axios, this.basePath));
	}
}


/**
 * UserControllerApi - axios parameter creator
 * @export
 */
export const UserControllerApiAxiosParamCreator = function (configuration?: Configuration) {
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getAuthenticatedUser: async (options: any = {}): Promise<RequestArgs> => {
			const localVarPath = `/user/connected`;
			// use dummy base URL string because the URL constructor only accepts absolute URLs.
			const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
			let baseOptions;
			if (configuration) {
				baseOptions = configuration.baseOptions;
			}

			const localVarRequestOptions = {method: 'GET', ...baseOptions, ...options};
			const localVarHeaderParameter = {} as any;
			const localVarQueryParameter = {} as any;


			setSearchParams(localVarUrlObj, localVarQueryParameter, options.query);
			let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
			localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

			return {
				url: toPathString(localVarUrlObj),
				options: localVarRequestOptions,
			};
		},
	}
};

/**
 * UserControllerApi - functional programming interface
 * @export
 */
export const UserControllerApiFp = function (configuration?: Configuration) {
	const localVarAxiosParamCreator = UserControllerApiAxiosParamCreator(configuration)
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		async getAuthenticatedUser(options?: any): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<UserBase>> {
			const localVarAxiosArgs = await localVarAxiosParamCreator.getAuthenticatedUser(options);
			return createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration);
		},
	}
};

/**
 * UserControllerApi - factory interface
 * @export
 */
export const UserControllerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
	const localVarFp = UserControllerApiFp(configuration)
	return {
		/**
		 *
		 * @summary Get connected user\'s information
		 * @param {*} [options] Override http request option.
		 * @throws {RequiredError}
		 */
		getAuthenticatedUser(options?: any): AxiosPromise<UserBase> {
			return localVarFp.getAuthenticatedUser(options).then((request) => request(axios, basePath));
		},
	};
};

/**
 * UserControllerApi - object-oriented interface
 * @export
 * @class UserControllerApi
 * @extends {BaseAPI}
 */
export class UserControllerApi extends BaseAPI {
	/**
	 *
	 * @summary Get connected user\'s information
	 * @param {*} [options] Override http request option.
	 * @throws {RequiredError}
	 * @memberof UserControllerApi
	 */
	public getAuthenticatedUser(options?: any) {
		return UserControllerApiFp(this.configuration).getAuthenticatedUser(options).then((request) => request(this.axios, this.basePath));
	}
}


