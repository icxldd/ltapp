import 'dart:math';

String HeadIcon;
List<String> nvImags = [
  'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1077287175,1506372161&fm=26&gp=0.jpg',
  'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2558693067,2868064481&fm=26&gp=0.jpg',
  'https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1561220502,3761876494&fm=26&gp=0.jpg',
  'https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2034740944,4251903193&fm=26&gp=0.jpg'
];

List<String> nImags = [
  'https://img2.woyaogexing.com/2020/07/24/0ad7e3028a704aa8956f3df5bc605333!400x400.jpeg',
  'https://img2.woyaogexing.com/2020/07/22/3e406ef2981848468be0dfd2aa088561!400x400.jpeg',
  'https://img2.woyaogexing.com/2020/07/21/bc370547b0df438f92edf21d248d9bc9!400x400.jpg',
  'https://img2.woyaogexing.com/2020/07/21/cf8906900c0745eaba7709679b82c3d2!400x400.jpeg'
];

//0 男  1女
void SetSelfImage(int sex) {
  var rng = new Random();

  if (sex == 0) {
    HeadIcon = nImags[rng.nextInt(nImags.length)];
  } else {
    HeadIcon = nvImags[rng.nextInt(nvImags.length)];
  }
}
