
User.create!(user_name:  "Lam Oanh Nguyen",
             email: "nguyenthilamoanh37@gmail.com",
             password:              "lamoanh",
             password_confirmation: "lamoanh",
             address: "Nghe An provine, Viet Nam",
             phone_number: "0984047329",
             is_admin: true,
             profile_image: File.open("public/uploads/users/lam_oanh.jpg"))

User.create!(user_name:  "customer",
             email: "dongphuong2102@gmail.com",
             password:              "dongphuong",
             password_confirmation: "dongphuong",
             address: "Quang Nam provine, Viet Nam",
             phone_number: "0985441031",
             is_admin: false,
             profile_image: File.open("public/uploads/users/dong_phuong.jpg"))

User.create!(user_name:  "Sunflower",
             email: "manhhoan94@gmail.com",
             password:              "manhhoan",
             password_confirmation: "manhhoan",
             address: "Quang Binh provine, Viet Nam",
             phone_number: "0912111330",
             is_admin: false,
             profile_image: File.open("public/uploads/users/manh_hoan.jpg"))

20.times do |n|
  user_name  = Faker::Name.name
  email = Faker::Internet.free_email
  password = "123123"
  address = Faker::Address.city
  phone_number = "0123456789"
  User.create!(user_name:  user_name,
               email: email,
               password:              password,
               password_confirmation: password,
               address: address,
               phone_number: phone_number,
               is_admin: false,
               profile_image: File.open("public/uploads/users/anonymous.png"))
end

Category.create!(name: "Đồ ăn vặt",
                 description: "Do an vat ngon")

Category.create!(name: "Hoa quả dầm",
                 description: "Do an vat ngon")

Category.create!(name: "Sinh tố",
                 description: "Do an vat ngon")

Category.create!(name: "Chè",
                 description: "Do an vat ngon")

Category.create!(name: "Trà sữa",
                 description: "Do an vat ngon")


Classification.create(name: "Food",
                 description: "Cac loai do an")

Classification.create(name: "Drink",
                 description: "Cac loai thuc uong")


OrderStatus.create!(name: "Pending",
                 description: "Dang doi xac nhan tu cua hang")

OrderStatus.create!(name: "Confirmed",
                 description: "Cua hang da xac nhan")

OrderStatus.create!(name: "Shipping",
                 description: "Dang trong qua trinh gui hang")

OrderStatus.create!(name: "Shiped",
                 description: "Da gui hang")

OrderStatus.create!(name: "Cancelled",
                 description: "Da huy don hang")

Product.create!(name: "Bánh mì que", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh không những đáp ứng nhanh nhu cầu ăn uống, giúp bạn qua nhanh cơn đói chỉ với 1 ổ bánh mỳ que.", 
        image: File.open(Rails.root + "public/images/banhmyque.jpg"))
        
Product.create!(name: "Bò khô", 
        category_id: 1,
        classification: Classification.find(1),
        quantity: Random.rand(50),
        price: 15000, 
        description: "Với vị cay xè của ớt, vị ngọt của thịt bò khi nhai, vị giòn của sợi đu đủ cộng với mùi thơm tổng hợp của các loại gia vị khác tạo nên món Nộm Bò đặc biệt hấp dẫn đối với các tín đồ ăn vặt cũng như các bạn trẻ thời @", 
        image: File.open(Rails.root + "public/images/bo_kho.jpg"))
        
Product.create!(name: "Ca cao nóng", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Ca cao có rất nhiều tác dụng tốt cho sức khỏe mà nhiều người không thể ngờ tới: chống trầm cảm, giúp giảm cân, giúp ngủ ngon", 
        image: File.open(Rails.root + "public/images/cacaonong.jpg"))
        
Product.create!(name: "Cafe caramen", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Một chút biến tấu từ caramen thông thường, thêm nước cốt dừa béo ngậy, thạch và một số hoa quả nếu muốn, thêm chút nước cafe là bạn đã có món ăn giải nhiệt sảng khoái rồi nha. Đồ ăn vặt Online - SETFA có rất nhiều món caramen thập cẩm khác nhau để cho các bạn lựa chọn nhé!", 
        image: File.open(Rails.root + "public/images/cafe_caramel.jpg"))

