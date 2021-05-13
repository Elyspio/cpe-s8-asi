import {createSlice} from "@reduxjs/toolkit";
import {initialState} from "./user.state";


export const index = createSlice({
	name: "User",
	initialState,
	reducers: {},
	extraReducers: ({addCase}) => {

	}
})

export const userReducer = index.reducer
