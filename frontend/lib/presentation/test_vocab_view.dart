import 'package:domain_models/domain_models.dart';
import 'package:flutter/material.dart';

class TestVocabView extends StatelessWidget {
  const TestVocabView({super.key});

  @override
  Widget build(BuildContext context) {
    final vocab = VocabularyItem(
      word: 'alzare la voce',
      meaning: 'die Stimme erheben',
      explanation: '2. Person Singular Imperativ + Reflexivpronomen',
      tags: ['verb', 'phrase', 'imperative'],
      sources: [
        VocabSourceReference(
          song: Song(id: '1', title: 'Ti chiedo scusa', artist: 'Unknown Artist'),
          lyricLine: 'Quando ho paura, blatero cose, alzo la voce',
        ),
      ],
      addedAt: DateTime.now(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Test Vocabulary View')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Word: ${vocab.word}', style: Theme.of(context).textTheme.headlineSmall),
            Text('Meaning: ${vocab.meaning}'),
            if (vocab.explanation != null) Text('Explanation: ${vocab.explanation}'),
            const SizedBox(height: 12),
            Text('Sources:', style: Theme.of(context).textTheme.titleMedium),
            for (var source in vocab.sources)
              Text('- "${source.lyricLine}" from "${source.song.title}" by ${source.song.artist}'),
          ],
        ),
      ),
    );
  }
}
