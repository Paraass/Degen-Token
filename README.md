# Degen-Token
 <h2>Overview</h2>
        <p>DegenToken is an ERC20 token designed for the Degen Gaming platform. This token includes functionality for minting new tokens, transferring tokens between players, redeeming tokens for in-game items, checking token balances, and burning tokens that are no longer needed. You can find the Smart Contract in <code>Assessment.sol</code>.</p> 
        <h2>Features</h2>
        <ul>
            <li><strong>Minting New Tokens:</strong> The owner of the contract can mint new tokens and distribute them as rewards to players.</li>
            <li><strong>Transferring Tokens:</strong> Players can transfer their tokens to other players.</li>
            <li><strong>Redeeming Tokens:</strong> Players can redeem their tokens for items in the in-game store.</li>
            <li><strong>Checking Token Balance:</strong> Players can check their token balance at any time.</li>
            <li><strong>Burning Tokens:</strong> Anyone can burn their own tokens that are no longer needed.</li>
        </ul>
        <h2>Contract Details</h2>
        <h3>Imports</h3>
        <ul>
            <li><strong>ERC20:</strong> Standard ERC20 token functionality.</li>
            <li><strong>Ownable:</strong> Provides basic authorization control.</li>
            <li><strong>ERC20Burnable:</strong> Allows tokens to be burned.</li>
        </ul>
        <h3>State Variables</h3>
        <ul>
            <li><strong>MAX_SUPPLY:</strong> Maximum supply of the tokens, set to 500,000.</li>
        </ul>
        <h3>Constructor</h3>
        <p>Initializes the token with:</p>
        <ul>
            <li>Name: "Degen Token"</li>
            <li>Symbol: "DGN"</li>
            <li>Initial Supply: 20,000 tokens minted to the deployer (owner) of the contract.</li>
            <li>Ownership: The deployer is set as the owner.</li>
        </ul>
        <h3>Functions</h3>
        <ul>
            <li><strong>decimals():</strong> Overrides the default decimal function to set the token to have no decimal places (whole numbers only).</li>
            <li><strong>mint(address to, uint256 amount):</strong> Allows the owner to mint new tokens to a specified address. Ensures that the total supply does not exceed the MAX_SUPPLY.</li>
            <li><strong>transferTokens(address receiver, uint256 value):</strong> Allows the caller to transfer tokens to another address. Checks if the caller has enough tokens.</li>
            <li><strong>burnTokens(uint256 _value):</strong> Allows the caller to burn a specified amount of their tokens. Ensures the caller has enough tokens.</li>
            <li><strong>redeemTokens(uint256 amount):</strong> Allows the caller to redeem (burn) a specified amount of their tokens. Ensures the caller has enough tokens.</li>
            <li><strong>getBalance():</strong> Returns the token balance of the caller.</li>
        </ul>
        <h2>Author</h2>
        <p>Paras Aggarwal<br>
        <a href="mailto:parasaggarwal7172@gmail.com">parasaggarwal7172@gmail.com</a></p>
