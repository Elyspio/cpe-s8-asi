import md5 from "md5"
import {Apis} from "../apis";

export class AuthenticationService {

	public async register({login, password, lastname, firstname}: { firstname: string, lastname: string, login: string, password: string }) {
		password = md5(login + password)
		try {

			const user = (await Apis.authentication.register({login, password, firstname, lastname}));

		} catch (e) {
			console.error("ERROR in isAuthorized", e);
		}
	}

}
