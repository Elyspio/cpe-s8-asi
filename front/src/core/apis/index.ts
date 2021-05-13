import {AuthenticationControllerApi, MarketplaceControllerApi} from "./back"


const backend = "http://localhost:8080";

export var Apis = {
	authentication: new AuthenticationControllerApi(undefined, backend),
	marketplace: new MarketplaceControllerApi(undefined, backend)
};





