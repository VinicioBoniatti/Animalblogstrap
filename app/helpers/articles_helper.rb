module ArticlesHelper
    def month_day_comma_year(datetime)
        datetime.strftime('%B %e, %Y') # documentação para data
    end
end
