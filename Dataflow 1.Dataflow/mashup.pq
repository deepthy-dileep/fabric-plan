[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared countries = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/countries.csv"), [Delimiter = ",", Columns = 3, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true])
in
  #"Promoted headers";
shared customers = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/customers.csv"), [Delimiter = ",", Columns = 11, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"customer_id", Int64.Type}, {"customer_name", type text}, {"sales_rep_id", Int64.Type}, {"customer_type", type text}, {"customer_region", type text}, {"customer_country", type text}, {"customer_city", type text}, {"customer_sales_territory", type text}, {"customer_transaction_currency", type text}, {"territory_id", Int64.Type}, {"customer_tier", type number}})
in
  #"Changed column type";
shared dates2026 = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/dates2026.csv"), [Delimiter = ",", Columns = 23, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"date_id", Int64.Type}, {"Date", type date}, {"Date_US", type date}, {"year", Int64.Type}, {"month", Int64.Type}, {"month_short_name", type text}, {"quarter", Int64.Type}, {"quarter_name", type text}, {"day", Int64.Type}, {"day_of_week", Int64.Type}, {"day_name", type text}, {"year_month", Int64.Type}, {"day_of_year", Int64.Type}, {"start_of_month", type date}, {"start_of_quarter", type date}, {"start_of_year", type date}, {"end_of_month", type date}, {"end_of_quarter", type date}, {"end_of_year", type date}, {"week_of_month", Int64.Type}, {"week_of_year", Int64.Type}, {"days_in_month", Int64.Type}, {"is_weekend", Int64.Type}})
in
  #"Changed column type";
shared sales = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/sales.csv"), [Delimiter = ",", Columns = 36, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"date_id", Int64.Type}, {"date", type date}, {"customer_id", Int64.Type}, {"sales_rep_id", Int64.Type}, {"customer_name", type text}, {"customer_type", type text}, {"customer_region", type text}, {"customer_country", type text}, {"customer_city", type text}, {"customer_sales_territory", type text}, {"customer_transaction_currency", type text}, {"territory_id", Int64.Type}, {"sku_id", Int64.Type}, {"sku_code", type text}, {"category", type text}, {"variant", type text}, {"pack_format", type text}, {"multipack", type text}, {"invoice_id", type text}, {"invoice_line_number", Int64.Type}, {"gross_sale_units", Int64.Type}, {"exchange_rate", type number}, {"selling_price_gc", type number}, {"gross_revenue_gc", type number}, {"discount_gc", type number}, {"net_revenue_gc", type number}, {"cogs_gc", type number}, {"total_cogs_gc", type number}, {"gross_profit_gc", type number}, {"selling_price_lc", type number}, {"gross_revenue_lc", type number}, {"discount_lc", type number}, {"net_revenue_lc", type number}, {"total_cogs_lc", type number}, {"gross_profit_lc", type number}, {"promotion", type text}})
in
  #"Changed column type";
shared sales_reps = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/sales_reps.csv"), [Delimiter = ",", Columns = 5, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"sales_rep_id", Int64.Type}, {"sales_rep_name", type text}, {"sales_rep_email", type text}, {"sales_rep_region", type text}, {"primary_territory_id", Int64.Type}})
in
  #"Changed column type";
[BindToDefaultDestination = true]
shared skus = let
  Source = Csv.Document(Web.Contents("https://microsoftapc-my.sharepoint.com/personal/v-dedileep_microsoft_com/Documents/Data/skus.csv"), [Delimiter = ",", Columns = 9, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"sku_id", Int64.Type}, {"sku_code", type text}, {"category", type text}, {"brand", type text}, {"variant", type text}, {"pack_format", type text}, {"multipack", type text}, {"selling_price_gc", type number}, {"cogs_gc", type number}})
in
  #"Changed column type";
shared DefaultDestination = let
  Source = Lakehouse.Contents([HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true, CreateNavigationProperties = false, EnableFolding = false]),
  #"Navigation 1" = Source{[workspaceId = "37a66db5-1c17-4127-a895-2dc0220d4171"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[lakehouseId = "8ebf4175-f75d-4217-81ba-413baafbdc45"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Id = "dbo", ItemKind = "Schema"]}[Data]
in
  #"Navigation 3";
