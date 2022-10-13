module ArticlesHelper
    def month_day_comma_year(value)
        l(value, format: '%B %e, %Y').capitalize # documentação para data
    end
end
