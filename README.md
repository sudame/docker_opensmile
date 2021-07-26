# openSMILE with Docker

## How to use
The following commands will analyze all wav files in `<path-to-audio-folder-on-host>` and put result files in `path-to-result-folder-on-host`.

```sh
docker run -v <path-to-audio-folder-on-host>:/workspace/audio -v <path-to-result-folder-on-host>:/workspace/result [config]
```

The `config` optional arg should be the path under the `opensmile/config` at https://github.com/audeering/opensmile/tree/master/config. For example when you want to analyze with [demo1_energy.conf](https://github.com/audeering/opensmile/blob/master/config/demo/demo1_energy.conf), you should pass `demo/demo1_energy.conf`. The default value is `is09-13/IS09_emotion.conf`.