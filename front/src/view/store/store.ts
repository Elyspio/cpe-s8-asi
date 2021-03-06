import {combineReducers, configureStore, getDefaultMiddleware} from "@reduxjs/toolkit";
import {TypedUseSelectorHook, useDispatch, useSelector} from "react-redux";
import {userReducer} from "./user";
import {marketplaceReducer} from "./marketplace";
import {themeReducer} from "./theme";
import {connectRouter, routerMiddleware} from "connected-react-router"
import {createBrowserHistory} from 'history'

export const history = createBrowserHistory({basename: "/cpe/asi/front/"})


export const store = configureStore({
	reducer: combineReducers({
		user: userReducer,
		marketplace: marketplaceReducer,
		theme: themeReducer,
		router: connectRouter(history),

	}),
	devTools: true,
	middleware: [
		...getDefaultMiddleware(),
		routerMiddleware(history), // for dispatching history actions
	]
});

export type AppDispatch = typeof store.dispatch
export const useAppDispatch = () => useDispatch<AppDispatch>() // Export a hook that can be reused to resolve types
export const useAppSelector: TypedUseSelectorHook<RootState> = useSelector
export type RootState = ReturnType<typeof store.getState>
