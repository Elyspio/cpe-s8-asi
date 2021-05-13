import {createSlice} from "@reduxjs/toolkit";
import {initialState} from "./card.state";


export const index = createSlice({
	name: "Card",
	initialState,
	reducers: {},
	extraReducers: ({addCase}) => {

	}
})

export const cardReducer = index.reducer
