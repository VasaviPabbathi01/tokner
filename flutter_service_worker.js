'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
".git/config": "054f76598e714f526cdc40519ffe9069",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "d42e8ab6b9b2de9f49fbe2ae5656c8f6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "8a6eca7851287426cee6093546356be0",
".git/logs/refs/heads/main": "fad311d18289ada226601cc15805968f",
".git/logs/refs/remotes/origin/main": "6340c44a5cc5a339c99d8abe1bc5cc2a",
".git/objects/00/492828ea183fb0a06fb4be7095e28719bcf3a1": "82c55fe831e1e6916271bbbf94674df1",
".git/objects/05/df986fd8dbc1e9c70d68110259379534786873": "4f30474b29fc7401cc4f2ee2ed734946",
".git/objects/14/64b08f68bd6d2909ff69e5b46d0b6f558b9256": "e1d8e4333284bd7e737a6af24b0f4924",
".git/objects/20/01334e80151681849dd3425063962eaf6d27fd": "4f0a4649d3c0fe6557072b2881ee24a2",
".git/objects/25/34b01c5ccca03ff8913405a6079986da2dc41e": "280906275b53bca13672cb8597889359",
".git/objects/28/f267f2d5e175b3dae8493ad21f793997482c73": "e79d9326aef4d3ad56d6dad14ecf563a",
".git/objects/2b/50bf8817e948516251ec96b139eb72279cbde5": "2c312bdf955a041570df97e0b8fe3846",
".git/objects/2e/97e303b29f8fc96de650e11a8e4169e45824d6": "12f633d3d1b08545263361f9c059a03c",
".git/objects/30/39e8ae9496748e59837c73afaa6483e61c797b": "f618ad60a583bb41de78f84c3e5c722a",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/38/f1e131c1989bb2b80e24ce5a3bf9b85ce39eaf": "19a5c466624837c716641bfc3e838b8c",
".git/objects/41/5c059c8094b888b0159fdedfd4e3cb08a8028e": "86914685ccd40e82a7fe5b70459fb9f7",
".git/objects/41/ad9b7a914bc2ba9bd5e496ff7f41ffd9b487cf": "040789cdd38589e67ab7bc3cc1aa8dbd",
".git/objects/47/062ccc1586acf3a73fbdde85072a522fb38d19": "43dc4dfe080c2b19bade807997ad3aab",
".git/objects/4a/4422099c141a690fabd30fd1c665f3debc6d26": "bcecf1bde5f88bcc0a80788fff61d358",
".git/objects/4d/d4b3407cd05908ef5c8a1e46073d03b8d18fdb": "3daa5c7eca86af3f01ff320c43e71c50",
".git/objects/59/c875d8129ca57adf3eacd16b88e429e39a4a52": "bd7b5cb62d541729a16e359ac13a8bd4",
".git/objects/69/d4257b4145f913e1ab72bfef15ad1abeb3df1d": "7af4a9f84fc83324f86858970387369c",
".git/objects/70/bcca5b2266c4732071e669c9eb75415cbb751a": "e1c4e6a1fe31b8568afc31de08beddf1",
".git/objects/71/6f5d364a1293572f712fa22009953b7fbdfb90": "a3b06082e746f115cac2c6c1579d6289",
".git/objects/73/a369268f0067e39ae9e9beec3c581523f87067": "14f4c378dd302e914ed32a31eb735065",
".git/objects/76/0ff6af40e4946e3b2734c0e69a6e186ab4d8f4": "009b8f1268bb6c384d233bd88764e6f8",
".git/objects/7c/15bea9e57bfcdc78ab4c3bdf2e1372acaf957b": "f64f605ed4f739baca7eb7298e352283",
".git/objects/81/63d51cff9fa5e43b2c77386058d793249bc190": "6c8a2b71bb898b4aa1e18a50e6054ab2",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/19456a31b6cd0e6c80a908cdc1359b73db6549": "9676559a3ee04277eae6484daf7596cc",
".git/objects/8a/12f159bbd6d8a613254e6b926a08797f47b3e8": "a5c9b49340bac3f3ead56acbf260b33a",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/99266130a89547b4344f47e08aacad473b14e0": "41375232ceba14f47b99f9d83708cb79",
".git/objects/92/eab450609b7dc5d076ddf6c8416de8209373e0": "9b3d4cb7f5916a87f36a18b466ea7ac4",
".git/objects/96/dfc6ef928266408015cb270cb777c5ba3c8f5e": "335f1ab2370fc52be5a5cf8a3a8b15af",
".git/objects/9d/5f886353dcff6c222439cc1118e77eb1b007ea": "a87ff240c6e149d1ce495643e49417f9",
".git/objects/9e/13236f8a393cc486405556d6363535fb774b22": "3f0841cfdbe9650e000353390675e6da",
".git/objects/a5/c1c59fc111a54359ac2d8f090909da6fc1281f": "8e1809ed6dce17df5ef033e684f10223",
".git/objects/a6/d9371c2332a7c82a461698d99ffc25f41af066": "b1fb48db580948ac33f0c4f222e4ed82",
".git/objects/a9/6aeb9ecbeed07879ea37db62c894719d2b3e97": "5f7a5cfc8fd6dd4b6eda3e90c338c489",
".git/objects/ad/4c0ba9842f4de544316a62269732d33f652961": "d2648c4f7ac6a01d24dedabffef3980b",
".git/objects/ae/aebaac61ce7e16c692dc76ed47d69e7b70f3eb": "c6fcb80c31285ebc898e40b5d6607610",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bf/ef2008d2904345c1aa2ac52405e9598b3d36b7": "11b5ffa098356e57b23f85d9bc21f758",
".git/objects/c2/d8d2f44dd987786bbc249d4ad7bac3360f4811": "1926a57b256d9def261ccf6dc2914f65",
".git/objects/c6/128a55dcba3b888ca5b42bbeedaaff992b9484": "4b0f6d8f128254dcd33a4b8637fc335d",
".git/objects/d0/7604244ca7d3927988c3b49fd5fb841e066f87": "3baf537160b9e706ae3ec9077f656885",
".git/objects/d2/95fd52d0343565abdbc84abec859772aeafc56": "a046665bf06f113d7ccc40ac085ccfa5",
".git/objects/d3/eba6b45b18e364863a1a718cb0f9e67c2bafbc": "9faa72779d0f3fecf0fab91222278839",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/80ce749ea55b12b92f5db7747290419c975070": "8b0329dbc6565154a5434e6a0f898fdb",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/ed30ffa61bf748d99e6a78cfc21e4bf5619b90": "cb948ee37ea574f6d808bb5d7edd9dd4",
".git/objects/de/531be16701a23131e847fb449fd579a76ee35d": "34f5c86aa189cd49b3996fe8fc8fdaee",
".git/objects/e0/49c81f7cb35ebc411a3e1b547bf4ccf91292e8": "efad70dc0ca77a90ee53b5cc3be528ca",
".git/objects/e1/cbd0aac1c8a1a6b522d2534c2b35fca8a77beb": "3fcb6d59210e55307ba2bef2d495972e",
".git/objects/e2/ff5865b192241d53935e77de70a4e6dff2847a": "cad1058aedc6c21a518b3cb00af21fac",
".git/objects/e3/2f42d83a6cdcc287623b7bf1821412f3448394": "ac865f8c88f41aa160485e4ce81ab26f",
".git/objects/e6/46d591f99adb142edab348e5d728ad2bddc4a3": "7630b34441d494db3bf4d884cd250e72",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/objects/fd/b4f4a2d68a6faced07a4f225fb98e73c41fbdb": "6545ceb7fb0bb07b5b262282d730f652",
".git/objects/fe/c583dc0407d4c7cd7d55739ffa4611655a17fa": "ceedae62a397cacc69f530edfc4ac7d9",
".git/refs/heads/main": "cad4a8285386c96a871d8970ff6d5122",
".git/refs/remotes/origin/main": "cad4a8285386c96a871d8970ff6d5122",
"assets/AssetManifest.bin": "ea9ae7ae73b4563eab8207e18371b7fa",
"assets/AssetManifest.json": "214b6bb1952ecb249fd33b08ce324211",
"assets/assets/fonts/GOTHIC.ttf": "8917856b57da55472606a59f43b41588",
"assets/assets/images/app_logo.png": "2d0291d4b18b753d9f9170cbb5be4ee7",
"assets/assets/images/back_ground.png": "7b810f41477a60c30ad38a14304f557e",
"assets/assets/images/contact_us.png": "46dc16f0ad2a1078347c77dfc580fee1",
"assets/assets/images/cover_page_background.png": "fc631452c77b53d1414d2faff44aa11e",
"assets/assets/images/cover_page_img.png": "749baa0fba31dff9508f0fdf324e2ff3",
"assets/assets/images/desktop_presale.png": "2e4fdd8d3672bbd9a5986f26b842bc3d",
"assets/assets/images/ic_crown.png": "1eb280c4e3270de47860f97a06d04de9",
"assets/assets/images/ic_logo.png": "84fcd2fb1d85e1a1c3c9a89236909b6a",
"assets/assets/images/ic_star.png": "d211468d0a228d9bf699215ec82b5972",
"assets/assets/images/image%25201.png": "541749639e8f999c641ffeda09511087",
"assets/assets/images/image%25202.png": "9acf7c73fb934b5257bb81e3b7c764b9",
"assets/assets/images/image%25203.png": "d945529bd774f8cc26e347026836b2e2",
"assets/assets/images/image%25204.png": "0395c0aa0783b44c4b6b8312e2310263",
"assets/assets/images/mobile_arc.png": "38f2ad843fae725d00b31ea8519a9db9",
"assets/assets/images/mobile_bg.png": "0397e8001695fc4db4ab4dbc4ea6c063",
"assets/assets/images/mobile_cover_page_img.png": "a3dd025e12680b28e5fcab1c52deb4f9",
"assets/assets/images/mobile_presale.png": "908cc747a880221db6de69e0dad72bd8",
"assets/assets/images/ourteam_background.png": "446ae85d386e7c70805f6e778adc2b01",
"assets/assets/images/phase_one.png": "82dbfff7075118c2882508322da98cda",
"assets/assets/images/phase_three.png": "4ca4b14e0646c839ed7218336e531338",
"assets/assets/images/phase_two.png": "f229fc4754565fbe159f9cf1e371853b",
"assets/assets/images/presale_vector_bottom.png": "659f54791e1b0245a17171524911206d",
"assets/assets/images/token_distribution.png": "90dd5a98d690fe199ed61973070bdeb3",
"assets/assets/images/token_distribution_blur.png": "30cb8696e6c90934118f07a0a6252388",
"assets/assets/images/tokner_coming_image.png": "bb3617123ad0abd850878fd71649c065",
"assets/assets/images/vector.png": "ae2eb6012609db824ac9261b6f94fb4e",
"assets/assets/images/vector_presale_top.png": "c5ab9d16eef6ca2c77fb3859fb50ea29",
"assets/assets/images/web_arc.png": "fc631452c77b53d1414d2faff44aa11e",
"assets/assets/images/web_fotter.png": "f95688150691ffbe5fe2a922cf39f16d",
"assets/FontManifest.json": "b09cbe6506656296bec51902934e9d3e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "0db0280933a429a028c24addf099ea66",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b93248a553f9e8bc17f1065929d5934b",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e6871bccaa92d147238d7d93794e9037",
"/": "e6871bccaa92d147238d7d93794e9037",
"main.dart.js": "3ad938d813f7e63561b038ad557a1a00",
"manifest.json": "8bc132f6d047a6ac1666428033e90bc7",
"version.json": "8ec59e8a181ca2c2208e0106c4d76b8e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
