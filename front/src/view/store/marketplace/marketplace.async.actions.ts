import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";
import {CardDetail} from "../../../core/apis/back";
import {getUserInfo, setSelectedCard, setUserCards} from "../user/user.async.action";
import {AxiosError} from "axios";
import {store} from "../store";
import {push} from "connected-react-router";
import {routes} from "../../components/Application";


export function resetMarketplace(dispatch: CallableFunction) {
	return Promise.all([
		dispatch(getUserInfo()),
		dispatch(getCards()),
		dispatch(setSelectedCard(undefined)),
		dispatch(setUserCards())
	])
}


export const getCards = createAsyncThunk("marketplace/getCards", async () => {
	try {
		return await Apis.marketplace.getCards().then(x => x.data);
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		}
		throw e;
	}
})

export const buy = createAsyncThunk("marketplace/buy", async (card: CardDetail, {dispatch}) => {
	try {
		await Apis.marketplace.buy(card.cardId).then(x => x.data);
		await resetMarketplace(dispatch);
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		}
		throw e;
	}
})

export const sell = createAsyncThunk("marketplace/sell", async (card: CardDetail, {dispatch}) => {
	try {
		await Apis.marketplace.sell(card.cardId).then(x => x.data);
		await resetMarketplace(dispatch);
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		}
		throw e;
	}
})

