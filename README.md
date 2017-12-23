# Sub-Character Representation Learning

Codes and corpora for paper "Dual Long Short-Term Memory Networks for Sub-Character Representation Learning" (accepted at ITNG 2018).

We proposed to learn character and sub-character level representations jointly for capturing deeper level of semantic meanings. When applied to Chinese Word Segmentation as a case example, our solution achieved state-of-the-art results on both Simplified and Traditional Chinese, without extra Traditional to Simplified Chinese conversion.

### Dependencies

* Python >= 3
* [Dynet == 2.0](http://dynet.readthedocs.io/en/latest/python.html)

## Quick Start

Simply run one command:

```bash
./script/run.sh pku 1
```

It does everything for you on the fly, including data preparation, training and test.

- You can replace `pku` with `msr`, `cityu` and `as`.
- The second parameter indicates model options from `1` to `6`, details are listed in the next chapter.

## Configuration Table

We have presented `6` models in our paper. Their configurations are shown in following table:

| `#.` model | char | subchar | radical | tie | bigram |
| --- | --- | --- | --- | --- | --- |
| `1.` baseline | YES |   |  |  |
| `2.` +subchar | | YES |  |  |
| `3.` +radical | | YES | YES |  |
| `4.` +radical -char |  |  | YES |  |
| `5.` +radical +tie | | YES | YES | YES |
| `6.` +radical +tie +bigram | | YES | YES | YES |YES|

## Performance

![sighan05](http://wx1.sinaimg.cn/large/006Fmjmcly1fmo9qsndjmj318i0miwje.jpg)

## Acknowledgments

- Thanks for those friends who helped us with the experiments.
- Corpora are from SIGHAN05, which should only be used for research purposes.
- Model implementation modified from a Dynet-1.x version by [rguthrie3](https://github.com/rguthrie3/BiLSTM-CRF).


