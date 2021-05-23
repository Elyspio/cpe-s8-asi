import React from 'react';
import {useAppSelector} from "../../store/store";
import {useDispatch} from "react-redux";
import {push} from "connected-react-router";
import {routes} from "../../../config/routes";


export function requireLogin<T>(WrappedComponent: React.ComponentType<T>, redirectTo: string) {
	const displayName = WrappedComponent.displayName || WrappedComponent.name || "Component";

	const RequireLogin = (props: T) => {
		const logged = useAppSelector(s => !!s.user.infos)

		return logged ? <WrappedComponent  {...(props as T)} /> : <BackToLogin redirectTo={redirectTo}/>;
	};

	RequireLogin.displayName = `requireLogin(${displayName})`;

	return RequireLogin;
}


function BackToLogin({redirectTo}: {redirectTo: string}) {
	const dispatch = useDispatch();
	React.useEffect(() => {
		dispatch(push({
			pathname: routes.login,
			state: {
				redirect: redirectTo
			}
		}))
	}, [dispatch, redirectTo])
	return <i/>
}
