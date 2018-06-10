# Investing a Percentage of Your Income (Python)

> This exercise contains a few problems that we sometimes encounter
> with first-time instructors.  After you have read it, scroll down to
> the bottom of the page to see the comments that one of our team
> would provide.

To finish up your investment simulation, you will need to loop through
each time period, calculate the growth of any investments you have
already made, add your new monthly deposit, and calculate your net
worth at each point in time.

You can do it!

## Instructions

Cumulative savings (cumulative_savings_new) from the previous exercise is available.

- For each period, set your previous_investment equal to the previous investment_portfolio,
  unless it is the first iteration, in which case you have no investments yet.
- Calculate your net worth at each time period by adding your cumulative savings to your investment portfolio.

## Hint

Did you multiply your previous investment by 1 + the growth rate for each period?

## Pre-Exercise Code

```
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
salary = 85000
tax_rate = 0.30
salary_after_taxes = round(salary*(1 - tax_rate),2)
monthly_takehome_salary = round(salary_after_taxes / 12,2)
monthly_rent = 1200
daily_food_budget = 30
monthly_food_budget = daily_food_budget * 30
monthly_entertainment_budget = 200
monthly_unforeseen_expenses = 250
monthly_expenses = monthly_rent + monthly_food_budget + monthly_entertainment_budget + monthly_unforeseen_expenses
monthly_savings = monthly_takehome_salary - monthly_expenses
forecast_months = 12*15
annual_salary_growth = 0.05
monthly_salary_growth = (1+annual_salary_growth)**(1/12) - 1
cumulative_salary_growth_forecast = np.cumprod(np.repeat(1 + monthly_salary_growth, forecast_months))
salary_forecast = monthly_takehome_salary*cumulative_salary_growth_forecast
annual_inflation = 0.025
monthly_inflation = (1+annual_inflation)**(1/12) - 1
cumulative_inflation_forecast = np.cumprod(np.repeat(1 + monthly_inflation, forecast_months))
expenses_forecast = monthly_expenses*cumulative_inflation_forecast

investment_rate_monthly = (1+0.07)**(1/12) - 1
monthly_investment_percentage = 0.30
cash_flow_forecast = salary_forecast - expenses_forecast
investment_deposit_forecast = cash_flow_forecast * monthly_investment_percentage
savings_forecast_new = cash_flow_forecast * (1 - monthly_investment_percentage)
cumulative_savings_new = np.cumsum(savings_forecast_new)

plt.title('Net Worth vs Savings and Investments')
plt.xlabel('Period')
plt.ylabel('Value')
investments_plot = mpatches.Patch(color='red', label='Investments')
savings_plot = mpatches.Patch(color='blue', label='Savings')
networth_plot = mpatches.Patch(color='green', label='Net Worth')
```

## Sample Code

```
import numpy as np

# Initialize the investments array and net worth array
investment_portfolio = np.repeat(0.0, forecast_months)
net_worth = np.repeat(0.0, forecast_months)

# Loop through each forecast period
for i in range(forecast_months):
    
    # Find the previous investment deposit amount
    if i == 0: 
        previous_investment = ____
    else:
        previous_investment = ____
        
    # Calculate the value of your previous investments, which have grown
    previous_investment_growth = previous_investment*(1 + investment_rate_monthly)
    
    # Add your new deposit to your investment portfolio
    investment_portfolio[i] =  previous_investment_growth + investment_deposit_forecast[i]
    
    # Calculate your net worth at each point in time
    net_worth[i] = ____
    
    # Print the results at each period
    print("Period " + str(i) + ": Current Investment Balance: " + \
          str(round(investment_portfolio[i], 2)) + \
          " | Savings Account: " + str(round(cumulative_savings_new[i], 2)) + \
          " | Net Worth: " + str(round(net_worth[i], 2)) \
         )
         
# Plot your forecasted cumulative savings vs investments and net worth
plt.plot(investment_portfolio, color='red')
plt.plot(cumulative_savings_new, color='blue')
plt.plot(net_worth, color='green')
plt.legend(handles=[investments_plot,savings_plot,networth_plot], loc=2)
plt.show()
```

## Solution

```
import numpy as np

# Initialize the investments array and net worth array
investment_portfolio = np.repeat(0.0, forecast_months)
net_worth = np.repeat(0.0, forecast_months)

# Loop through each forecast period
for i in range(forecast_months):
    
    # Find the previous investment deposit amount
    if i == 0: 
        previous_investment = 0
    else:
        previous_investment = investment_portfolio[i-1]
        
    # Calculate the value of your previous investments, which have grown
    previous_investment_growth = previous_investment*(1 + investment_rate_monthly)
    
    # Add your new deposit to your investment portfolio
    investment_portfolio[i] =  previous_investment_growth + investment_deposit_forecast[i]
    
    # Calculate your net worth at each point in time
    net_worth[i] = investment_portfolio[i] + cumulative_savings_new[i]
    
    # Print the results at each period
    print("Period " + str(i) + ": Current Investment Balance: " + \
          str(round(investment_portfolio[i], 2)) + \
          " | Savings Account: " + str(round(cumulative_savings_new[i], 2)) + \
          " | Net Worth: " + str(round(net_worth[i], 2)) \
         )
         
# Plot your forecasted cumulative savings vs investments and net worth
plt.plot(investment_portfolio, color='red')
plt.plot(cumulative_savings_new, color='blue')
plt.plot(net_worth, color='green')
plt.legend(handles=[investments_plot,savings_plot,networth_plot], loc=2)
plt.show()
```

---

## Comments

- Formatting problems in instructions.
- Way too much code in script. This means lots of scrolling.
- Some stuff like the output message ought to be hidden away by wrapping it in a function.
- It really isn't clear how to calculate the net worth at each time point.
- The hint is useless.
- There is plotting code that isn't discussed at all.
- The `for` loop isn't idiomatic (though it is easier to understand than a list comprehension for the target audience of beginners).
- If you get the answer wrong, the feedback is useless.
- There's ridiculous amount of output.
