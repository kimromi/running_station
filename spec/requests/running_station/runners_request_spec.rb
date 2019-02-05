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
        it { expect(response.body).to include "<h2 class=\"my-3\"><span>🏃</span>no_args.rb</h2>" }
        it { expect(response.body).to include "<pre class=\"pre-scrollable\"><code class=\"source-code lang-ruby\"># frozen_string_literal: true\n\nputs &quot;Hello! Running Station&quot;\n</code></pre>" }
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
        it { expect(response.body).to include "<h5>stdout</h5>" }
        it { expect(response.body).to include "<pre class=\"pre-scrollable\"><code class=\"terminal lang-console\">Hello! Running Station\n</code></pre>" }
      end
    end
  end
end
