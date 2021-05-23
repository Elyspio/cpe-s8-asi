import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";
import {CardDetail} from "../../../core/apis/back";
import {getUserCards, getUserInfo, setSelectedCard} from "../user/user.async.action";
import {AxiosError} from "axios";
import {store} from "../store";
import {push} from "connected-react-router";
import {toast} from "react-toastify";
import {routes} from "../../../config/routes";


export async function resetMarketplace(dispatch: CallableFunction) {
	await dispatch(getUserInfo())
	await Promise.all([
		dispatch(getCards()),
		dispatch(getUserCards()),
		dispatch(setSelectedCard(undefined)),
	])
}


export const getCards = createAsyncThunk("marketplace/getCards", async () => {
	try {
		return await Apis.marketplace.getCards().then(x => x.data);
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		} else {
			toast.error(`An error occurred while the fetch of the cards of marketplace`)
		}
		throw e;
	}
})

export const buy = createAsyncThunk("marketplace/buy", async (card: CardDetail, {dispatch}) => {
	try {
		await Apis.marketplace.buy(card.cardId).then(x => x.data);
		await resetMarketplace(dispatch);
		toast.success(`You bought ${card.name} successfully`)
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		} else {
			toast.error(`An error occurred while the buy of ${card.name} `)
		}
		throw e;
	}
})

export const sell = createAsyncThunk("marketplace/sell", async (card: CardDetail, {dispatch}) => {
	try {
		await Apis.marketplace.sell(card.cardId).then(x => x.data);
		await resetMarketplace(dispatch);
		toast.success(`You sold ${card.name} successfully`)
	} catch (e) {
		const error = e as AxiosError;
		if (error.response?.status === 401) {
			store.dispatch(push({pathname: routes.login, state: {redirect: true}}))
		} else {
			toast.error(`An error occurred while the sell of ${card.name} `)
		}
		throw e;
	}
})

