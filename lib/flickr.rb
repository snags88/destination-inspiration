require 'open-uri'

class Flickr



end


# image urls: https://www.flickr.com/services/api/misc.urls.html
# http://stackoverflow.com/questions/6474427/using-flickr-api-to-search-photos-by-location-or-language

# 1. places.find:
# https://www.flickr.com/services/api/explore/flickr.places.find

# 2. photos.find:
# https://www.flickr.com/services/api/explore/flickr.photos.search

# 3. image URL
# https://www.flickr.com/services/api/misc.urls.html
# e.g. https://farm8.staticflickr.com/7600/16981187272_1b7f65fe94.jpg for marrakech



# https://farm1.staticflickr.com/2/1418878_1e92283336_m.jpg

# farm-id: 1
# server-id: 2
# photo-id: 1418878
# secret: 1e92283336
# size: m

#TODO
# - Generate URLs for locations

# # Marrakech: https://www.flickr.com/photos/121649087@N08/14737076087/in/set-72157646069116378

# Siem Reap: https://www.flickr.com/photos/wjhleonard/8465231385/in/photolist-dU3wng-agPEXY-95MNhS-8UMutY-6miJbK-6aqCy7-68WPMn-68hzhx-2xurAc-2xeYWf-LnraG-ccPQh-7dQR2-eFWwEs-bBNqSR-aC3dfw-6xK6yM-6xrx8N-6tpNq4-3rrkpY-nVUimk-nS2gEm-exyFC5-es3yb9-aCm5qM-o81qVq-gUr1bA-eDt2iC-ehhmpY-bzUVPd-btAz88-8u7R9M-6yBgXy-6y4vNJ-6xy9SH-6xvKj5-6vzwZS-6uYDGk-6tBgKB-6tz1vm-6qEENL-6dSrQ5-5LBgPn-5xiqWc-5w7pYY-51oark-4MSgSy-4HqJ4L-hJK4B-q5UUPH

# Istanbul: https://www.flickr.com/photos/reqfordrm/15270189947/in/photolist-pgnHt2-pfU5bT-puLLEY-pfdghw-peNaGw-oSqDMi-oRfbHz-p6KUfH-oZT8oZ-oTeWnF-ozxGSq-oPHztq-ojmCRT-oixKoK-nCz8VL-nxUfFF-nniZNF-nb3G2U-mbJgQM-kZGzjA-kqQM3B-kiJnHg-jXhq3X-jSTVjc-jMrkh8-jB1R42-jrFaLV-jq8mVw-jozTrE-jndWew-jn9Wdg-jjFk5M-hs22iE-hnkf81-ha3nDa-h42P3d-gUSMJY-gRFXsM-gN3bA2-gy2mGa-gqCnfW-gmNUBA-gju1Js-gcGyth-gaNLCh-gan6EC-ga7uYS-g3ffph-fSCnjd-fPdTy5

# Hanoi: https://www.flickr.com/photos/stubzee/3782784491/in/photolist-6LgL3g-4HHAAC-GDfb5-FhSn1-bP5iGn-aCkj2B-98R5kS-97Hqd6-8Gizsz-r6Ua8T-qtah7R-pQTA7s-5GotVo-5aGXVU-qsVW1G-qqhMeQ-qDgoGe-ptUAJ2-q5A9Qt-q1xRSb-pc63G7-pRE9N4-q7G82E-q649Xx-pMYbUZ-q4ovUR-q2PoQc-pK8Wca-pZSB4n-p3v2YP-pGq35P-p2M83G-pXnfaP-pEwLeY-oZpExb-pUhWiU-pzUQAR-pRugDn-oSjqdG-oUj7ZH-oBNYP3-nZF4eo-nwypV2-nMnLrX-nDSqyk-nBQX3n-neVtwG-necrQg-nczC9o-nk2DbF

# Prague: https://www.flickr.com/photos/te_whiu/8366641399/in/photolist-dKkdZV-dsSxvq-dkZJLN-dbgqaQ-d8SAsq-cZCRJu-cH8sUu-cyAn9s-cvAwT3-cmNnLW-ci8pzL-cguFJ5-c9YohG-bYxi7A-bJpdAk-bs1kQm-aRTayX-ayygML-ancNwD-9PWRiT-9HcY8W-9CBNhw-9CfeE2-9BoGmu-9wabbx-9jxTBv-hkNuqD-hhvzmk-gUt7wC-drWTwq-dfiZVz-bujZ29-btkmkf-bwA8CV-aD2hJ6-9GVdTx-9jxUCv-8NTdtF-8NWjqE-84MD13-7z74TF-7s8pMd-6YKW1p-6Yabha-6XF2VA-6VF87W-6NmhXc-6MPfwG-6MzKD3-6MfbFc

