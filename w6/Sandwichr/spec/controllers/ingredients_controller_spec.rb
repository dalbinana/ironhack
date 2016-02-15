require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
	describe "GET #index" do
		it 'should return a success code (200)' do
			get :index
			expect(response.code).to eq("200")
		end
	end	

	describe "GET #show" do
		it 'should return a succes code (200)' do
			ingredient = Ingredient.create(name: 'Mozarella', calorie: '3') #la bbdd de test es diferent de la normal, per això creem l'ingredient. Tamb-e podriem fer un seed per la bbdd de test
			get :show, id: ingredient.id
			expect(response).to be_success #es el mateix que posar expect(response.code).to eq("200")
			ingredient.destroy
		end
		#ara fem un test pq NO trobi un ingredient que no hi ha.
		it 'should return not found' do
			get :show, id: -1
			expect(response).to be_not_found #es el mateix que posar expect(response.code).to eq("200")
		
		end
	end

	describe "POST #create"	do
		it 'creates a new ingredient' do
			expect {
				post :create, {ingredient: {name: 'Carrot', calorie: '123'}}
				}.to change(Ingredient, :count).by(1)
			end		
	end

	describe "DELETE #destroy" do
		it 'deletes an ingredient' do
			ingredient = Ingredient.create(name: 'Mozarella', calorie: '3')
			expect {
				delete :destroy, id: ingredient.id
			}.to change(Ingredient, :count).by(-1)		
			end
	end			



end