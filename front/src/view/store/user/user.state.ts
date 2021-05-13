import {CardBase, UserBase} from "../../../core/apis/back";


export type UserState = {
	infos?: UserBase
	cards: CardBase[]
}

export const initialState: UserState = {
	cards: []
}
