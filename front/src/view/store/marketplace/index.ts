import {createSlice} from "@reduxjs/toolkit";
import {initialState} from "./marketplace.state";


export const index = createSlice({
	name: "Marketplace",
	initialState,
	reducers: {},
	extraReducers: ({addCase}) => {

	}
})

export const marketplaceReducer = index.reducer
