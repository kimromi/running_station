# frozen_string_literal: true

module RunningStation
  describe RunnersController, type: :request do
    describe "#show" do
      before { get running_station.runner_path(runner) }

      context "not exist runner" do
        let(:runner) { "not_exist" }

        it { expect(response.status).to eq 302 }
        it { expect(response).to redirect_to("http://www.example.com/running_station/") }
      end

      context "no_args" do
        let(:runner) { "no_args" }

        it { expect(response.status).to eq 200 }
        it { expect(response.body).to include "<h2><span>🏃</span>no_args.rb</h2>" }
        it { expect(response.body).to include "<pre><code>print &#39;Hello! Running Station&#39;\n</code></pre>" }
      end
    end

    describe "#update" do
      before { put running_station.runner_path(runner) }

      context "not exist runner" do
        let(:runner) { "not_exist" }

        it { expect(response.status).to eq 302 }
        it { expect(response).to redirect_to("http://www.example.com/running_station/") }
      end

      context "no_args" do
        let(:runner) { "no_args" }

        it { expect(response.status).to eq 200 }
        it { expect(response.body).to include "<h3>stdout</h3>" }
        it { expect(response.body).to include "<pre><code>Hello! Running Station</code></pre>" }
      end
    end
  end
end
