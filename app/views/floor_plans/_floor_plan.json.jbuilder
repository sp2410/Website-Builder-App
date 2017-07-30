json.extract! floor_plan, :id, :floor_planned, :amount_floor_planned, :date_opened, :percentcharged, :admin_fee, :setup_fee, :additional_fee, :length_of_floor_plan, :days_untill_firstcurtailment, :days_untill_secondcurtailment, :days_untill_third_curtailment, :company_name, :company_contact, :total, :created_at, :updated_at
json.url floor_plan_url(floor_plan, format: :json)
