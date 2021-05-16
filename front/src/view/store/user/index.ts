import {createSlice} from "@reduxjs/toolkit";
import {initialState} from "./user.state";
import {getUserInfo, login, logout, setSelectedCard, setUserCards} from "./user.async.action"

export const index = createSlice({
	name: "User",
	initialState,
	reducers: {},
	extraReducers: ({addCase}) => {

		addCase(login.fulfilled, (state, action) => {
			state.infos = action.payload
		})

		addCase(getUserInfo.fulfilled, (state, action) => {
			state.infos = action.payload
		})

		addCase(logout.fulfilled, state => {
			state.infos = undefined;
			state.cards = [];
		})

		addCase(setSelectedCard.fulfilled, (state, action) => {
			state.selectedCard = action.payload;
		})

		addCase(setUserCards.fulfilled, (state, action) => {
			state.cards = action.payload
		})

	}
})

export const userReducer = index.reducer
