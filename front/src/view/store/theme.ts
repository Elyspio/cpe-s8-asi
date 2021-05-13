import {createAction as _createAction, createSlice} from "@reduxjs/toolkit";
import {getUrlTheme, Themes} from "../../config/theme";

const createAction = <T>(name: string) => _createAction<T>(`theme/${name}`);

export const setTheme = createAction<"dark" | "light">("set");
export const toggleTheme = createAction<void>("toggle");


export interface ThemeState {
	current: Themes
}

const initialState: ThemeState = {
	current: getUrlTheme(),
};


const slice = createSlice({
	name: "Theme",
	initialState,
	reducers: {},
	extraReducers: (builder) => {
		builder.addCase(setTheme, (state, action) => {
			state.current = action.payload;
		});
		builder.addCase(toggleTheme, (state) => {
			state.current = state.current === "light" ? "dark" : "light";
		});
	}
});

export const themeReducer = slice.reducer;
