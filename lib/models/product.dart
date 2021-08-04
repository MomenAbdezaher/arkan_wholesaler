class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
      this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 00,
    title: "حلاوه طحينيه ٧٥٠ جرام يندق",
    subTitle: "الحجم ٧٥٠ جرام",
    image: "images/P1.png",
    description:
        "حلاوه طحينيه من اركان الحجم ٧٥٠ جرام يندق",
  ),
  Product(
    id: 2,
    price: 00,
    title: "حلاوه طحينيه ٧٥٠ جرام شيكولاته",
    subTitle: "الحجم ٧٥٠ جرام",
    image: "images/P2.png",
    description:
        "حلاوه طحينيه من اركان الحجم ٧٥٠ جرام شيكولاته",
  ),
  Product(
    id: 3,
    price: 00,
    title: "حلاوه طحينيه ٧٥٠ جرام ساده",
    subTitle: "الحجم ٧٥٠ جرام",
    image: "images/P3.png",
    description:
        "حلاوه طحينيه من اركان الحجم ٧٥٠ جرام ساده",
  ),
  Product(
    id: 4,
    price: 56,
    title: "سماعات",
    subTitle: "لساعات استماع طويلة",
    image: "images/headset.png",
    description:
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "مسجل صوت",
    subTitle: "سجل اللحظات المهمة حولك",
    image: "images/speaker.png",
    description:
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "كاميرات كمبيوتر",
    subTitle: "بجودة ودقة صورة عالية",
    image: "images/camera.png",
    description:
        "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.",
  ),
];
