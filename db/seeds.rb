user_1 = Rack::Test::UploadedFile.new(File.new('app/assets/images/photos/1.jpeg'))
User.create(full_name: 'Rebeca J. Stuart', photo: user_1)

user_2 = Rack::Test::UploadedFile.new(File.new('app/assets/images/photos/2.png'))
User.create(full_name: 'Erica C. Flower', photo: user_2)

user_3 = Rack::Test::UploadedFile.new(File.new('app/assets/images/photos/3.png'))
User.create(full_name: 'Jhon Mayers', photo: user_3)

user_4 = Rack::Test::UploadedFile.new(File.new('app/assets/images/photos/4.png'))
User.create(full_name: 'Mike Mellon', photo: user_4)

user_5 = Rack::Test::UploadedFile.new(File.new('app/assets/images/photos/5.jpg'))
User.create(full_name: 'Fabio Martins', photo: user_5)