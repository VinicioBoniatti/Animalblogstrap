module ApplicationHelper

    def month_year(value)
        l(value.to_datetime, format: '%B %Y').capitalize
    end
    def render_if(condition, template, record)
        render template, record if condition
    end
    
    def sub_masked_email(email)
        email.gsub(/(?<=.{2}).*@.*(?=\S{2})/, '****@****')
    end
end