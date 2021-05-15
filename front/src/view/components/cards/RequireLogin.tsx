import React from 'react';
import {useAppSelector} from "../../store/store";
import {useDispatch} from "react-redux";
import {push} from "connected-react-router";
import {routes} from "../Application";


export function requireLogin<T>(
	WrappedComponent: React.ComponentType<T>
) {
	const displayName = WrappedComponent.displayName || WrappedComponent.name || "Component";

	const RequireLogin = (props: T) => {
		const logged = useAppSelector(s => !!s.user.infos)

		return logged ? <WrappedComponent  {...(props as T)} /> : <BackToLogin/>;
	};

	RequireLogin.displayName = `requireLogin(${displayName})`;

	return RequireLogin;
}


function BackToLogin() {
	const dispatch = useDispatch();
	React.useEffect(() => {
		console.log("back to login");
		dispatch(push({
			pathname: routes.login,
			state: {
				redirect: true
			}
		}))
	}, [])
	return <i/>
}