# London: https://www.flickr.com/photos/cuppyuppycake/9486963828/in/photolist-fskaPS-djmWxv-qBaiZz-dtsaxD-fnVxnn-r57hQM-fvWk3D-ptxV5A-fwy3PP-96KLCt-ficHbV-kPvhEf-ficrg2-bp1gyD-ficTmT-dtsaEP-ficweZ-bSo7H6-ficBHv-hY7GQ7-qQzSFD-qyRVs9-r1JAL1-r7sPHf-ayrbMq-eC3CA5-ghPDKA-5WUx44-d9Y9x6-oPDSNk-78Q9qJ-q5PiwS-ejvrwQ-8nva5P-56HvY-i58kLA-qFC51k-3RXTNQ-b3VeJk-5WUADz-oWPxbS-rHgJYw-b5XPax-he5Zwe-firVxA-firNxU-qPUFQA-aHbXQ4-kEi9Xu-f7PHw9

# Berlin: https://www.flickr.com/photos/ferdinand_hejl/14894642345/in/photolist-oGbWfn-5kz7Vj-4a7cbb-7AY4pJ-c2Yd1G-5hofj8-cd7wvo-cd7t2Y-cd7qLw-bVKbGB-bVKao4-cd7wiS-bVKayr-cd7uEU-cd7sS9-aj8ap8-eFZRCZ-cd7wHW-5kz9C9-nYrcBY-j14CHq-c2YbVh-dTwLSS-fd8DGv-cvUTYY-9Vzkfq-rK4Shw-dxH91s-odjhtR-9ZupzA-9Zrv9z-jKBLk5-qsyxzL-c2YeBq-ox6ogv-bVK95x-cd7tDo-cd7tRG-cd7pZS-cd7puw-cd7rqS-bVK9Br-cd7ugJ-bVKaYZ-cd7u5j-cd7p7o-pyZgJ-oYKMfy-cd7oLY-bVKbvp

# Rome: https://www.flickr.com/photos/anselmo_sousa/6287975061/in/photolist-azDvV8-9dakkV-8WT9Yo-7TvTqn-71RzLo-4d3X9s-2Usxm5-j9Lmu-96yuAV-9EEZPA-9k3fz7-8YfMEL-8h9ycE-7pt6kF-76zgCm-5WeSMu-4TFG4y-8FuDpu-o8ub8p-neGNCs-9kfpZ5-9dVZE8-kj5gsk-hAq8UR-faPdgM-dLDvGo-d7jDVJ-d3Sdmo-bqjNXE-brc7Le-atBJ5D-abpfvJ-9FGk2L-948WYJ-8PWAPm-7KFsBr-7wSM8U-7ptgGt-76ZCW4-71PoHk-71zLEj-6RFsBs-6hB9Ec-6fy35x-64G4ZE-5ZGZ5D-9NhGb4-5GMnxA-5zHLwk-5uzWp2

# Buenos Aires: https://www.flickr.com/photos/51228384@N05/16417946977/in/photolist-r1NgDk-9xSJiv-nUfYwv-5XVYuy-ejqvuq-dYX4KK-62VZdS-9f8osi-9JHyQ5-krhohz-qiEwLz-q26BkE-pmUKN6-q2ecAv-9KiC44-c12db9-4FfYBe-aBY6Uy-nuutfg-9MyJ8q-4bEfmh-q26N5A-bX65r-4KJCWK-6ZpT13-6FLMtS-4KSVJQ-dhwXke-5YVE4o-agvz9C-o5dFqx-nLNm3L-3RKPba-qiARDQ-q1w4YC-k2GGFV-d18aXQ-9bMn4A-pmjXtD-nJTWMQ-dBUtnw-pa5CMF-73tXBZ-73xVhu-73xWFj-73xV9d-73xW3o-73xV2m-3T1GLM-pbg8nc

# New York City: https://www.flickr.com/photos/vivnsect/9249956521/in/photolist-f6orNZ-mk9pfc-bwL1Sk-k62BAu-mc8tFL-7bykWZ-cntkks-nLjcJX-mCsvWE-eeQYou-d35aeE-4yiKaH-6VNvR2-p765UM-5jikT2-o36KP9-pDQ21j-35k2c-jER6Tt-odUvMt-gaFTRg-5eryY8-i7Bmq2-ooRQtQ-m74fUv-nhRaTV-4rEFcb-q95LoH-9hABUZ-bo1U4r-oEqV2z-hE3E1U-dfw5dU-iicuZ9-5SAbyQ-n22pbg-e9NH2a-84jVfW-mv4Wyo-o1unuB-gKcgkJ-eHBZki-4mR9zL-ovGGMe-qJBu8M-96fXHk-dTvbz8-iJjhqh-j4qVaH-dryJs5