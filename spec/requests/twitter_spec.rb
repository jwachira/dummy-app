require 'rails_helper'

descripe Twitter do
 describes 'Twitter requests' do
   before do
     let(:client) { Twitter.new }
   end
   it 'returns a list of all followers' do
   end
 end
end
