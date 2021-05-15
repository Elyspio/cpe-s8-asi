import {AuthenticationControllerApi, MarketplaceControllerApi, UserControllerApi} from "./back"


const backend = window.location.origin + "/cpe/asi/back";

export var Apis = {
	authentication: new AuthenticationControllerApi(undefined, backend),
	marketplace: new MarketplaceControllerApi(undefined, backend),
	user: new UserControllerApi(undefined, backend)
};