Product.create!(name: "Cà rốt ép", 
        category_id: 3,
        classification: Classification.find(2),
        quantity: Random.rand(50),
        price: 15000, 
        description: "Nước ép cà rốt là loại nước uống chứa nguồn dinh dưỡng dồi dào. Một loại thức ăn chính của những chú thỏ thông minh nhé các bạn.  Mỗi ngày chúng ta uống một ly nước ép cà rốt sẽ rất tốt cho sức khỏe..", 
        image: File.open(Rails.root + "public/images/carotep.jpg"))
        
Product.create!(name: "Chanh leo", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 13000, 
        description: "Sinh tố chanh leo không chỉ là thức uống giải khát lý tưởng mà còn là thức uống giúp bạn giảm cân đẹp da; duy trì vóc dáng cho bạn. ", 
        image: File.open(Rails.root + "public/images/chanh_leo_coco.jpg"))
        
Product.create!(name: "Chanh dây", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Trong chanh leo (chanh dây), chứa rất nhiều loại acid amin rất phù hợp cho những ai bị suy nhược cơ thể. Là thức uống rất ngon so với chanh bình thường.", 
        image: File.open(Rails.root + "public/images/chanhday.jpg"))
        
Product.create!(name: "Chanh leo sữa chua", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Ngoài vị chua của chanh dây thì hòa thêm sữa chua có nên một thức uống đặc biệt, vị ngọt từ sữa giúp bạn có trải nghiệm đặc biệt trong miệng. Thức uống bổ dưỡng mà bạn nên thử ngay hôm nay.", 
        image: File.open(Rails.root + "public/images/chanhleo_suachua_daxay.jpg"))
        
Product.create!(name: "Chè đậu đỏ", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Chè đậu đỏ nước cốt dừa là một món ăn rất được ưa chuộng. Hạt đậu mềm, bở cùng với hương nước cốt dừa thơm ngậy khiến ai đã ăn rồi đều phải tấm tắc khen ngon. ", 
        image: File.open(Rails.root + "public/images/chedaudo.jpg"))
        
Product.create!(name: "Chè đậu thập cẩm", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Chè thập cẩm ngon ở hương vị hài hòa, ăn nhiều mà không ngán bởi nó có nhiều loại nguyên liệu khác nhau.",
        image: File.open(Rails.root + "public/images/chedauthapcam.jpg"))
        
Product.create!(name: "Chè đậu xanh", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Đỗ xanh có tác dụng giải nhiệt rất tốt vì thế thỉnh thoảng chị em hãy ăn loại chè này, vị bùi của đỗ xanh, và vị thơm của nước cốt dừa tạo nên hương vị thơm ngon của món chè truyền thống này. ", 
        image: File.open(Rails.root + "public/images/chedauxanh.jpg"))
        
Product.create!(name: "Che sen đậu xanh", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Đậu xanh đều có thể trị nhiều bệnh cho cả trẻ em và người lớn, giúp da dẻ hồng hào, thanh nhiệt tốt. Hạt sen giúp an thần, ngủ ngon, trị đau đầu, thiếu máu. Sự kết hợp của hai loại thực phẩm trong cách nấu chè hạt sen đậu xanh giúp cho món chè có tác dụng bồi bổ, thanh nhiệt rất tốt cho cơ thể vào mùa hè. ", 
        image: File.open(Rails.root + "public/images/chedauxanhdanh.jpg"))
        
Product.create!(name: "Chè khúc bạch", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 16000, 
        description: "Chè khúc bạch khá được mọi người ưa chuộng, nhất là trong những ngày hè nắng nóng, chính vì vị ngọt và mát của món ăn này. Phần thạch mềm dẻo, thơm hương sữa, hạnh nhân giòn tan và vị ngọt thanh thơm mát của nhãn đã tạo nên hương vị đặc biệt cho món chè khúc bạch.", 
        image: File.open(Rails.root + "public/images/chekhucbach.jpg"))
        
Product.create!(name: "Chè mít", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 16000, 
        description: "Mít thơm, giòn sần sật cùng trân châu dai dai nhiều màu sắc, sữa dừa béo béo sẽ khiến bạn rất hài lòng với thành quả là món chè mít của mình đấy.", 
        image: File.open(Rails.root + "public/images/chemit.jpg"))
        
Product.create!(name: "Chè thái có sầu riêng", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Người ta ghi nhận trái sầu riêng có tác dụng giúp tăng cường và phục hồi sức khỏe cho người ốm yếu, có ích cho cơ bắp, duy trì sự chắc khỏe của xương, giúp duy trì và điều hòa hoạt động của tuyến giáp, bảo vệ sự khỏe mạnh cho răng và lợi; cung cấp một nguồn chất béo thô có lợi cho cơ thể,", 
        image: File.open(Rails.root + "public/images/chethaicosaurieng.jpg"))
        
