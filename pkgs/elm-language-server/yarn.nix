{fetchurl, linkFarm}: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [

    {
      name = "_elm_tooling_elm_language_server___elm_language_server_1.3.1.tgz";
      path = fetchurl {
        name = "_elm_tooling_elm_language_server___elm_language_server_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/@elm-tooling/elm-language-server/-/elm-language-server-1.3.1.tgz";
        sha1 = "cc76570e167bc6b1dd426a11819ed7b9a55572b7";
      };
    }

    {
      name = "_nodelib_fs.scandir___fs.scandir_2.1.2.tgz";
      path = fetchurl {
        name = "_nodelib_fs.scandir___fs.scandir_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/@nodelib/fs.scandir/-/fs.scandir-2.1.2.tgz";
        sha1 = "1f981cd5b83e85cfdeb386fc693d4baab392fa54";
      };
    }

    {
      name = "_nodelib_fs.stat___fs.stat_2.0.2.tgz";
      path = fetchurl {
        name = "_nodelib_fs.stat___fs.stat_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/@nodelib/fs.stat/-/fs.stat-2.0.2.tgz";
        sha1 = "2762aea8fe78ea256860182dcb52d61ee4b8fda6";
      };
    }

    {
      name = "_nodelib_fs.walk___fs.walk_1.2.3.tgz";
      path = fetchurl {
        name = "_nodelib_fs.walk___fs.walk_1.2.3.tgz";
        url  = "https://registry.yarnpkg.com/@nodelib/fs.walk/-/fs.walk-1.2.3.tgz";
        sha1 = "a555dc256acaf00c62b0db29529028dd4d4cb141";
      };
    }

    {
      name = "_types_events___events_3.0.0.tgz";
      path = fetchurl {
        name = "_types_events___events_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/@types/events/-/events-3.0.0.tgz";
        sha1 = "2862f3f58a9a7f7c3e78d79f130dd4d71c25c2a7";
      };
    }

    {
      name = "_types_glob___glob_7.1.1.tgz";
      path = fetchurl {
        name = "_types_glob___glob_7.1.1.tgz";
        url  = "https://registry.yarnpkg.com/@types/glob/-/glob-7.1.1.tgz";
        sha1 = "aa59a1c6e3fbc421e07ccd31a944c30eba521575";
      };
    }

    {
      name = "_types_minimatch___minimatch_3.0.3.tgz";
      path = fetchurl {
        name = "_types_minimatch___minimatch_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/@types/minimatch/-/minimatch-3.0.3.tgz";
        sha1 = "3dca0e3f33b200fc7d1139c0cd96c1268cadfd9d";
      };
    }

    {
      name = "_types_node___node_12.7.2.tgz";
      path = fetchurl {
        name = "_types_node___node_12.7.2.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-12.7.2.tgz";
        sha1 = "c4e63af5e8823ce9cc3f0b34f7b998c2171f0c44";
      };
    }

    {
      name = "accepts___accepts_1.3.7.tgz";
      path = fetchurl {
        name = "accepts___accepts_1.3.7.tgz";
        url  = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.7.tgz";
        sha1 = "531bc726517a3b2b41f850021c6cc15eaab507cd";
      };
    }

    {
      name = "ajv___ajv_6.10.2.tgz";
      path = fetchurl {
        name = "ajv___ajv_6.10.2.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-6.10.2.tgz";
        sha1 = "d3cea04d6b017b2894ad69040fec8b623eb4bd52";
      };
    }

    {
      name = "array_flatten___array_flatten_1.1.1.tgz";
      path = fetchurl {
        name = "array_flatten___array_flatten_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/array-flatten/-/array-flatten-1.1.1.tgz";
        sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
      };
    }

    {
      name = "array_union___array_union_2.1.0.tgz";
      path = fetchurl {
        name = "array_union___array_union_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/array-union/-/array-union-2.1.0.tgz";
        sha1 = "b798420adbeb1de828d84acd8a2e23d3efe85e8d";
      };
    }

    {
      name = "asn1___asn1_0.2.4.tgz";
      path = fetchurl {
        name = "asn1___asn1_0.2.4.tgz";
        url  = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.4.tgz";
        sha1 = "8d2475dfab553bb33e77b54e59e880bb8ce23136";
      };
    }

    {
      name = "assert_plus___assert_plus_1.0.0.tgz";
      path = fetchurl {
        name = "assert_plus___assert_plus_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    }

    {
      name = "async_limiter___async_limiter_1.0.1.tgz";
      path = fetchurl {
        name = "async_limiter___async_limiter_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/async-limiter/-/async-limiter-1.0.1.tgz";
        sha1 = "dd379e94f0db8310b08291f9d64c3209766617fd";
      };
    }

    {
      name = "asynckit___asynckit_0.4.0.tgz";
      path = fetchurl {
        name = "asynckit___asynckit_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }

    {
      name = "aws_sign2___aws_sign2_0.7.0.tgz";
      path = fetchurl {
        name = "aws_sign2___aws_sign2_0.7.0.tgz";
        url  = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    }

    {
      name = "aws4___aws4_1.8.0.tgz";
      path = fetchurl {
        name = "aws4___aws4_1.8.0.tgz";
        url  = "https://registry.yarnpkg.com/aws4/-/aws4-1.8.0.tgz";
        sha1 = "f0e003d9ca9e7f59c7a508945d7b2ef9a04a542f";
      };
    }

    {
      name = "babel_runtime___babel_runtime_6.18.0.tgz";
      path = fetchurl {
        name = "babel_runtime___babel_runtime_6.18.0.tgz";
        url  = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.18.0.tgz";
        sha1 = "0f4177ffd98492ef13b9f823e9994a02584c9078";
      };
    }

    {
      name = "balanced_match___balanced_match_1.0.0.tgz";
      path = fetchurl {
        name = "balanced_match___balanced_match_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    }

    {
      name = "bcrypt_pbkdf___bcrypt_pbkdf_1.0.2.tgz";
      path = fetchurl {
        name = "bcrypt_pbkdf___bcrypt_pbkdf_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz";
        sha1 = "a4301d389b6a43f9b67ff3ca11a3f6637e360e9e";
      };
    }

    {
      name = "body_parser___body_parser_1.18.2.tgz";
      path = fetchurl {
        name = "body_parser___body_parser_1.18.2.tgz";
        url  = "https://registry.yarnpkg.com/body-parser/-/body-parser-1.18.2.tgz";
        sha1 = "87678a19d84b47d859b83199bd59bce222b10454";
      };
    }

    {
      name = "brace_expansion___brace_expansion_1.1.11.tgz";
      path = fetchurl {
        name = "brace_expansion___brace_expansion_1.1.11.tgz";
        url  = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
      };
    }

    {
      name = "braces___braces_3.0.2.tgz";
      path = fetchurl {
        name = "braces___braces_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-3.0.2.tgz";
        sha1 = "3454e1a462ee8d599e236df336cd9ea4f8afe107";
      };
    }

    {
      name = "bytes___bytes_3.0.0.tgz";
      path = fetchurl {
        name = "bytes___bytes_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    }

    {
      name = "caseless___caseless_0.12.0.tgz";
      path = fetchurl {
        name = "caseless___caseless_0.12.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    }

    {
      name = "combined_stream___combined_stream_1.0.8.tgz";
      path = fetchurl {
        name = "combined_stream___combined_stream_1.0.8.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.8.tgz";
        sha1 = "c3d45a8b34fd730631a110a8a2520682b31d5a7f";
      };
    }

    {
      name = "concat_map___concat_map_0.0.1.tgz";
      path = fetchurl {
        name = "concat_map___concat_map_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    }

    {
      name = "concat_stream___concat_stream_1.5.2.tgz";
      path = fetchurl {
        name = "concat_stream___concat_stream_1.5.2.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.5.2.tgz";
        sha1 = "708978624d856af41a5a741defdd261da752c266";
      };
    }

    {
      name = "content_disposition___content_disposition_0.5.2.tgz";
      path = fetchurl {
        name = "content_disposition___content_disposition_0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.2.tgz";
        sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
      };
    }

    {
      name = "content_type___content_type_1.0.4.tgz";
      path = fetchurl {
        name = "content_type___content_type_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.4.tgz";
        sha1 = "e138cc75e040c727b1966fe5e5f8c9aee256fe3b";
      };
    }

    {
      name = "cookie_signature___cookie_signature_1.0.6.tgz";
      path = fetchurl {
        name = "cookie_signature___cookie_signature_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/cookie-signature/-/cookie-signature-1.0.6.tgz";
        sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
      };
    }

    {
      name = "cookie___cookie_0.3.1.tgz";
      path = fetchurl {
        name = "cookie___cookie_0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/cookie/-/cookie-0.3.1.tgz";
        sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
      };
    }

    {
      name = "core_js___core_js_2.6.9.tgz";
      path = fetchurl {
        name = "core_js___core_js_2.6.9.tgz";
        url  = "https://registry.yarnpkg.com/core-js/-/core-js-2.6.9.tgz";
        sha1 = "6b4b214620c834152e179323727fc19741b084f2";
      };
    }

    {
      name = "core_util_is___core_util_is_1.0.2.tgz";
      path = fetchurl {
        name = "core_util_is___core_util_is_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    }

    {
      name = "cross_spawn___cross_spawn_6.0.5.tgz";
      path = fetchurl {
        name = "cross_spawn___cross_spawn_6.0.5.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-6.0.5.tgz";
        sha1 = "4a5ec7c64dfae22c3a14124dbacdee846d80cbc4";
      };
    }

    {
      name = "dashdash___dashdash_1.14.1.tgz";
      path = fetchurl {
        name = "dashdash___dashdash_1.14.1.tgz";
        url  = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    }

    {
      name = "debug___debug_2.6.9.tgz";
      path = fetchurl {
        name = "debug___debug_2.6.9.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
        sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
      };
    }

    {
      name = "delayed_stream___delayed_stream_1.0.0.tgz";
      path = fetchurl {
        name = "delayed_stream___delayed_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }

    {
      name = "depd___depd_1.1.1.tgz";
      path = fetchurl {
        name = "depd___depd_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.1.1.tgz";
        sha1 = "5783b4e1c459f06fa5ca27f991f3d06e7a310359";
      };
    }

    {
      name = "depd___depd_1.1.2.tgz";
      path = fetchurl {
        name = "depd___depd_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    }

    {
      name = "destroy___destroy_1.0.4.tgz";
      path = fetchurl {
        name = "destroy___destroy_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    }

    {
      name = "dir_glob___dir_glob_3.0.1.tgz";
      path = fetchurl {
        name = "dir_glob___dir_glob_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/dir-glob/-/dir-glob-3.0.1.tgz";
        sha1 = "56dbf73d992a4a93ba1584f4534063fd2e41717f";
      };
    }

    {
      name = "ecc_jsbn___ecc_jsbn_0.1.2.tgz";
      path = fetchurl {
        name = "ecc_jsbn___ecc_jsbn_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz";
        sha1 = "3a83a904e54353287874c564b7549386849a98c9";
      };
    }

    {
      name = "ee_first___ee_first_1.1.1.tgz";
      path = fetchurl {
        name = "ee_first___ee_first_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    }

    {
      name = "https___codeload.github.com_elm_tooling_elm_analyse_tar.gz_f2a983fc7bab262a3e44b46732735d8510d18876";
      path = fetchurl {
        name = "https___codeload.github.com_elm_tooling_elm_analyse_tar.gz_f2a983fc7bab262a3e44b46732735d8510d18876";
        url  = "https://codeload.github.com/elm-tooling/elm-analyse/tar.gz/f2a983fc7bab262a3e44b46732735d8510d18876";
        sha1 = "f1528d8c8f9a8e4136c54c1765a3e2f3daa767e8";
      };
    }

    {
      name = "encodeurl___encodeurl_1.0.2.tgz";
      path = fetchurl {
        name = "encodeurl___encodeurl_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.2.tgz";
        sha1 = "ad3ff4c86ec2d029322f5a02c3a9a606c95b3f59";
      };
    }

    {
      name = "end_of_stream___end_of_stream_1.4.1.tgz";
      path = fetchurl {
        name = "end_of_stream___end_of_stream_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.1.tgz";
        sha1 = "ed29634d19baba463b6ce6b80a37213eab71ec43";
      };
    }

    {
      name = "escape_html___escape_html_1.0.3.tgz";
      path = fetchurl {
        name = "escape_html___escape_html_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    }

    {
      name = "etag___etag_1.8.1.tgz";
      path = fetchurl {
        name = "etag___etag_1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    }

    {
      name = "execa___execa_2.0.4.tgz";
      path = fetchurl {
        name = "execa___execa_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/execa/-/execa-2.0.4.tgz";
        sha1 = "2f5cc589c81db316628627004ea4e37b93391d8e";
      };
    }

    {
      name = "express_ws___express_ws_2.0.0.tgz";
      path = fetchurl {
        name = "express_ws___express_ws_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/express-ws/-/express-ws-2.0.0.tgz";
        sha1 = "96d13fa41c8de8fa5dcbfa2dacace6f594272888";
      };
    }

    {
      name = "express___express_4.16.3.tgz";
      path = fetchurl {
        name = "express___express_4.16.3.tgz";
        url  = "https://registry.yarnpkg.com/express/-/express-4.16.3.tgz";
        sha1 = "6af8a502350db3246ecc4becf6b5a34d22f7ed53";
      };
    }

    {
      name = "extend___extend_3.0.2.tgz";
      path = fetchurl {
        name = "extend___extend_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extend/-/extend-3.0.2.tgz";
        sha1 = "f8b1136b4071fbd8eb140aff858b1019ec2915fa";
      };
    }

    {
      name = "extsprintf___extsprintf_1.3.0.tgz";
      path = fetchurl {
        name = "extsprintf___extsprintf_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    }

    {
      name = "extsprintf___extsprintf_1.4.0.tgz";
      path = fetchurl {
        name = "extsprintf___extsprintf_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
        sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
      };
    }

    {
      name = "fast_deep_equal___fast_deep_equal_2.0.1.tgz";
      path = fetchurl {
        name = "fast_deep_equal___fast_deep_equal_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz";
        sha1 = "7b05218ddf9667bf7f370bf7fdb2cb15fdd0aa49";
      };
    }

    {
      name = "fast_diff___fast_diff_1.2.0.tgz";
      path = fetchurl {
        name = "fast_diff___fast_diff_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-diff/-/fast-diff-1.2.0.tgz";
        sha1 = "73ee11982d86caaf7959828d519cfe927fac5f03";
      };
    }

    {
      name = "fast_glob___fast_glob_3.0.4.tgz";
      path = fetchurl {
        name = "fast_glob___fast_glob_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/fast-glob/-/fast-glob-3.0.4.tgz";
        sha1 = "d484a41005cb6faeb399b951fd1bd70ddaebb602";
      };
    }

    {
      name = "fast_json_stable_stringify___fast_json_stable_stringify_2.0.0.tgz";
      path = fetchurl {
        name = "fast_json_stable_stringify___fast_json_stable_stringify_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    }

    {
      name = "fastq___fastq_1.6.0.tgz";
      path = fetchurl {
        name = "fastq___fastq_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/fastq/-/fastq-1.6.0.tgz";
        sha1 = "4ec8a38f4ac25f21492673adb7eae9cfef47d1c2";
      };
    }

    {
      name = "fill_range___fill_range_7.0.1.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_7.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-7.0.1.tgz";
        sha1 = "1919a6a7c75fe38b2c7c77e5198535da9acdda40";
      };
    }

    {
      name = "finalhandler___finalhandler_1.1.1.tgz";
      path = fetchurl {
        name = "finalhandler___finalhandler_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/finalhandler/-/finalhandler-1.1.1.tgz";
        sha1 = "eebf4ed840079c83f4249038c9d703008301b105";
      };
    }

    {
      name = "find___find_0.2.7.tgz";
      path = fetchurl {
        name = "find___find_0.2.7.tgz";
        url  = "https://registry.yarnpkg.com/find/-/find-0.2.7.tgz";
        sha1 = "7afbd00f8f08c5b622f97cda6f714173d547bb3f";
      };
    }

    {
      name = "forever_agent___forever_agent_0.6.1.tgz";
      path = fetchurl {
        name = "forever_agent___forever_agent_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    }

    {
      name = "form_data___form_data_2.3.3.tgz";
      path = fetchurl {
        name = "form_data___form_data_2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.3.tgz";
        sha1 = "dcce52c05f644f298c6a7ab936bd724ceffbf3a6";
      };
    }

    {
      name = "forwarded___forwarded_0.1.2.tgz";
      path = fetchurl {
        name = "forwarded___forwarded_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/forwarded/-/forwarded-0.1.2.tgz";
        sha1 = "98c23dab1175657b8c0573e8ceccd91b0ff18c84";
      };
    }

    {
      name = "fresh___fresh_0.5.2.tgz";
      path = fetchurl {
        name = "fresh___fresh_0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    }

    {
      name = "fs_extra___fs_extra_2.0.0.tgz";
      path = fetchurl {
        name = "fs_extra___fs_extra_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-2.0.0.tgz";
        sha1 = "337352bded4a0b714f3eb84de8cea765e9d37600";
      };
    }

    {
      name = "fs.realpath___fs.realpath_1.0.0.tgz";
      path = fetchurl {
        name = "fs.realpath___fs.realpath_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    }

    {
      name = "get_stream___get_stream_5.1.0.tgz";
      path = fetchurl {
        name = "get_stream___get_stream_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/get-stream/-/get-stream-5.1.0.tgz";
        sha1 = "01203cdc92597f9b909067c3e656cc1f4d3c4dc9";
      };
    }

    {
      name = "getpass___getpass_0.1.7.tgz";
      path = fetchurl {
        name = "getpass___getpass_0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    }

    {
      name = "glob_parent___glob_parent_5.0.0.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.0.0.tgz";
        sha1 = "1dc99f0f39b006d3e92c2c284068382f0c20e954";
      };
    }

    {
      name = "glob___glob_7.1.4.tgz";
      path = fetchurl {
        name = "glob___glob_7.1.4.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-7.1.4.tgz";
        sha1 = "aa608a2f6c577ad357e1ae5a5c26d9a8d1969255";
      };
    }

    {
      name = "globby___globby_10.0.1.tgz";
      path = fetchurl {
        name = "globby___globby_10.0.1.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-10.0.1.tgz";
        sha1 = "4782c34cb75dd683351335c5829cc3420e606b22";
      };
    }

    {
      name = "graceful_fs___graceful_fs_4.2.2.tgz";
      path = fetchurl {
        name = "graceful_fs___graceful_fs_4.2.2.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.2.2.tgz";
        sha1 = "6f0952605d0140c1cfdb138ed005775b92d67b02";
      };
    }

    {
      name = "har_schema___har_schema_2.0.0.tgz";
      path = fetchurl {
        name = "har_schema___har_schema_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    }

    {
      name = "har_validator___har_validator_5.1.3.tgz";
      path = fetchurl {
        name = "har_validator___har_validator_5.1.3.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.1.3.tgz";
        sha1 = "1ef89ebd3e4996557675eed9893110dc350fa080";
      };
    }

    {
      name = "http_errors___http_errors_1.6.2.tgz";
      path = fetchurl {
        name = "http_errors___http_errors_1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.2.tgz";
        sha1 = "0a002cc85707192a7e7946ceedc11155f60ec736";
      };
    }

    {
      name = "http_errors___http_errors_1.6.3.tgz";
      path = fetchurl {
        name = "http_errors___http_errors_1.6.3.tgz";
        url  = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.3.tgz";
        sha1 = "8b55680bb4be283a0b5bf4ea2e38580be1d9320d";
      };
    }

    {
      name = "http_signature___http_signature_1.2.0.tgz";
      path = fetchurl {
        name = "http_signature___http_signature_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    }

    {
      name = "iconv_lite___iconv_lite_0.4.19.tgz";
      path = fetchurl {
        name = "iconv_lite___iconv_lite_0.4.19.tgz";
        url  = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.19.tgz";
        sha1 = "f7468f60135f5e5dad3399c0a81be9a1603a082b";
      };
    }

    {
      name = "ignore___ignore_5.1.4.tgz";
      path = fetchurl {
        name = "ignore___ignore_5.1.4.tgz";
        url  = "https://registry.yarnpkg.com/ignore/-/ignore-5.1.4.tgz";
        sha1 = "84b7b3dbe64552b6ef0eca99f6743dbec6d97adf";
      };
    }

    {
      name = "inflight___inflight_1.0.6.tgz";
      path = fetchurl {
        name = "inflight___inflight_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    }

    {
      name = "inherits___inherits_2.0.4.tgz";
      path = fetchurl {
        name = "inherits___inherits_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.4.tgz";
        sha1 = "0fa2c64f932917c3433a0ded55363aae37416b7c";
      };
    }

    {
      name = "inherits___inherits_2.0.3.tgz";
      path = fetchurl {
        name = "inherits___inherits_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    }

    {
      name = "ipaddr.js___ipaddr.js_1.9.0.tgz";
      path = fetchurl {
        name = "ipaddr.js___ipaddr.js_1.9.0.tgz";
        url  = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.9.0.tgz";
        sha1 = "37df74e430a0e47550fe54a2defe30d8acd95f65";
      };
    }

    {
      name = "is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }

    {
      name = "is_glob___is_glob_4.0.1.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.1.tgz";
        sha1 = "7567dbe9f2f5e2467bc77ab83c4a29482407a5dc";
      };
    }

    {
      name = "is_number___is_number_7.0.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_7.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz";
        sha1 = "7535345b896734d5f80c4d06c50955527a14f12b";
      };
    }

    {
      name = "is_stream___is_stream_1.1.0.tgz";
      path = fetchurl {
        name = "is_stream___is_stream_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    }

    {
      name = "is_stream___is_stream_2.0.0.tgz";
      path = fetchurl {
        name = "is_stream___is_stream_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-stream/-/is-stream-2.0.0.tgz";
        sha1 = "bde9c32680d6fae04129d6ac9d921ce7815f78e3";
      };
    }

    {
      name = "is_typedarray___is_typedarray_1.0.0.tgz";
      path = fetchurl {
        name = "is_typedarray___is_typedarray_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    }

    {
      name = "is_wsl___is_wsl_1.1.0.tgz";
      path = fetchurl {
        name = "is_wsl___is_wsl_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-wsl/-/is-wsl-1.1.0.tgz";
        sha1 = "1f16e4aa22b04d1336b66188a66af3c600c3a66d";
      };
    }

    {
      name = "isarray___isarray_1.0.0.tgz";
      path = fetchurl {
        name = "isarray___isarray_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    }

    {
      name = "isexe___isexe_2.0.0.tgz";
      path = fetchurl {
        name = "isexe___isexe_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    }

    {
      name = "isstream___isstream_0.1.2.tgz";
      path = fetchurl {
        name = "isstream___isstream_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    }

    {
      name = "jsbn___jsbn_0.1.1.tgz";
      path = fetchurl {
        name = "jsbn___jsbn_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    }

    {
      name = "json_schema_traverse___json_schema_traverse_0.4.1.tgz";
      path = fetchurl {
        name = "json_schema_traverse___json_schema_traverse_0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz";
        sha1 = "69f6a87d9513ab8bb8fe63bdb0979c448e684660";
      };
    }

    {
      name = "json_schema___json_schema_0.2.3.tgz";
      path = fetchurl {
        name = "json_schema___json_schema_0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    }

    {
      name = "json_stringify_safe___json_stringify_safe_5.0.1.tgz";
      path = fetchurl {
        name = "json_stringify_safe___json_stringify_safe_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    }

    {
      name = "jsonfile___jsonfile_2.4.0.tgz";
      path = fetchurl {
        name = "jsonfile___jsonfile_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-2.4.0.tgz";
        sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
      };
    }

    {
      name = "jsprim___jsprim_1.4.1.tgz";
      path = fetchurl {
        name = "jsprim___jsprim_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    }

    {
      name = "lodash___lodash_4.17.15.tgz";
      path = fetchurl {
        name = "lodash___lodash_4.17.15.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.15.tgz";
        sha1 = "b447f6670a0455bbfeedd11392eff330ea097548";
      };
    }

    {
      name = "media_typer___media_typer_0.3.0.tgz";
      path = fetchurl {
        name = "media_typer___media_typer_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/media-typer/-/media-typer-0.3.0.tgz";
        sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
      };
    }

    {
      name = "merge_descriptors___merge_descriptors_1.0.1.tgz";
      path = fetchurl {
        name = "merge_descriptors___merge_descriptors_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
        sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
      };
    }

    {
      name = "merge_stream___merge_stream_2.0.0.tgz";
      path = fetchurl {
        name = "merge_stream___merge_stream_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/merge-stream/-/merge-stream-2.0.0.tgz";
        sha1 = "52823629a14dd00c9770fb6ad47dc6310f2c1f60";
      };
    }

    {
      name = "merge2___merge2_1.2.4.tgz";
      path = fetchurl {
        name = "merge2___merge2_1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/merge2/-/merge2-1.2.4.tgz";
        sha1 = "c9269589e6885a60cf80605d9522d4b67ca646e3";
      };
    }

    {
      name = "methods___methods_1.1.2.tgz";
      path = fetchurl {
        name = "methods___methods_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/methods/-/methods-1.1.2.tgz";
        sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
      };
    }

    {
      name = "micromatch___micromatch_4.0.2.tgz";
      path = fetchurl {
        name = "micromatch___micromatch_4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-4.0.2.tgz";
        sha1 = "4fcb0999bf9fbc2fcbdd212f6d629b9a56c39259";
      };
    }

    {
      name = "mime_db___mime_db_1.40.0.tgz";
      path = fetchurl {
        name = "mime_db___mime_db_1.40.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.40.0.tgz";
        sha1 = "a65057e998db090f732a68f6c276d387d4126c32";
      };
    }

    {
      name = "mime_types___mime_types_2.1.24.tgz";
      path = fetchurl {
        name = "mime_types___mime_types_2.1.24.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.24.tgz";
        sha1 = "b6f8d0b3e951efb77dedeca194cff6d16f676f81";
      };
    }

    {
      name = "mime___mime_1.4.1.tgz";
      path = fetchurl {
        name = "mime___mime_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-1.4.1.tgz";
        sha1 = "121f9ebc49e3766f311a76e1fa1c8003c4b03aa6";
      };
    }

    {
      name = "mimic_fn___mimic_fn_2.1.0.tgz";
      path = fetchurl {
        name = "mimic_fn___mimic_fn_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-2.1.0.tgz";
        sha1 = "7ed2c2ccccaf84d3ffcb7a69b57711fc2083401b";
      };
    }

    {
      name = "minimatch___minimatch_3.0.4.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
        sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
      };
    }

    {
      name = "minimist___minimist_1.2.0.tgz";
      path = fetchurl {
        name = "minimist___minimist_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    }

    {
      name = "ms___ms_2.0.0.tgz";
      path = fetchurl {
        name = "ms___ms_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    }

    {
      name = "negotiator___negotiator_0.6.2.tgz";
      path = fetchurl {
        name = "negotiator___negotiator_0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.2.tgz";
        sha1 = "feacf7ccf525a77ae9634436a64883ffeca346fb";
      };
    }

    {
      name = "nice_try___nice_try_1.0.5.tgz";
      path = fetchurl {
        name = "nice_try___nice_try_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/nice-try/-/nice-try-1.0.5.tgz";
        sha1 = "a3378a7696ce7d223e88fc9b764bd7ef1089e366";
      };
    }

    {
      name = "node_watch___node_watch_0.5.5.tgz";
      path = fetchurl {
        name = "node_watch___node_watch_0.5.5.tgz";
        url  = "https://registry.yarnpkg.com/node-watch/-/node-watch-0.5.5.tgz";
        sha1 = "34865ba8bc6861ab086acdcc3403e40ed55c3274";
      };
    }

    {
      name = "npm_run_path___npm_run_path_3.1.0.tgz";
      path = fetchurl {
        name = "npm_run_path___npm_run_path_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/npm-run-path/-/npm-run-path-3.1.0.tgz";
        sha1 = "7f91be317f6a466efed3c9f2980ad8a4ee8b0fa5";
      };
    }

    {
      name = "oauth_sign___oauth_sign_0.9.0.tgz";
      path = fetchurl {
        name = "oauth_sign___oauth_sign_0.9.0.tgz";
        url  = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.9.0.tgz";
        sha1 = "47a7b016baa68b5fa0ecf3dee08a85c679ac6455";
      };
    }

    {
      name = "on_finished___on_finished_2.3.0.tgz";
      path = fetchurl {
        name = "on_finished___on_finished_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    }

    {
      name = "once___once_1.4.0.tgz";
      path = fetchurl {
        name = "once___once_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    }

    {
      name = "onetime___onetime_5.1.0.tgz";
      path = fetchurl {
        name = "onetime___onetime_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/onetime/-/onetime-5.1.0.tgz";
        sha1 = "fff0f3c91617fe62bb50189636e99ac8a6df7be5";
      };
    }

    {
      name = "opn___opn_5.4.0.tgz";
      path = fetchurl {
        name = "opn___opn_5.4.0.tgz";
        url  = "https://registry.yarnpkg.com/opn/-/opn-5.4.0.tgz";
        sha1 = "cb545e7aab78562beb11aa3bfabc7042e1761035";
      };
    }

    {
      name = "options___options_0.0.6.tgz";
      path = fetchurl {
        name = "options___options_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/options/-/options-0.0.6.tgz";
        sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
      };
    }

    {
      name = "os_homedir___os_homedir_1.0.2.tgz";
      path = fetchurl {
        name = "os_homedir___os_homedir_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    }

    {
      name = "os_tmpdir___os_tmpdir_1.0.2.tgz";
      path = fetchurl {
        name = "os_tmpdir___os_tmpdir_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    }

    {
      name = "p_finally___p_finally_2.0.1.tgz";
      path = fetchurl {
        name = "p_finally___p_finally_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/p-finally/-/p-finally-2.0.1.tgz";
        sha1 = "bd6fcaa9c559a096b680806f4d657b3f0f240561";
      };
    }

    {
      name = "parseurl___parseurl_1.3.3.tgz";
      path = fetchurl {
        name = "parseurl___parseurl_1.3.3.tgz";
        url  = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.3.tgz";
        sha1 = "9da19e7bee8d12dff0513ed5b76957793bc2e8d4";
      };
    }

    {
      name = "path_is_absolute___path_is_absolute_1.0.1.tgz";
      path = fetchurl {
        name = "path_is_absolute___path_is_absolute_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    }

    {
      name = "path_key___path_key_2.0.1.tgz";
      path = fetchurl {
        name = "path_key___path_key_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    }

    {
      name = "path_key___path_key_3.1.0.tgz";
      path = fetchurl {
        name = "path_key___path_key_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-key/-/path-key-3.1.0.tgz";
        sha1 = "99a10d870a803bdd5ee6f0470e58dfcd2f9a54d3";
      };
    }

    {
      name = "path_to_regexp___path_to_regexp_0.1.7.tgz";
      path = fetchurl {
        name = "path_to_regexp___path_to_regexp_0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
        sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
      };
    }

    {
      name = "path_type___path_type_4.0.0.tgz";
      path = fetchurl {
        name = "path_type___path_type_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-type/-/path-type-4.0.0.tgz";
        sha1 = "84ed01c0a7ba380afe09d90a8c180dcd9d03043b";
      };
    }

    {
      name = "performance_now___performance_now_2.1.0.tgz";
      path = fetchurl {
        name = "performance_now___performance_now_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    }

    {
      name = "picomatch___picomatch_2.0.7.tgz";
      path = fetchurl {
        name = "picomatch___picomatch_2.0.7.tgz";
        url  = "https://registry.yarnpkg.com/picomatch/-/picomatch-2.0.7.tgz";
        sha1 = "514169d8c7cd0bdbeecc8a2609e34a7163de69f6";
      };
    }

    {
      name = "process_nextick_args___process_nextick_args_1.0.7.tgz";
      path = fetchurl {
        name = "process_nextick_args___process_nextick_args_1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    }

    {
      name = "proxy_addr___proxy_addr_2.0.5.tgz";
      path = fetchurl {
        name = "proxy_addr___proxy_addr_2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-2.0.5.tgz";
        sha1 = "34cbd64a2d81f4b1fd21e76f9f06c8a45299ee34";
      };
    }

    {
      name = "psl___psl_1.3.0.tgz";
      path = fetchurl {
        name = "psl___psl_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/psl/-/psl-1.3.0.tgz";
        sha1 = "e1ebf6a3b5564fa8376f3da2275da76d875ca1bd";
      };
    }

    {
      name = "pump___pump_3.0.0.tgz";
      path = fetchurl {
        name = "pump___pump_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pump/-/pump-3.0.0.tgz";
        sha1 = "b4a2116815bde2f4e1ea602354e8c75565107a64";
      };
    }

    {
      name = "punycode___punycode_1.4.1.tgz";
      path = fetchurl {
        name = "punycode___punycode_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    }

    {
      name = "punycode___punycode_2.1.1.tgz";
      path = fetchurl {
        name = "punycode___punycode_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-2.1.1.tgz";
        sha1 = "b58b010ac40c22c5657616c8d2c2c02c7bf479ec";
      };
    }

    {
      name = "qs___qs_6.5.1.tgz";
      path = fetchurl {
        name = "qs___qs_6.5.1.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.5.1.tgz";
        sha1 = "349cdf6eef89ec45c12d7d5eb3fc0c870343a6d8";
      };
    }

    {
      name = "qs___qs_6.5.2.tgz";
      path = fetchurl {
        name = "qs___qs_6.5.2.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.5.2.tgz";
        sha1 = "cb3ae806e8740444584ef154ce8ee98d403f3e36";
      };
    }

    {
      name = "range_parser___range_parser_1.2.1.tgz";
      path = fetchurl {
        name = "range_parser___range_parser_1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.1.tgz";
        sha1 = "3cf37023d199e1c24d1a55b84800c2f3e6468031";
      };
    }

    {
      name = "raw_body___raw_body_2.3.2.tgz";
      path = fetchurl {
        name = "raw_body___raw_body_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.2.tgz";
        sha1 = "bcd60c77d3eb93cde0050295c3f379389bc88f89";
      };
    }

    {
      name = "readable_stream___readable_stream_2.0.6.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.0.6.tgz";
        sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
      };
    }

    {
      name = "regenerator_runtime___regenerator_runtime_0.9.6.tgz";
      path = fetchurl {
        name = "regenerator_runtime___regenerator_runtime_0.9.6.tgz";
        url  = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.9.6.tgz";
        sha1 = "d33eb95d0d2001a4be39659707c51b0cb71ce029";
      };
    }

    {
      name = "request___request_2.88.0.tgz";
      path = fetchurl {
        name = "request___request_2.88.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.88.0.tgz";
        sha1 = "9c2fca4f7d35b592efe57c7f0a55e81052124fef";
      };
    }

    {
      name = "reusify___reusify_1.0.4.tgz";
      path = fetchurl {
        name = "reusify___reusify_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/reusify/-/reusify-1.0.4.tgz";
        sha1 = "90da382b1e126efc02146e90845a88db12925d76";
      };
    }

    {
      name = "run_parallel___run_parallel_1.1.9.tgz";
      path = fetchurl {
        name = "run_parallel___run_parallel_1.1.9.tgz";
        url  = "https://registry.yarnpkg.com/run-parallel/-/run-parallel-1.1.9.tgz";
        sha1 = "c9dd3a7cf9f4b2c4b6244e173a6ed866e61dd679";
      };
    }

    {
      name = "rxjs___rxjs_6.5.2.tgz";
      path = fetchurl {
        name = "rxjs___rxjs_6.5.2.tgz";
        url  = "https://registry.yarnpkg.com/rxjs/-/rxjs-6.5.2.tgz";
        sha1 = "2e35ce815cd46d84d02a209fb4e5921e051dbec7";
      };
    }

    {
      name = "safe_buffer___safe_buffer_5.1.1.tgz";
      path = fetchurl {
        name = "safe_buffer___safe_buffer_5.1.1.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.1.tgz";
        sha1 = "893312af69b2123def71f57889001671eeb2c853";
      };
    }

    {
      name = "safe_buffer___safe_buffer_5.2.0.tgz";
      path = fetchurl {
        name = "safe_buffer___safe_buffer_5.2.0.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.2.0.tgz";
        sha1 = "b74daec49b1148f88c64b68d49b1e815c1f2f519";
      };
    }

    {
      name = "safe_buffer___safe_buffer_5.1.2.tgz";
      path = fetchurl {
        name = "safe_buffer___safe_buffer_5.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha1 = "991ec69d296e0313747d59bdfd2b745c35f8828d";
      };
    }

    {
      name = "safer_buffer___safer_buffer_2.1.2.tgz";
      path = fetchurl {
        name = "safer_buffer___safer_buffer_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha1 = "44fa161b0187b9549dd84bb91802f9bd8385cd6a";
      };
    }

    {
      name = "semver___semver_5.7.1.tgz";
      path = fetchurl {
        name = "semver___semver_5.7.1.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.7.1.tgz";
        sha1 = "a954f931aeba508d307bbf069eff0c01c96116f7";
      };
    }

    {
      name = "send___send_0.16.2.tgz";
      path = fetchurl {
        name = "send___send_0.16.2.tgz";
        url  = "https://registry.yarnpkg.com/send/-/send-0.16.2.tgz";
        sha1 = "6ecca1e0f8c156d141597559848df64730a6bbc1";
      };
    }

    {
      name = "serve_static___serve_static_1.13.2.tgz";
      path = fetchurl {
        name = "serve_static___serve_static_1.13.2.tgz";
        url  = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.13.2.tgz";
        sha1 = "095e8472fd5b46237db50ce486a43f4b86c6cec1";
      };
    }

    {
      name = "setprototypeof___setprototypeof_1.0.3.tgz";
      path = fetchurl {
        name = "setprototypeof___setprototypeof_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.3.tgz";
        sha1 = "66567e37043eeb4f04d91bd658c0cbefb55b8e04";
      };
    }

    {
      name = "setprototypeof___setprototypeof_1.1.0.tgz";
      path = fetchurl {
        name = "setprototypeof___setprototypeof_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.0.tgz";
        sha1 = "d0bd85536887b6fe7c0d818cb962d9d91c54e656";
      };
    }

    {
      name = "shebang_command___shebang_command_1.2.0.tgz";
      path = fetchurl {
        name = "shebang_command___shebang_command_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    }

    {
      name = "shebang_regex___shebang_regex_1.0.0.tgz";
      path = fetchurl {
        name = "shebang_regex___shebang_regex_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    }

    {
      name = "signal_exit___signal_exit_3.0.2.tgz";
      path = fetchurl {
        name = "signal_exit___signal_exit_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    }

    {
      name = "slash___slash_3.0.0.tgz";
      path = fetchurl {
        name = "slash___slash_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/slash/-/slash-3.0.0.tgz";
        sha1 = "6539be870c165adbd5240220dbe361f1bc4d4634";
      };
    }

    {
      name = "sshpk___sshpk_1.16.1.tgz";
      path = fetchurl {
        name = "sshpk___sshpk_1.16.1.tgz";
        url  = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.16.1.tgz";
        sha1 = "fb661c0bef29b39db40769ee39fa70093d6f6877";
      };
    }

    {
      name = "statuses___statuses_1.5.0.tgz";
      path = fetchurl {
        name = "statuses___statuses_1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.5.0.tgz";
        sha1 = "161c7dac177659fd9811f43771fa99381478628c";
      };
    }

    {
      name = "statuses___statuses_1.4.0.tgz";
      path = fetchurl {
        name = "statuses___statuses_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.4.0.tgz";
        sha1 = "bb73d446da2796106efcc1b601a253d6c46bd087";
      };
    }

    {
      name = "string_decoder___string_decoder_0.10.31.tgz";
      path = fetchurl {
        name = "string_decoder___string_decoder_0.10.31.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    }

    {
      name = "strip_final_newline___strip_final_newline_2.0.0.tgz";
      path = fetchurl {
        name = "strip_final_newline___strip_final_newline_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-final-newline/-/strip-final-newline-2.0.0.tgz";
        sha1 = "89b852fb2fcbe936f6f4b3187afb0a12c1ab58ad";
      };
    }

    {
      name = "sums___sums_0.2.4.tgz";
      path = fetchurl {
        name = "sums___sums_0.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sums/-/sums-0.2.4.tgz";
        sha1 = "d78c14398297d604fe6588dc3b03deca7b91ba93";
      };
    }

    {
      name = "through2___through2_2.0.1.tgz";
      path = fetchurl {
        name = "through2___through2_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-2.0.1.tgz";
        sha1 = "384e75314d49f32de12eebb8136b8eb6b5d59da9";
      };
    }

    {
      name = "tmp___tmp_0.0.31.tgz";
      path = fetchurl {
        name = "tmp___tmp_0.0.31.tgz";
        url  = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.31.tgz";
        sha1 = "8f38ab9438e17315e5dbd8b3657e8bfb277ae4a7";
      };
    }

    {
      name = "to_regex_range___to_regex_range_5.0.1.tgz";
      path = fetchurl {
        name = "to_regex_range___to_regex_range_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha1 = "1648c44aae7c8d988a326018ed72f5b4dd0392e4";
      };
    }

    {
      name = "tough_cookie___tough_cookie_2.4.3.tgz";
      path = fetchurl {
        name = "tough_cookie___tough_cookie_2.4.3.tgz";
        url  = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.4.3.tgz";
        sha1 = "53f36da3f47783b0925afa06ff9f3b165280f781";
      };
    }

    {
      name = "traverse_chain___traverse_chain_0.1.0.tgz";
      path = fetchurl {
        name = "traverse_chain___traverse_chain_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/traverse-chain/-/traverse-chain-0.1.0.tgz";
        sha1 = "61dbc2d53b69ff6091a12a168fd7d433107e40f1";
      };
    }

    {
      name = "tslib___tslib_1.10.0.tgz";
      path = fetchurl {
        name = "tslib___tslib_1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/tslib/-/tslib-1.10.0.tgz";
        sha1 = "c3c19f95973fb0a62973fb09d90d961ee43e5c8a";
      };
    }

    {
      name = "tunnel_agent___tunnel_agent_0.6.0.tgz";
      path = fetchurl {
        name = "tunnel_agent___tunnel_agent_0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    }

    {
      name = "tweetnacl___tweetnacl_0.14.5.tgz";
      path = fetchurl {
        name = "tweetnacl___tweetnacl_0.14.5.tgz";
        url  = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    }

    {
      name = "type_is___type_is_1.6.18.tgz";
      path = fetchurl {
        name = "type_is___type_is_1.6.18.tgz";
        url  = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.18.tgz";
        sha1 = "4e552cd05df09467dcbc4ef739de89f2cf37c131";
      };
    }

    {
      name = "typedarray___typedarray_0.0.6.tgz";
      path = fetchurl {
        name = "typedarray___typedarray_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    }

    {
      name = "ultron___ultron_1.0.2.tgz";
      path = fetchurl {
        name = "ultron___ultron_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/ultron/-/ultron-1.0.2.tgz";
        sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
      };
    }

    {
      name = "ultron___ultron_1.1.1.tgz";
      path = fetchurl {
        name = "ultron___ultron_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ultron/-/ultron-1.1.1.tgz";
        sha1 = "9fe1536a10a664a65266a1e3ccf85fd36302bc9c";
      };
    }

    {
      name = "unpipe___unpipe_1.0.0.tgz";
      path = fetchurl {
        name = "unpipe___unpipe_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    }

    {
      name = "uri_js___uri_js_4.2.2.tgz";
      path = fetchurl {
        name = "uri_js___uri_js_4.2.2.tgz";
        url  = "https://registry.yarnpkg.com/uri-js/-/uri-js-4.2.2.tgz";
        sha1 = "94c540e1ff772956e2299507c010aea6c8838eb0";
      };
    }

    {
      name = "util_deprecate___util_deprecate_1.0.2.tgz";
      path = fetchurl {
        name = "util_deprecate___util_deprecate_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    }

    {
      name = "utils_merge___utils_merge_1.0.1.tgz";
      path = fetchurl {
        name = "utils_merge___utils_merge_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.1.tgz";
        sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
      };
    }

    {
      name = "uuid___uuid_3.3.3.tgz";
      path = fetchurl {
        name = "uuid___uuid_3.3.3.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-3.3.3.tgz";
        sha1 = "4568f0216e78760ee1dbf3a4d2cf53e224112866";
      };
    }

    {
      name = "vary___vary_1.1.2.tgz";
      path = fetchurl {
        name = "vary___vary_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz";
        sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
      };
    }

    {
      name = "verror___verror_1.10.0.tgz";
      path = fetchurl {
        name = "verror___verror_1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    }

    {
      name = "vscode_jsonrpc___vscode_jsonrpc_4.0.0.tgz";
      path = fetchurl {
        name = "vscode_jsonrpc___vscode_jsonrpc_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/vscode-jsonrpc/-/vscode-jsonrpc-4.0.0.tgz";
        sha1 = "a7bf74ef3254d0a0c272fab15c82128e378b3be9";
      };
    }

    {
      name = "vscode_languageserver_protocol___vscode_languageserver_protocol_3.14.1.tgz";
      path = fetchurl {
        name = "vscode_languageserver_protocol___vscode_languageserver_protocol_3.14.1.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.14.1.tgz";
        sha1 = "b8aab6afae2849c84a8983d39a1cf742417afe2f";
      };
    }

    {
      name = "vscode_languageserver_types___vscode_languageserver_types_3.14.0.tgz";
      path = fetchurl {
        name = "vscode_languageserver_types___vscode_languageserver_types_3.14.0.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.14.0.tgz";
        sha1 = "d3b5952246d30e5241592b6dde8280e03942e743";
      };
    }

    {
      name = "vscode_languageserver___vscode_languageserver_5.2.1.tgz";
      path = fetchurl {
        name = "vscode_languageserver___vscode_languageserver_5.2.1.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver/-/vscode-languageserver-5.2.1.tgz";
        sha1 = "0d2feddd33f92aadf5da32450df498d52f6f14eb";
      };
    }

    {
      name = "vscode_uri___vscode_uri_1.0.8.tgz";
      path = fetchurl {
        name = "vscode_uri___vscode_uri_1.0.8.tgz";
        url  = "https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-1.0.8.tgz";
        sha1 = "9769aaececae4026fb6e22359cb38946580ded59";
      };
    }

    {
      name = "vscode_uri___vscode_uri_2.0.3.tgz";
      path = fetchurl {
        name = "vscode_uri___vscode_uri_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-2.0.3.tgz";
        sha1 = "25e5f37f552fbee3cec7e5f80cef8469cefc6543";
      };
    }

    {
      name = "web_tree_sitter___web_tree_sitter_0.15.9.tgz";
      path = fetchurl {
        name = "web_tree_sitter___web_tree_sitter_0.15.9.tgz";
        url  = "https://registry.yarnpkg.com/web-tree-sitter/-/web-tree-sitter-0.15.9.tgz";
        sha1 = "f93ec2e02cfc01ca3fa85d600114b982eef7b33c";
      };
    }

    {
      name = "which___which_1.3.1.tgz";
      path = fetchurl {
        name = "which___which_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/which/-/which-1.3.1.tgz";
        sha1 = "a45043d54f5805316da8d62f9f50918d3da70b0a";
      };
    }

    {
      name = "wrappy___wrappy_1.0.2.tgz";
      path = fetchurl {
        name = "wrappy___wrappy_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    }

    {
      name = "ws___ws_3.3.1.tgz";
      path = fetchurl {
        name = "ws___ws_3.3.1.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-3.3.1.tgz";
        sha1 = "d97e34dee06a1190c61ac1e95f43cb60b78cf939";
      };
    }

    {
      name = "ws___ws_1.1.5.tgz";
      path = fetchurl {
        name = "ws___ws_1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-1.1.5.tgz";
        sha1 = "cbd9e6e75e09fc5d2c90015f21f0c40875e0dd51";
      };
    }

    {
      name = "ws___ws_7.1.2.tgz";
      path = fetchurl {
        name = "ws___ws_7.1.2.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-7.1.2.tgz";
        sha1 = "c672d1629de8bb27a9699eb599be47aeeedd8f73";
      };
    }

    {
      name = "xtend___xtend_4.0.2.tgz";
      path = fetchurl {
        name = "xtend___xtend_4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.2.tgz";
        sha1 = "bb72779f5fa465186b1f438f674fa347fdb5db54";
      };
    }
  ];
}
