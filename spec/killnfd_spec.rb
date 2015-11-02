require 'spec_helper'

describe KillNFD do
  it 'has a version number' do
    expect(KillNFD::VERSION).not_to be nil
  end
end

describe String do
  it 'correctly converts NFD to NFC' do
    expect("\u304B\u3099\u304D\u3099\u304F\u3099\u3051\u3099\u3053\u3099".to_nfc).to eq("\u304C\u304E\u3050\u3052\u3054")
  end

  it 'correctly converts NFC to NFD' do
    expect("\u304C\u304E\u3050\u3052\u3054".to_nfd).to eq("\u304B\u3099\u304D\u3099\u304F\u3099\u3051\u3099\u3053\u3099")
  end

  it 'says a NFC string is not NFD' do
    expect("\u304C\u304E\u3050\u3052\u3054".is_nfd?).not_to be true
  end

  it 'says a NFD string is NFD' do
    expect("\u304B\u3099\u304D\u3099\u304F\u3099\u3051\u3099\u3053\u3099".is_nfd?).to be true
  end
end
