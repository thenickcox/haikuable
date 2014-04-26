require_relative '../spec_helper'

describe Haikuable::Checker do
  describe '#is_haiku?' do
    subject { Haikuable::Checker.new(string).is_haiku? }

    context 'not 17 syllables' do
      context 'too few' do
        let(:string) { 'I like cheese' }
        it { should be_false }
      end
      context 'too many' do
        let(:string) { 'supercalifragilisticexpealidocious refrigerator' }
        it { should be_false }
      end
    end

    context 'not haiku' do
      context '7 5 5' do
        let(:string) { 'alligator popsicle I like the kittens and the puppies, too' }
        it { should be_false }
      end
      context '5 5 7' do
        let(:string) { 'I like puppy dogs. Kittens are cute, too. Gerbils and hamsters? No thanks.' }
        it { should be_false }
      end
    end

    context 'haiku' do
      let(:string) { 'at the age old pond a frog leaps into water a deep resonance' }
      it { should be_true }
    end
  end
end