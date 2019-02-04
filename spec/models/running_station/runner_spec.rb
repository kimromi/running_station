module RunningStation
  describe Runner, type: :model do
    let(:runner) { described_class.new(name: 'no_args') }

    describe '#name' do
      subject { runner.name }

      it { is_expected.to eq 'no_args' }
    end

    describe '#script_name' do
      subject { runner.script_name }

      it { is_expected.to eq 'no_args.rb' }
    end

    describe '#full_path' do
      subject { runner.full_path }

      it { is_expected.to eq Rails.root + "app/runners/no_args.rb" }
    end

    describe '#code' do
      subject { runner.code }

      it { is_expected.to eq "print 'Hello! Running Station'\n" }
    end
  end
end
