import React, { useState } from 'react';

export default function QuizGenerator() {
  const [prompt, setPrompt] = useState('Generate 3 mood questionnaire questions with 4 choices each.');
  const [result, setResult] = useState('');
  const [loading, setLoading] = useState(false);

  async function generateQuiz() {
    setLoading(true);
    setResult('');
    try {
      const response = await fetch('https://openrouter.ai/api/v1/chat/completions', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: 'Bearer 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',
        },
        body: JSON.stringify({
          model: 'z-ai/glm-4.5-air:free',
          messages: [
            { role: 'user', content: prompt }
          ],
        }),
      });

      const data = await response.json();

      if (data.choices && data.choices.length > 0) {
        setResult(data.choices[0].message.content);
        console.log(data)
      } else {
        setResult('No response from model.');
      }
    } catch (error) {
      setResult('Error: ' + error.message);
    }
    setLoading(false);
  }

  return (
    <div style={{ padding: '20px', maxWidth: 600 }}>
      <h2>Test GLM-4.5 Quiz Generation</h2>
      <textarea
        rows={4}
        style={{ width: '100%', fontSize: 16 }}
        value={prompt}
        onChange={e => setPrompt(e.target.value)}
      />
      <button onClick={generateQuiz} disabled={loading} style={{ marginTop: 10, padding: '8px 16px' }}>
        {loading ? 'Generating...' : 'Generate Quiz'}
      </button>
      <pre style={{ whiteSpace: 'pre-wrap', marginTop: 20 }}>{result}</pre>
    </div>
  );
}
