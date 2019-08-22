var config = {
    apiUrl: "http://127.0.0.1:1984/",
    mainnetExplorerUrl: "https://explorer.beldex.io/",
    testnetExplorerUrl: "",
    stagenetExplorerUrl: "",
    nettype: 1, /* 0 - MAINNET, 1 - TESTNET, 2 - STAGENET */
    coinUnitPlaces: 9,
    txMinConfirms: 10,         // corresponds to CRYPTONOTE_DEFAULT_TX_SPENDABLE_AGE in Loki
    txCoinbaseMinConfirms: 30, // corresponds to CRYPTONOTE_MINED_MONEY_UNLOCK_WINDOW in Loki
    coinSymbol: 'BDX',
    openAliasPrefix: "beldex",
    coinName: 'Beldex',
    coinUriPrefix: 'beldex:',
    addressPrefix: 0xd1,
    integratedAddressPrefix: 19,
    subAddressPrefix: 42,
    addressPrefixTestnet: 53,
    integratedAddressPrefixTestnet: 54,
    subAddressPrefixTestnet: 63,
    addressPrefixStagenet: 24,
    integratedAddressPrefixStagenet: 25,
    subAddressPrefixStagenet: 36,
    feePerKB: new JSBigInt('2000000000'),//20^10 - not used anymore, as fee is dynamic.
    dustThreshold: new JSBigInt('1000000'),//10^10 used for choosing outputs/change - we decompose all the way down if the receiver wants now regardless of threshold
    txChargeRatio: 0.5,
    defaultMixin: 9,
    txChargeAddress: '',
    idleTimeout: 30,
    idleWarningDuration: 20,
    maxBlockNumber: 500000000,
    avgBlockTime: 120,
    debugMode: false
};
