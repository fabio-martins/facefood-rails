# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

reset_sequences = "ALTER SEQUENCE active_storage_attachments_id_seq RESTART WITH 1;\n" + 
                   "ALTER SEQUENCE active_storage_blobs_id_seq RESTART WITH 1;\n" + 
                   "ALTER SEQUENCE active_storage_variant_records_id_seq RESTART WITH 1;\n" + 
                   "ALTER SEQUENCE users_id_seq RESTART WITH 1;\n";

insert_active_storage_attachments = "INSERT INTO public.active_storage_attachments (\"name\",record_type,record_id,blob_id,created_at) VALUES" + 
                                    "('photo','User',1,1,'2022-06-20 22:37:51.265529')," + 
                                    "('photo','User',2,2,'2022-06-20 22:37:51.30703'), " + 
                                    "('photo','User',3,3,'2022-06-20 22:37:51.33898'), " + 
                                    "('photo','User',4,4,'2022-06-20 22:37:51.364064'), " + 
                                    "('photo','User',5,5,'2022-06-20 22:37:51.386544'); ";

insert_active_storage_blobs = "INSERT INTO public.active_storage_blobs (\"key\",filename,content_type,metadata,service_name,byte_size,checksum,created_at) VALUES" + 
                             "('hfq4g0bcqmsv3pc0h7ppveno33ea','1.jpeg','image/jpeg','{\"identified\":true}','local',182685,'24fM8y6Mgn0X9gC/p25XAw==','2022-06-20 22:37:51.260964'), " + 
                             "('3jdon6e3k96jhtl5u0lrrxlrg4ly','2.png','image/png','{\"identified\":true}','local',282647,'qBt7gXiGUgX1wy3aiWYQFw==','2022-06-20 22:37:51.30336'), " + 
                             "('pihn3lc9n4gqori8of4oa12tledu','3.png','image/png','{\"identified\":true}','local',63815,'Ymlpd9FAQccAdCNhQlaMBw==','2022-06-20 22:37:51.33573'), " + 
                             "('w78jt0ijhgqrwgmdhw99yhxvz74a','4.png','image/png','{\"identified\":true}','local',253365,'MmLmrKidFZprcej76dp+yw==','2022-06-20 22:37:51.361553'), " + 
                             "('09rnom4l3gsw5jdv2cfzhe0fncdw','5.jpg','image/jpeg','{\"identified\":true}','local',600216,'2SUt1xAxy7A3PPEygAxlQg==','2022-06-20 22:37:51.38403'); ";                                                    

unless Rails.env.production?
    connection = ActiveRecord::Base.connection
    connection.execute(reset_sequences)
    connection.execute(insert_active_storage_blobs)
    connection.execute(insert_active_storage_attachments)
end                                                         

User.create(full_name: 'Rebeca J. Stuart')
User.create(full_name: 'Erica C. Flower')
User.create(full_name: 'Jhon Mayers')
User.create(full_name: 'Mike Mellon')
User.create(full_name: 'Fabio Martins')