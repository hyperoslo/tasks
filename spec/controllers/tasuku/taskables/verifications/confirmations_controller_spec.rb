require 'spec_helper'

module Tasuku
  describe Taskables::Verifications::ConfirmationsController do
    routes { Tasuku::Engine.routes }

    describe "POST 'create'" do
      it 'routes' do
        expect(post: '/taskables/verifications/1/confirmations').to route_to(
          action: 'create',
          controller: 'tasuku/taskables/verifications/confirmations',
          verification_id: '1'
        )
      end

      context 'with a confirmation' do
        let(:user)         { create :user }
        let(:verification) { create :verification }
        let(:params)       { { verification_id: verification.id } }

        before { request.env['HTTP_REFERER'] = 'http://example.org' }
        before { expect(subject).to receive(:current_user).and_return(user) }

        it_behaves_like 'redirectable' do
          let(:action) { :create }
          let(:verb)   { :post }
          let(:update_answer) { false }
        end

        it 'creates a new confirmation' do
          post :create, params

          expect(verification.confirmations.count).to eq 1
        end
      end
    end

  end
end