Product.create!(name: "Chè thái không sầu riêng", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Với những nguyên liệu đơn giản nhưng đã tạo lên cho chúng ta một món ăn vừa ngon vừa mát và giải nhiệt cực tốt trong cái nắng rát của mùa hè oi ả. Món chè dinh dưỡng mà chúng tôi đang nhắc đến chính là chè Thái xanh, đây cũng là một món ăn ngon được rất nhiều bạn trẻ ưa", 
        image: File.open(Rails.root + "public/images/chethaikhongsaurieng.jpg"))
        
Product.create!(name: "Chè xoa xoa", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Xoa xoa nấu từ rau câu, hạt lựu làm từ bột lọc loại ngon, thạch đen được chế từ một loại lá cây mát trên rừng, đặc biệt nước cốt dừa được ép từ dừa nguyên chất nên giữ cho cốc chè có vị thơm đặc trưng, không cần thêm bất kỳ hương liệu gì khác. Thạch giòn, trong, nước dừa và đậu xanh đánh béo ngậy cộng thêm cái dai dai của hạt lựu làm cho cốc chè có vị thanh, ngọt mát.", 
        image: File.open(Rails.root + "public/images/chexoaxoa.jpg"))
        
Product.create!(name: "Cốc ép", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Bạn đã nghe tới “nước ép cóc”, món giải khát độc đáo từ trái cóc xanh giúp hỗ trợ tiêu hóa, kích thích ăn ngon. Thức uống bổ dưỡng mà bạn cũng nên thử trong thực đơn hôm nay.", 
        image: File.open(Rails.root + "public/images/cocep.jpg"))
        
Product.create!(name: "Đậu hủ dâu", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Bạn đã từng thường ăn đậu hủ kèm với nước đường đen tuyệt ngon, thì hôm nay bạn sẽ trải nghiệm món mới được lấy dâu làm mùi vị chính, thơm béo của đậu với hương thơm của dâu tạo nên thức ăn ngon. Ban nên thử ngay hôm nay.", 
        image: File.open(Rails.root + "public/images/dauhudau.jpg"))
        
