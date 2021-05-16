import {CardBase, CardDetail, UserBase} from "../../../core/apis/back";


export type UserState = {
	infos?: UserBase
	selectedCard?: CardDetail
	cards: CardBase[],
}

export const initialState: UserState = {
	cards: []
}
