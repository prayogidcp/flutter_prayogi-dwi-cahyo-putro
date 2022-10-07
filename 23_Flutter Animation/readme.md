# (23) Flutter Animation

### NO. URUT : 1_017FLC_30

### NAMA : PRAYOGI DWI CAHYO PUTRO

## Summary

### **Animasi**

Animasi dapat membuat aplikasi tampak lebih hidup, Widget yang dapat bergerak dapat menambahkan daya tarik terhadap user. Pergerakan dari kondisi A ke kondisi B

### **Inplicit Animation**

Versi animasi dari widget yang sudah ada :
- Container
- Opacity

Tanpa Animation
<br>Perubahan tanpa Animation container tanpak kaku

```
bool isBig = false;

Container(
    width: isBig ? 200 : 100,
    height : isBig ? 200 : 100,
    color : Colors.red
);
```

Dengan Animation
<br>Perubahan dengan Animation ukuran container menjadi lebih hidup dan nyaman dilihat 
```
bool isBig = false;

AnimatedContainer(
    width: isBig ? 200 : 100,
    height : isBig ? 200 : 100,
    color : Colors.red,
    duration : const Duration(milliseconds : 300)
);
```

### **Transition**
Transition merupakan animasi yang terjadi saat perpindahan halaman, hal ini dilakuan pada bagian **Navigator.push()**

Melakukan Transition
```
Navigator.of(context).push(
    PageRouteBuilder(
        pageBuilder : (context, animation, secondaryAnimation){
            return const AboutScreen();
        },

        transitionBuilder : (context, animation, secondaryAnimation, child){
            final tween = Tween(begin : const Offset(0, .5), end : Offset.zero);

            return SlideTransition(
                position : animation.drive(tween),
                child : child
            )
        }
    )
)
```

Transition yang umum
- Fade Transition
<br>Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh
```
final tween = Tween(begin : 0.0, end: 1.0);
return FadeTransition(
    opacity : animation.drive(tween),
    child : child
);
```

- Scale Transition
<br>Halaman muncul dengan efek berubah ukuran dari tidak penuh menjadi tampil keseluruhan
```
final tween = Tween(begin : 0.0, end: 1.0);
return ScaleTransition(
    opacity : animation.drive(tween),
    child : child
); 
```