Product.create!(name: "Đậu hủ đậu nành", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/dauhudaunanh.jpg"))
        
Product.create!(name: "Đậu hủ sầu riêng", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/dauhusaurieng.jpg"))
        
Product.create!(name: "Đậu hủ socola", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Đậu hủ hương vị sô cô la cho bạn hương vị của tình yêu, ngọt ngào, ngon. La thức ăn bổ dưỡng cho bạn hôm nay", 
        image: File.open(Rails.root + "public/images/dauhusocola.jpg"))
        

Product.create!(name: "Đậu hũ sữa dừa", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Đậu hũ sữa dừa sẽ cho bạn vị béo của dừa, hương thơm của dừa sẽ cho bạn một món ăn lạ. Bạn nên thử ngay trong thực đơn hôm nay.", 
        image: File.open(Rails.root + "public/images/dauhusuadua.jpg"))
        
Product.create!(name: "Đậu xay sữa chua", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/dauxaysuachua.jpg"))
        
Product.create!(name: "Dừa", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Nước dừa là thức uống được nhiều người yêu thích không chỉ nhờ sự tươi mát, ngọt dịu mà nước dừa còn chứa nhiều chất dinh dưỡng có lợi cho sức khỏe.", 
        image: File.open(Rails.root + "public/images/dua.jpg"))
        
Product.create!(name: "Flan", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Flan trứng sữa hay flan sữa tươi đã làm món tráng miệng quá quen thuộc. ", 
        image: File.open(Rails.root + "public/images/flan.jpg"))
        
Product.create!(name: "Flan dâu", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Flan trứng sữa hay flan sữa tươi đã làm món tráng miệng quá quen thuộc Kèm theo hương vị dâu cho bạn ngon miệng hơn.", 
        image: File.open(Rails.root + "public/images/flandau.jpg"))
        
Product.create!(name: "Flan dừa", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Flan trứng sữa hay flan sữa tươi đã làm món tráng miệng quá quen thuộc. với hương vị dừa cho bạn món ăn ngon.", 
        image: File.open(Rails.root + "public/images/flandua.jpg"))
        
Product.create!(name: "Flan kem tươi", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Flan trứng sữa hay flan sữa tươi đã làm món tráng miệng quá quen thuộc. Với kem tươi cho bạn cảm giác ngon từ kem.", 
        image: File.open(Rails.root + "public/images/flankemtuoi.jpg"))
        
Product.create!(name: "Flan sầu riêng", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Flan trứng sữa hay flan sữa tươi đã làm món tráng miệng quá quen thuộc. Với vị sầu riêng thơm ngon hơn.", 
        image: File.open(Rails.root + "public/images/flansaurieng.jpg"))
        
Product.create!(name: "Freeze", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/freeze.jpg"))
        
Product.create!(name: "Hạt hướng dương", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Không chỉ là thứ quà vặt giúp cho những cuộc trò chuyện trở nên “xôm tụ” hơn, hạt hướng dương còn có những công dụng vô cùng tuyệt vời .", 
        image: File.open(Rails.root + "public/images/hat-huong-duong.jpg"))
        
Product.create!(name: "Hồng trà việt quốc", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Với hương vị thơm ngon, chất lượng luôn được đảm bảo lại cộng với thực đơn luôn đa dạng và phong phú, trà sữa Toco Toco dù mới xuất hiện tại Việt Nam", 
        image: File.open(Rails.root + "public/images/hong_tra_viet_quoc.jpg"))
        
Product.create!(name: "Hồng trà", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Hồng trà hay Trà hồng đều được tạo ra từ lá chè tươi.", 
        image: File.open(Rails.root + "public/images/hongtra.jpg"))
        
Product.create!(name: "Hồng trà kem dừa", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Ngon ngon, mát ngậy, được hòa quyện giữa hương vị thơm ngon của hồng trà và viên kem dừa mát lạnh, ngọt ngào. Thơm ngon, ngọt mát nơi đầu lưỡi.Chắc hẳn Hồng trà kem dừa sẽ để lại cho bạn một ấn tượng khó quên đấy ạ", 
        image: File.open(Rails.root + "public/images/hongtra_kemdua.jpg"))
        
Product.create!(name: "Khoai lang", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Khoai lang là món ăn được nhiều người ưa thích vì vị ngọt bùi, thơm ngon lại có lợi cho sức khỏe", 
        image: File.open(Rails.root + "public/images/khoailang.jpg"))
        
Product.create!(name: "Macchiato", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "“Macchiato” tiếng Ý có nghĩa là “vệt lốm đốm”, dùng để chỉ một trong những sản phẩm café Ý điển hình, bên cạnh Cappuccino hay Latte. Ngày nay, Macchiato còn được sử dụng để gọi các loại trà có lớp bọt sữa dày căng mịn phủ phía trên.", 
        image: File.open(Rails.root + "public/images/macchiato.jpg"))
        
Product.create!(name: "Macchiato hồng trà", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Từ Macchiato Tea nguyên gốc, hàng loạt biến thể của nó đã được hình thành mà nổi bật nhất chính là Macchiato Tea Hồng trà – sự kết hợp hoàn hảo giữa lớp trà tươi và lớp kem sữa đặt biệt.", 
        image: File.open(Rails.root + "public/images/macchiato_hongtra.jpg"))
        
Product.create!(name: "Macchiato matcha", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Với hương vị thơm ngon, chất lượng luôn được đảm bảo lại cộng với thực đơn luôn đa dạng và phong phú, trà sữa Toco Toco dù mới xuất hiện tại Việt Nam chưa lâu nhưng đã chiếm được rất nhiều sự yêu thích của nhiều gia đình cũng như các bạn trẻ. 

Trà sữa Toco có hương vị rất đặc trưng, với cái ngọt ngào của sữa, cái thơm thoảng nhẹ nhàng của trà, cái béo ngậy của những viên trân châu hay lát pudding, chưa kể đến hương vị trái cây tự nhiên được pha chế hài hòa. ", 
        image: File.open(Rails.root + "public/images/macchiato_matcha.jpg"))
        
Product.create!(name: "Macchiato socola", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Một sự kết hợp tuyệt vời đến hoàn hảo giữa Socola Nguyên chất với lớp Macchiato thơm ngậy bên trên. Đây là sẽ một lựa chọn tuyệt vời", 
        image: File.open(Rails.root + "public/images/macchiato_socola.jpg"))
        
Product.create!(name: "Macchiato hoàng gia", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Macchiato Hoàng gia đã được các bạn trẻ cực kỳ yêu thích, và đã trở thành <cạ cứng> với fan TocoToco trong hè này", 
        image: File.open(Rails.root + "public/images/macchiato-hoang-gia.jpg"))
        
Product.create!(name: "macchiato trà xanh", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Macchiato đang là món uống cực hot trong giới teen Sài Gòn. Trà đen, trà xanh, giờ thì có thêm trà đào nữa nè! Quán này nổi tiếng nhờ ly trà Macchiato luôn có lớp bọt kem sữa phô mai dày cộm mà giá lại mềm vô cùng.", 
        image: File.open(Rails.root + "public/images/macchiato-tra-xanh.jpg"))
        
Product.create!(name: "Mít sứa dừa", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/mitsuadua.jpg"))
        
Product.create!(name: "Mít sữa dừa sầu riêng", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/mitsuaduasaurieng.jpg"))
        
Product.create!(name: "Mứt dâu tây", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Những miếng mứt dâu tây óng ánh, ngọt ngọt , chua chua và thơm hương dâu dịu nhẹ chắc chắn sẽ làm bạn thích mê chỉ ngay từ lần nếm thử đầu tiên thôi đấy!", 
        image: File.open(Rails.root + "public/images/mutdautay_daxay.jpg"))
        
Product.create!(name: "Nước bưởi", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Nước ép bưởi có vị thanh mát, chua chua ngọt ngọt thật hấp dẫn.", 
        image: File.open(Rails.root + "public/images/nuoc_buoi.jpg"))
        

Product.create!(name: "Nước cà rốt", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Cà rốt có tác dụng giải độc cơ thể, chứa nhiều vitamin A tốt cho mắt.", 
        image: File.open(Rails.root + "public/images/nuoc_ca_rot.jpg"))
        
Product.create!(name: "Nước cam", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Nước cam hay nước cam ép, nước cam vắt là một loại thức uống phổ biến được làm từ cam bằng cách chiết xuất nước từ trái cam tươi cung cấp nhiều vitamin C, là thức uống bổ dưỡng", 
        image: File.open(Rails.root + "public/images/nuoc_cam.jpg"))
        
Product.create!(name: "Nước cam cà rốt", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Cam được biết đến là một trong những loại trái cây được nhiều người ưa thích. Nước cam không chỉ bổ dưỡng mà còn có nhiều công dụng kỳ diệu khác cho sức khỏe mà nhiều người ít để ý đến nó. Nước cam, trái cam, sinh tố cam...hay tất cả các đồ uống từ cam đều có lợi cho sức khỏe", 
        image: File.open(Rails.root + "public/images/nuoc_cam_carot.jpg"))
        
Product.create!(name: "Nước dừa ép", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Một chút biến tấu từ caramen thông thường, thêm nước cốt dừa béo ngậy, thạch và một số hoa quả nếu muốn, thêm chút nước cafe là bạn đã có món ăn giải nhiệt sảng khoái rồi nha. Đồ ăn vặt Online - SETFA có rất nhiều món caramen thập cẩm khác nhau để cho các bạn lựa chọn nhé!", 
        image: File.open(Rails.root + "public/images/nuoc_dua_ep.jpg"))

Product.create!(name: "Nước Khế", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/nuoc_khe.jpg"))
        
        
Product.create!(name: "Nước lê", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 13000, 
        description: "Sinh tố chanh leo không chỉ là thức uống giải khát lý tưởng mà còn là thức uống giúp bạn giảm cân đẹp da; duy trì vóc dáng cho bạn. ", 
        image: File.open(Rails.root + "public/images/nuoc_le.jpg"))
        
Product.create!(name: "Nước ổi", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Nước ép ổi là loại thức uống giàu vitamin, protein và khoáng chất, nhưng không có cholesterol và ít carbohydrate khiến bạn có cảm giác ngon miệng và no lâu", 
        image: File.open(Rails.root + "public/images/nuoc_oi.jpg"))
        
Product.create!(name: "Nước táo", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Nước ép táo thơm ngon mát lành mang lại nhiều giá trị dinh dưỡng cho sức khỏe. ", 
        image: File.open(Rails.root + "public/images/nuoc_tao.jpg"))
        
Product.create!(name: "Nước trà xanh", 
        category_id: 4,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Trà xanh ngày càng trở thành thức uống phổ biến trong cuộc sống hàng ngày của chúng ta.", 
        image: File.open(Rails.root + "public/images/nuoc_traxanh.jpg"))
        
Product.create!(name: "Nước chanh", 
        category_id: 4,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Nước chanh giúp giảm cân, làm đẹp, là thần dược có tác dụng cực tốt cho sức khỏe.", 
        image: File.open(Rails.root + "public/images/nuocchanh.jpg"))
        
Product.create!(name: "Rau câu", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Rau câu là món ăn nhẹ rất được nhiều người ưa chuộng", 
        image: File.open(Rails.root + "public/images/raucau.jpg"))
        
Product.create!(name: "Rau câu Flan dừa", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 16000, 
        description: "Bánh flan là sự kệt hợp tuyệt vời nhất của trứng, đường và sữa tươi có nguồn gốc từ Pháp.", 
        image: File.open(Rails.root + "public/images/raucauflandua.jpg"))
        
Product.create!(name: "Rau câu trái dừa", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 16000, 
        description: "Bánh flan là sự kệt hợp tuyệt vời nhất của trứng, đường và sữa tươi có nguồn gốc từ Pháp.", 
        image: File.open(Rails.root + "public/images/raucautraidua.jpg"))
        
Product.create!(name: "Sinh tố bơ", 
        category_id: 4,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Bơ luôn được đánh giá là một loại trái cây chứa hàm lượng dinh dưỡng cao. Người ta thường dùng bơ để tăng hương vị và dưỡng chất cho các món ăn.Cho tới nay, bơ ngày càng được biết đến rộng rãi nhờ vào những thành phần dinh dưỡng phong phú của nó.",
        image: File.open(Rails.root + "public/images/sinhtobo.jpg"))
        
Product.create!(name: "Sinh tố mảng cầu", 
        category_id: 4,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: " Sinh tố mãng cầu là một trong những món sinh tố - nước trái cây được nhiều người ưa chuộng", 
        image: File.open(Rails.root + "public/images/sinhtomangcau.jpg"))
        
Product.create!(name: "Sữa chua", 
        category_id: 4,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Công dụng của sữa chua thì ai cũng có thể biết, sữa chua chứa nhiều lợi khuẩn giúp tiêu hóa tốt và triệt để thức ăn, chứa nhiều vi chất thiết yếu cho cơ thể, chống oxy hóa….  Giúp cơ thể khỏe mạnh, nâng cao sức đề kháng giúp chúng ta luôn tràn đầy năng lượng cho những công việc hàng ngày.",
        image: File.open(Rails.root + "public/images/suachua.jpg"))
        
Product.create!(name: "Tàu hủ", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Là thức ăn nhanh bổ dưỡng, hương vị thơm ngon.", 
        image: File.open(Rails.root + "public/images/tauhu.jpg"))
        
Product.create!(name: "Thạch cafe", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Thạch rau câu cafe với lớp thạch mềm mịn, màu nâu đen đẹp mắt và thoảng chút hương café đảm bảo sẽ khiến bạn mê mẩn", 
        image: File.open(Rails.root + "public/images/thach_cafe.jpg"))
        
Product.create!(name: "Thạch macha", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 20000, 
        description: " Hương vị trà sữa matcha thơm ngon khiến ai uống đều thích mê", 
        image: File.open(Rails.root + "public/images/thach_matcha.jpg"))
        
Product.create!(name: "Thơm ép", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Uống 1 cốc nước ép dứa mỗi ngày và tác dụng giải độc cơ thể, giảm vòng eo, tăng size vòng 1 đến không ngờ", 
        image: File.open(Rails.root + "public/images/thomep.jpg"))
        
Product.create!(name: "Trà xanh", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/tra_xanh.jpg"))
        

Product.create!(name: "Trà chanh hoàng gia", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Bạn đã sẵn sàng cùng TocoToco bước vào thế giới Hoàng Gia, nếm trọn vị của đẳng cấp, thưởng thức những món đồ tuyệt hảo: Trà chanh Hoàng Gia", 
        image: File.open(Rails.root + "public/images/trachanh_hoanggia.jpg"))
        
Product.create!(name: "Trân châu sợi", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Trà sữa trân châu sợi là sự kết tinh tuyệt hảo từ trà sữa truyền thống và những sợi trân châu sợi dài dai ngon tuyệt sẽ là một trải nghiệm mới lạ cho chúng mình", 
        image: File.open(Rails.root + "public/images/tran_chau_soi.jpg"))
        
Product.create!(name: "Trân châu", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/tranchau.jpg"))
        
Product.create!(name: "Trà sen vàng", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: " Trà sen vàng là loại thức uống cực thích hợp cho thời tiết mát mẻ mùa thu . Bạn có đoán được nguyên liệu tạo nên thức uống tuyệt vời", 
        image: File.open(Rails.root + "public/images/trasenvang.jpg"))
        
Product.create!(name: "Trà sữa cafe", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Trà sữa là loại thức uống được nhiều người yêu thích, đặc biệt là trẻ em và các bạn học sinh, sinh viên. Không chỉ thơm mà còn có chút béo, hương thơm vị cà phê thích mê.", 
        image: File.open(Rails.root + "public/images/trasua_cafe.jpg"))
        
Product.create!(name: "Trà sữa dâu tây", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: " trà sữa trân châu đã biến hóa tạo ra rất nhiều loại khác nhau với nhiều hương vị nào là vị bạc hà, vị sô cô la, vị chanh, vị dâu tây", 
        image: File.open(Rails.root + "public/images/trasua_dautay.jpg"))
        
Product.create!(name: "Trà sữa dưa gang", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: " trà sữa trân châu đã biến hóa tạo ra rất nhiều loại khác nhau với nhiều hương vị nào là vị bạc hà, vị sô cô la, vị chanh, vị dâu tây", 
        image: File.open(Rails.root + "public/images/trasua_duagang.jpg"))
        
Product.create!(name: "Trà sữa panda", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Trà sữa Panda được nấu từ lá trà nhập khẩu Thái Lan với hương vị khá thơm và ít gây mất ngủ. Vị trà nhẹ nhàng, hòa quyện với vị sữa ngọt nhưng không ngấy tạo ra hương vị đặc trưng, khác với trà sữa Đài Loan từng làm mưa làm gió một thời ở Sài Thành.", 
        image: File.open(Rails.root + "public/images/trasua_panda.jpg"))
        
Product.create!(name: "Trà sữa toco", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/trasua_toco.jpg"))
        
Product.create!(name: "Trà sữa trân châu boba", 
        category_id: 1,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/trasua_tranchauboba.jpg"))
        
Product.create!(name: "Trà xanh xoài", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Mùa hè cũng đã đến rồi, xoài ở Việt Nam thì rất là nhiều, nhưng các bạn có biết rằng xoài có thể kết hợp với trà xanh tạo ra món sinh tố rất thơm ngon. ", 
        image: File.open(Rails.root + "public/images/traxanh_xoai.jpg"))
        
Product.create!(name: "Xúc xích", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Là thức ăn nhanh bổ dưỡng, kèm theo ổ bánh mì nữa thì tuyệt ngon,", 
        image: File.open(Rails.root + "public/images/xuc_xich.jpg"))
        
Product.create!(name: "Yakult Xoài", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 20000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/yakult_xoai.jpg"))
        
Product.create!(name: "Yakult dừa", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 20000, 
        description: "Là thức ăn nhanh bổ dưỡng.Yakult là sữa uống lên men có chứa khuẩn sữa sống chủng Lactobacillus casei Shirota, ngon hơn với hương vị dừa.", 
        image: File.open(Rails.root + "public/images/yaourtdua.jpg"))
        
Product.create!(name: "Yakult trái dừa", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 25000, 
        description: "Là thức ăn nhanh bổ dưỡng. Yakult là sữa uống lên men có chứa khuẩn sữa sống chủng Lactobacillus casei Shirota có hương vị dừa béo ngậy thơm ngon.", 
        image: File.open(Rails.root + "public/images/yaourttraidua.jpg"))
        
Product.create!(name: "Macchiato hồng trà", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/macchiato_hongtra.jpg"))
        
Product.create!(name: "Macchiato matcha", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/macchiato_matcha.jpg"))
        
Product.create!(name: "Macchiato socola", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Một sự kết hợp tuyệt vời đến hoàn hảo giữa Socola Nguyên chất với lớp Macchiato thơm ngậy bên trên. Đây là sẽ một lựa chọn tuyệt vời", 
        image: File.open(Rails.root + "public/images/macchiato_socola.jpg"))
        
Product.create!(name: "macchiato hoàng gia", 
        category_id: 5,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/macchiato-hoang-gia.jpg"))
        
Product.create!(name: "macchiato trà xanh", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng", 
        image: File.open(Rails.root + "public/images/macchiato-tra-xanh.jpg"))
        
Product.create!(name: "Mít sứa dừa", 
        category_id: 1,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Là thức ăn nhanh bổ dưỡng kèm hương vị thơm của mít, vị ngon của sữa thêm hương vị béo ngậy của dừa.", 
        image: File.open(Rails.root + "public/images/mitsuadua.jpg"))
        
Product.create!(name: "Mít sữa dừa sầu riêng", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Là thức ăn nhanh bổ dưỡng, hương vị mít kèm với sữa dừa, có thêm hương vị sầu riêng thơm nứt mũi.", 
        image: File.open(Rails.root + "public/images/mitsuaduasaurieng.jpg"))
        
Product.create!(name: "Mứt dâu tây", 
        category_id: 3,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Món mứt dâu tây thơm ngon, đặc biệt chỉ có ở nơi đây, được làm thủ công hợp vệ sinh đảm bảo cho bạn một món ăn ngon", 
        image: File.open(Rails.root + "public/images/mutdautay_daxay.jpg"))
        
Product.create!(name: "Nước bưởi", 
        category_id: 3,
        classification: Classification.find(2), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Uống nước vỏ bưởi giảm cân không là câu hỏi của rất nhiều phụ nữ muốn làm đẹp mà không cần phải mất sức, tón công, bạn chỉ việc đến đây gọi món và ngồi uống thức uống bổ dướng này.", 
        image: File.open(Rails.root + "public/images/nuoc_buoi.jpg"))
        
Product.create!(name: "Cóc dầm", 
        category_id: 2,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Mới nghe đến món cóc dầm muối ớt là đã thấy thèm rồi phải không mọi người. Cứ vào mùa cóc hàng năm là Quà Vặt Việt lại mang đến cho mọi người món cóc dầm muối ớt thật là ngon và hấp dẫn. ", 
        image: File.open(Rails.root + "public/images/cocdam.jpg"))
        
Product.create!(name: "Xoài lắc bò khô", 
        category_id: 2,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 18000, 
        description: "Xoài dầm là một trong những món ăn cực khoái khẩu của các bạn trẻ và các tín đồ ăn vặt. Sau những giờ học, làm việc được thưởng thức 1 đĩa xoài dầm thì quá tuyệt vời phải không nào. Với hương vị chua chua ngọt ngọt từ xoài, chút mặn từ muối cộng thêm vị cay nhẹ từ ớt làm con người ta ăn 1 miếng lại muốn ăn thêm miếng nữa.", 
        image: File.open(Rails.root + "public/images/xoailacbokho.jpg"))
        
        
Product.create!(name: "Xoài dầm", 
        category_id: 2,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Xoài dầm là một trong những món ăn cực khoái khẩu của các bạn trẻ và các tín đồ ăn vặt. Sau những giờ học, làm việc được thưởng thức 1 đĩa xoài dầm thì quá tuyệt vời phải không nào. Với hương vị chua chua ngọt ngọt từ xoài, chút mặn từ muối cộng thêm vị cay nhẹ từ ớt làm con người ta ăn 1 miếng lại muốn ăn thêm miếng nữa.", 
        image: File.open(Rails.root + "public/images/xoaidam.jpg"))
        
Product.create!(name: "Cốc lắc bò dầm", 
        category_id: 2,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 10000, 
        description: "Mới nghe đến món cóc dầm muối ớt là đã thấy thèm rồi phải không mọi người. Cứ vào mùa cóc hàng năm là Đồ ăn vặt Online - SETFA lại mang đến cho mọi người món cóc dầm muối ớt thật là ngon và hấp dẫn. Với từ 2 người trở lên ngồi buôn chuyện cùng với đĩa Cóc dầm muối ớt của Quà Vặt Việt thì thật không còn thú gì vui hơn. ", 
        image: File.open(Rails.root + "public/images/coclacbodam.jpg"))
        
Product.create!(name: "Hoa quả dầm", 
        category_id: 2,
        classification: Classification.find(1), 
        quantity: Random.rand(50),
        price: 15000, 
        description: "Sữa chua mít, sữa chua hoa quả dầm là 2 món ăn thanh nhiệt cho ngày hè giảm cân. Ăn sữa chua hàng ngày không chỉ giúp chị em phụ nữ duy trì một làn da mịn màng và tươi tắn mà hơn thế nữa nó còn được coi là một “thần dược” giúp giảm cân hiệu quả.", 
        image: File.open(Rails.root + "public/images/hoa qua dam.jpg"))

products = Product.order(:created_at).take(20)
15.times do
  content = Faker::Lorem.sentence(5)
  products.each { |product| product.comments.create!(content: content, user_id: 1 + Random.rand(20)) }
end