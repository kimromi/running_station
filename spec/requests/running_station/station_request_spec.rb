module RunningStation
  describe StationController, type: :request do
    describe '#index' do
      before { get running_station_path }

      it { expect(response.status).to eq 200 }
      it { expect(response.body).to include '<a href="/running_station/runners/no_args">no_args</a>' }
      it { expect(response.body).to include '<a href="/running_station/runners/string_args">string_args</a>' }
      it { expect(response.body).to include '<a href="/running_station/runners/xss">xss</a>' }
    end
  end
end
