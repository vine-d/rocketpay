defmodule RocketpayWeb.AccountsView do
	alias Rocketpay.{Account, User}

	def render("update.json", %{account: %Account{id: account_id, balance: balance}}) do
		%{
			message: "Balance changed successfully",
			account: %{
				id: account_id,
				balance: balance
			}
		}
	end
end
