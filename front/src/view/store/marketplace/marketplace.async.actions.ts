import {createAsyncThunk} from "@reduxjs/toolkit";
import {Apis} from "../../../core/apis";


export const getCards = createAsyncThunk("marketplace/getCards", async () => {
	return await Apis.marketplace.getCards().then(x => x.data);
})

