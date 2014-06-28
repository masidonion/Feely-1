require 'spec_helper'

describe Story do
  # let(:no_anecdote) { Story.create(anecdote: '') }
  # let(:long_anecdote) { Story.create(anecdote: 'a'*250) }
  # let(:valid_with_color) { Story.create(anecdote: 'happiness', color_id: 4) }

  context "when anecdote is invalid" do
    it "with no anecdote" do
      expect(build(:story, anecdote: nil)).to have(1).errors_on(:anecdote)
    end

    it "with an anecdote of over 200 characters" do
      expect(build(:story, anecdote: 'a'*250)).to have(1).errors_on(:anecdote)
    end
  end

  context "when anecdote is valid" do
    it "belongs to a color" do
      expect(build(:story)).to respond_to :color
    end
  end
end


 # expect {
 #        post :create, anecdote: touchy.anecdote, color_id: touchy.color_id
 #        expect(response).to redirect_to color_path(touchy.color_id)
 #      }.to change { Story.count }.by(1)
