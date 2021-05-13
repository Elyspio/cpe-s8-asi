import {AuthenticationControllerApi, MarketplaceControllerApi, UserControllerApi} from "./back"


const backend = "https://elyspio.fr/cpe/asi/back";

export var Apis = {
	authentication: new AuthenticationControllerApi(undefined, backend),
	marketplace: new MarketplaceControllerApi(undefined, backend),
	user: new UserControllerApi(undefined, backend)
};





