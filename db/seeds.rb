Article.delete_all

user = User.first
text = "Mauris vel pretium neque, et faucibus mauris. Vivamus mattis est sed erat venenatis, in varius lacus gravida. Quisque convallis elit eget aliquet congue. Duis volutpat ante nec ornare suscipit. Morbi at massa luctus, vehicula dui sodales, molestie elit. Pellentesque iaculis a ante et rutrum. Praesent efficitur tortor id rhoncus finibus. In rhoncus lectus at varius vestibulum. Pellentesque semper nulla non posuere sollicitudin. Donec molestie ultrices felis, id ultrices nunc laoreet eget. Aenean eget suscipit sapien, et placerat nunc. Duis nulla ex, volutpat volutpat purus et, mattis egestas tellus. Morbi vestibulum nibh ipsum, faucibus pretium dolor efficitur egestas. Duis finibus quam vitae odio egestas mattis. Quisque accumsan mi varius, maximus ante ac, elementum leo."

p 'Iniciando...'

Category.all.each do |category|
    30.times do
        Article.create!(
            title: "Article #{rand(10_000)}",
            body: text,
            category_id: category.id,
            user_id: user.id,
            created_at: rand(365).days.ago
        )
    end
end

p 'Terminou!'