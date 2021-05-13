import {CardBase} from "../../../core/apis/back";


export type MarketplaceState = {
	marketCards: CardBase[]
}

export const initialState: MarketplaceState = {
	marketCards: []
}
