json.array!(@plans) do |plan|
  json.extract! plan, :id, :image_url, :name, :launch_date, :summary, :investment_time, :investment_money, :mo_goal, :project_url, :business_plan_url, :vendor_url, :customer_url
  json.url plan_url(plan, format: :json)
end
