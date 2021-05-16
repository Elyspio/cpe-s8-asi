import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";
import md5 from "md5";
import {getCards} from "../marketplace/marketplace.async.actions";
import {CardBase} from "../../../core/apis/back";
import {push} from "connected-react-router";
import {routes} from "../../components/Application";


export const login = createAsyncThunk("user/login", async ({login, password}: { login: string, password: string }, {dispatch}) => {
	const ownHash = md5(login + password)
	try {

		const salt = (await Apis.authentication.loginInit(login)).data
		const hash = ownHash + salt;
		const res = (await Apis.authentication.loginValidate({login, hash}));
		if (res.status < 400) {
			await dispatch(getCards());
			return res.data;
		}
	} catch (e) {
		console.error("ERROR in isAuthorized", e);
		throw e;
	}
})


export const getUserInfo = createAsyncThunk("user/getUserInfo", async () => {
	try {
		return await Apis.user.getAuthenticatedUser().then(x => x.data);
	} catch (e) {
		return undefined;
	}
})


export const logout = createAsyncThunk("user/logout", async () => {
	try {
		await Apis.authentication.logout();
	} catch (e) {
	}
})


type UserRegister = { firstname: string, lastname: string, login: string, password: string };
export const register = createAsyncThunk("user/register", async (data: UserRegister, {dispatch}) => {
	const hashPassword = md5(data.login + data.password)
	try {
		await Apis.authentication.register({
			login: data.login,
			password: hashPassword,
			firstname: data.firstname,
			lastname: data.lastname
		});

		await dispatch(login({login: data.login, password: data.password}))

		await dispatch(push(routes.home))


	} catch (e) {
		console.error("ERROR in register", e);
	}
})

export const setSelectedCard = createAsyncThunk("user/setSelectedCard", (arg: CardBase | undefined) => {
	if (arg === undefined) return undefined;

	return Apis.card.getCardDetail(arg.cardId).then(x => x.data);
})
