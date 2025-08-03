-- Create the fortune_reveal table
CREATE TABLE fortune_reveal (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  feeling TEXT NOT NULL,
  quote TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

-- Insert motivational quotes into fortune_reveal
INSERT INTO fortune_reveal (feeling, quote) VALUES
-- Energetic
('energetic', 'Your energy is your superpower. Channel it wisely and watch mountains move!'),
('energetic', 'The fire within you burns brighter than any obstacle ahead.'),
('energetic', 'Your enthusiasm is contagious - spread it like wildfire!'),
('energetic', 'Action is the foundational key to all success. Keep moving forward!'),
('energetic', 'Your dynamic spirit can turn any challenge into an opportunity.'),
('energetic', 'Fuel your fire with purpose, and nothing can stop you.'),
('energetic', 'You are a force of nature—unleash your full potential!'),
('energetic', 'Momentum builds when passion and purpose align.'),
('energetic', 'Push forward; your drive will light the way.'),
('energetic', 'With your energy, even the impossible becomes possible.'),

-- Calm
('calm', 'In stillness, you find your greatest strength and clearest vision.'),
('calm', 'Peace is not the absence of storm, but your ability to find calm within it.'),
('calm', 'Your centered spirit guides you to make the wisest decisions.'),
('calm', 'Like a mountain, you stand firm while storms pass around you.'),
('calm', 'Your inner peace radiates outward, healing the world around you.'),
('calm', 'Still waters run deep—so does your wisdom.'),
('calm', 'A calm heart leads to a clear mind and strong spirit.'),
('calm', 'You are the eye of the storm—unshaken and powerful.'),
('calm', 'Calmness is the cradle of strength.'),
('calm', 'Breathe. Release. Regain your rhythm.'),

-- Anxious
('anxious', 'Your sensitivity is a gift - it shows how deeply you care.'),
('anxious', 'Every worry is your heart''s way of protecting what matters most.'),
('anxious', 'Breathe deeply. You have overcome every challenge before this one.'),
('anxious', 'Your thoughtful nature prepares you for success in ways others miss.'),
('anxious', 'Trust the process. Your careful consideration leads to the best outcomes.'),
('anxious', 'You are doing better than you think.'),
('anxious', 'It’s okay to pause—your strength will return.'),
('anxious', 'Even in fear, you are brave.'),
('anxious', 'Let go of perfection; progress is powerful.'),
('anxious', 'This moment will pass. You will rise again.'),

-- Happy
('happy', 'Your joy is a beacon of light that brightens everyone''s day.'),
('happy', 'Happiness is not a destination, it''s your natural way of traveling.'),
('happy', 'Your positive energy creates ripples of good in the universe.'),
('happy', 'Keep shining! Your light helps others find their way.'),
('happy', 'Gratitude turns what you have into enough, and you have so much!'),
('happy', 'Smiles are the soul’s sunshine—keep spreading them.'),
('happy', 'Your happiness lifts the whole room.'),
('happy', 'Joy is your birthright—own it every day.'),
('happy', 'Celebrate the little things—they add up to big joy.'),
('happy', 'Laughter is your superpower. Use it often.'),

-- Melancholic
('melancholic', 'Your depth of feeling creates the most beautiful art and insights.'),
('melancholic', 'In your quiet moments, wisdom whispers the deepest truths.'),
('melancholic', 'Your emotional intelligence is a rare and precious gift.'),
('melancholic', 'Every ending prepares the soil for a more beautiful beginning.'),
('melancholic', 'Your gentle soul understands what others take lifetimes to learn.'),
('melancholic', 'Even sadness has beauty—it shows your soul is alive.'),
('melancholic', 'The rain nourishes just as the sun does.'),
('melancholic', 'Your reflections shape the path to growth.'),
('melancholic', 'There is strength in softness.'),
('melancholic', 'Feelings fade, but your spirit remains.'),

-- Hopeful
('hopeful', 'Your hope is the seed from which miracles grow.'),
('hopeful', 'The future belongs to those who believe in their dreams - like you!'),
('hopeful', 'Your optimism is proof that your soul knows something beautiful is coming.'),
('hopeful', 'Keep planting seeds of hope. Your garden of dreams is ready to bloom.'),
('hopeful', 'Your faith in tomorrow gives you strength to transform today.'),
('hopeful', 'Hope is the light that guides you through the darkest times.'),
('hopeful', 'Every sunrise is a new chance to believe and achieve.'),
('hopeful', 'Dream big, because hope fuels the journey.'),
('hopeful', 'Hold on to hope—it’s your greatest ally.'),
('hopeful', 'Your hopeful heart can move mountains.');
