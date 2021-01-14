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

alias Homework.Companies.Company
alias Homework.Merchants.Merchant
alias Homework.Transactions.Transaction
alias Homework.Users.User
alias Homework.Repo

company0 = Repo.insert!(%Company{name: "Divvy",       credit_line: 9392898})
company1 = Repo.insert!(%Company{name: "Vivint",      credit_line: 1293})
company2 = Repo.insert!(%Company{name: "Entrata",     credit_line: 12039})
company3 = Repo.insert!(%Company{name: "Instructure", credit_line: 49303})
company4 = Repo.insert!(%Company{name: "Qualtrics",   credit_line: 1029394})
company5 = Repo.insert!(%Company{name: "Pluralsight", credit_line: 88483})
company6 = Repo.insert!(%Company{name: "Ancestry",    credit_line: 92838})
company7 = Repo.insert!(%Company{name: "Lucid",       credit_line: 20394})
company8 = Repo.insert!(%Company{name: "Podium",      credit_line: 938929})
company9 = Repo.insert!(%Company{name: "Weave",       credit_line: 663872})

user0 = Repo.insert!(%User{first_name: "Constance",  last_name: "Erickson",  dob: "01/21/1995", company_id: company0.id})
user1 = Repo.insert!(%User{first_name: "Tonya",      last_name: "Turner",    dob: "03/24/1986", company_id: company0.id})
user2 = Repo.insert!(%User{first_name: "Tanya",      last_name: "Cleveland", dob: "12/21/1990", company_id: company2.id})
user3 = Repo.insert!(%User{first_name: "Alastair",   last_name: "Britton",   dob: "08/28/1962", company_id: company2.id})
user4 = Repo.insert!(%User{first_name: "Zackery",    last_name: "Wright",    dob: "06/08/1956", company_id: company3.id})
user5 = Repo.insert!(%User{first_name: "Roseanne",   last_name: "Wardle",    dob: "04/01/2002", company_id: company4.id})
user6 = Repo.insert!(%User{first_name: "Kadeem",     last_name: "Heaton",    dob: "05/25/1982", company_id: company5.id})
user7 = Repo.insert!(%User{first_name: "Lillie-May", last_name: "Olson",     dob: "01/05/1999", company_id: company6.id})
user8 = Repo.insert!(%User{first_name: "Darragh",    last_name: "Higgs",     dob: "11/11/1973", company_id: company7.id})
user9 = Repo.insert!(%User{first_name: "Tyson",      last_name: "Rooney",    dob: "09/26/1998", company_id: company8.id})

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

Repo.insert!(%Transaction{amount: 1000,    credit: true,  debit: false, description: "transaction0", company_id: company0.id, merchant_id: merchant0.id})
Repo.insert!(%Transaction{amount: 381793,  credit: false, debit: true,  description: "transaction1", company_id: company0.id, merchant_id: merchant1.id})
Repo.insert!(%Transaction{amount: 109294,  credit: true,  debit: false, description: "transaction2", company_id: company0.id, merchant_id: merchant2.id})
Repo.insert!(%Transaction{amount: 109294,  credit: true,  debit: false, description: "transaction3", company_id: company1.id, merchant_id: merchant0.id})
Repo.insert!(%Transaction{amount: 8939292, credit: false, debit: true,  description: "transaction4", company_id: company2.id, merchant_id: merchant1.id})
Repo.insert!(%Transaction{amount: 992930,  credit: true,  debit: false, description: "transaction5", company_id: company3.id, merchant_id: merchant2.id})
Repo.insert!(%Transaction{amount: 28888,   credit: true,  debit: false, description: "transaction6", company_id: company4.id, merchant_id: merchant3.id})
Repo.insert!(%Transaction{amount: 2727384, credit: false, debit: true,  description: "transaction7", company_id: company5.id, merchant_id: merchant4.id})
Repo.insert!(%Transaction{amount: 193840,  credit: true,  debit: false, description: "transaction8", company_id: company6.id, merchant_id: merchant8.id})
Repo.insert!(%Transaction{amount: 5929,    credit: true,  debit: false, description: "transaction9", company_id: company7.id, merchant_id: merchant9.id})
