import {createSlice} from "@reduxjs/toolkit";
import {initialState} from "./marketplace.state";
import {getCards} from "./marketplace.async.actions";


export const index = createSlice({
	name: "Marketplace",
	initialState,
	reducers: {},
	extraReducers: ({addCase}) => {
		addCase(getCards.fulfilled, (state, action) => {
			state.marketCards = action.payload;
		})
	}
})

export const marketplaceReducer = index.reducer
