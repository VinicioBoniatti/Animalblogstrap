module ArticlesHelper
    def month_day_comma_year(datetime)
        l(datetime, format: '%B %e, %Y').capitalize # documentação para data
    end
end
