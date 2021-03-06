# Lettuce Books

I don't know if I'm bad at budgeting money because it's such a tedious task and I lack the patience, if I'm not doing it right, or I simply haven't found a tool that I can stick with it.

But I no longer have the luxury of ignoring the 'books'. It's time for me to get _seriouser_ and manage my money for real. My previous attempts include spending hours building complex spreadsheets listing out what my debts and budget are but unfortunately they are too static. I've also put hours into learning each of the tools like quickbooks, mint, YNAB but for whatever reasons they don't stick with me.

So I'm going to take a risk and rather than build another spreadsheet or try to learn someone else's software, I'm going to _roll my own!_. Yep I know this is probably the hardest path of them all. But seems that I would be crazy if I went back to trying old ways and expect different results. Here's to scratching my own itch. Wish me luck! I don't plan to win any code awards. My goal is to manage my money and turn 'bookkeeping... _ugh_ into bookkeeping... _ahh_'

# todo

## Backend

## Scaffold

- [ ] update fixtures and controller tests

### Data Modeling

- [ ] change the `.all` calls into scoped queries.
- [ ] add associations as needed
- [ ] add validations as needed
- [ ] connect tasks, notes to models
- [ ] Reminders for due dates
- [ ] Assets model that is an `after_create` of liabilities and equity. Add after_callback to archive when liabilities / equity are archived.
- [ ] Allocation model for adding capital to expenses from BOTH equities and liabilities
- [ ] Reports model for an overview snapshots of existing issues
- [ ] Streams model to manage planning for income.
- [ ] Audit model that has a checklist to review all accounts every 90 days and make necessary adjustments

### Methods

- [ ] add up totals
- [ ] impact balances by funding, spending, transfers (FST)

### Auth

- [ ] connect user to family_id

## Frontend

### Javascript

- [ ] sort table
- [ ] make it easy to add a new vendor from current (FST) view.

### UI
- [ ] any items created by another family member should be highlighted somehow


## Features
- [ ] fast spend page (asset to spend from, amt) auto adds: task to complete later, and today's date for transaction.
- [ ] balance sheet
- [ ] P&L
- [ ] statement of cashflow??
- [ ] spending by book


# user can...
- [x] create a book
- [ ] assign expenses to a book
- [ ] view all expenses related to a book
- [ ] view all expenses
- [ ] see total budget for a book based on underlying expenses
- [ ] see actual amounts spent on expense
- [ ] automate allocation of capital to expense budget based on time and account settings
- [ ] close a book and all it's connected expenses
