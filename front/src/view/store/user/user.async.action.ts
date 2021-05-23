import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";
import md5 from "md5";
import {resetMarketplace} from "../marketplace/marketplace.async.actions";
import {CardBase} from "../../../core/apis/back";
import {push} from "connected-react-router";
import {AxiosError} from "axios";
import {store} from "../store";
import {toast} from "react-toastify";
import {routes} from "../../../config/routes";


export const login = createAsyncThunk("user/login", async ({login, password}: { login: string, password: string }, {dispatch}) => {
	const ownHash = md5(login + password)
	try {

		const salt = (await Apis.authentication.loginInit(login)).data
		const hash = ownHash + salt;
		const res = (await Apis.authentication.loginValidate({login, hash}));
		if (res.status < 400) {
			await resetMarketplace(dispatch)
			toast.success("Login successful")
			return res.data;
		}
	} catch (e) {
		console.error("ERROR in isAuthorized", {e});
		toast.error("An error occurred during login")
		throw e;
	}
})


export const getUserInfo = createAsyncThunk("user/getUserInfo", async () => {
	return await Apis.user.getAuthenticatedUser().then(x => x.data);
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

export const setSelectedCard = createAsyncThunk("user/setSelectedCard", async (arg: CardBase | undefined) => {
	if (arg === undefined) return undefined;

	try {
		const data = await Apis.card.getCardDetail(arg.cardId).then(x => x.data);
		return data;
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		}
		throw e;
	}
})

export const getUserCards = createAsyncThunk("user/setCards", async () => {

	try {
		const data = await Apis.user.getUserCards().then(x => x.data);
		return data;
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		}
		throw e;
	}
})
