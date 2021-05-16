import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";
import {CardDetail} from "../../../core/apis/back";
import {getUserInfo, setSelectedCard} from "../user/user.async.action";


function reset(dispatch: CallableFunction) {
	return Promise.all([
		dispatch(getUserInfo()),
		dispatch(getCards()),
		dispatch(setSelectedCard(undefined))
	])
}


export const getCards = createAsyncThunk("marketplace/getCards", async () => {
	return await Apis.marketplace.getCards().then(x => x.data);
})

export const buy = createAsyncThunk("marketplace/buy", async (card: CardDetail, {dispatch}) => {
	await Apis.marketplace.buy(card.cardId).then(x => x.data);
	await reset(dispatch);
})

export const sell = createAsyncThunk("marketplace/sell", async (card: CardDetail, {dispatch}) => {
	await Apis.marketplace.sell(card.cardId).then(x => x.data);
	await reset(dispatch);
})

