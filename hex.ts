import {axios} from "axios";

// curl "https://api.0x.org/swap/v1/quote?sellToken=USDC&buyToken=ETH&sellAmount=1000000000000000000"



export async function hexQuote(){
    const sellAmountWei = 100000000000000000;
    const qs = createQueryString({
        sellToken: 'WETH',
        buyToken: 'DAI',
        sellAmount: sellAmountWei,
    });
    const quoteUrl = `${API_QUOTE_URL}?${qs}`;
    // const response = await fetch(quoteUrl);
    // const quote = await response.json();


    const quote = async() =>{
        return axios.get(quoteUrl)
    }
}