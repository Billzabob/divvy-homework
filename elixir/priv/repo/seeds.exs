# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Homework.Repo.insert!(%Homework.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Homework.Users.User
alias Homework.Merchants.Merchant
alias Homework.Transactions.Transaction
alias Homework.Repo

user0 = Repo.insert!(%User{first_name: "Constance",  last_name: "Erickson",  dob: "01/21/1995"})
user1 = Repo.insert!(%User{first_name: "Tonya",      last_name: "Turner",    dob: "03/24/1986"})
user2 = Repo.insert!(%User{first_name: "Tanya",      last_name: "Cleveland", dob: "12/21/1990"})
user3 = Repo.insert!(%User{first_name: "Alastair",   last_name: "Britton",   dob: "08/28/1962"})
user4 = Repo.insert!(%User{first_name: "Zackery",    last_name: "Wright",    dob: "06/08/1956"})
user5 = Repo.insert!(%User{first_name: "Roseanne",   last_name: "Wardle",    dob: "04/01/2002"})
user6 = Repo.insert!(%User{first_name: "Kadeem",     last_name: "Heaton",    dob: "05/25/1982"})
user7 = Repo.insert!(%User{first_name: "Lillie-May", last_name: "Olson",     dob: "01/05/1999"})
user8 = Repo.insert!(%User{first_name: "Darragh",    last_name: "Higgs",     dob: "11/11/1973"})
user9 = Repo.insert!(%User{first_name: "Tyson",      last_name: "Rooney",    dob: "09/26/1998"})

merchant0 = Repo.insert!(%Merchant{name: "Divvy",       description: "Divvy description"})
merchant1 = Repo.insert!(%Merchant{name: "Vivint",      description: "Vivint description"})
merchant2 = Repo.insert!(%Merchant{name: "Entrata",     description: "Entrata description"})
merchant3 = Repo.insert!(%Merchant{name: "Instructure", description: "Instructure description"})
merchant4 = Repo.insert!(%Merchant{name: "Qualtrics",   description: "Qualtrics description"})
merchant5 = Repo.insert!(%Merchant{name: "Pluralsight", description: "Pluralsight description"})
merchant6 = Repo.insert!(%Merchant{name: "Ancestry",    description: "Ancestry description"})
merchant7 = Repo.insert!(%Merchant{name: "Lucid",       description: "Lucid description"})
merchant8 = Repo.insert!(%Merchant{name: "Podium",      description: "Podium description"})
merchant9 = Repo.insert!(%Merchant{name: "Weave",       description: "Weave description"})

Repo.insert!(%Transaction{amount: 1000,    credit: true,  debit: false, description: "transaction0", user_id: user0.id, merchant_id: merchant0.id})
Repo.insert!(%Transaction{amount: 381793,  credit: false, debit: true,  description: "transaction1", user_id: user0.id, merchant_id: merchant1.id})
Repo.insert!(%Transaction{amount: 109294,  credit: true,  debit: false, description: "transaction2", user_id: user0.id, merchant_id: merchant2.id})
Repo.insert!(%Transaction{amount: 109294,  credit: true,  debit: false, description: "transaction3", user_id: user1.id, merchant_id: merchant0.id})
Repo.insert!(%Transaction{amount: 8939292, credit: false, debit: true,  description: "transaction4", user_id: user2.id, merchant_id: merchant1.id})
Repo.insert!(%Transaction{amount: 992930,  credit: true,  debit: false, description: "transaction5", user_id: user3.id, merchant_id: merchant2.id})
Repo.insert!(%Transaction{amount: 28888,   credit: true,  debit: false, description: "transaction6", user_id: user4.id, merchant_id: merchant3.id})
Repo.insert!(%Transaction{amount: 2727384, credit: false, debit: true,  description: "transaction7", user_id: user5.id, merchant_id: merchant4.id})
Repo.insert!(%Transaction{amount: 193840,  credit: true,  debit: false, description: "transaction8", user_id: user6.id, merchant_id: merchant8.id})
Repo.insert!(%Transaction{amount: 5929,    credit: true,  debit: false, description: "transaction9", user_id: user7.id, merchant_id: merchant9.id})
