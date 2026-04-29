(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8915304168033417742122992422082461416721343994140625p903 {- 4015096052904993 903 (-1.27909e+272)}
; Y = 1.9459451490007599883114153271890245378017425537109375p-357 {+ 4260158220552751 -357 (6.62861e-108)}
; -1.8915304168033417742122992422082461416721343994140625p903 / 1.9459451490007599883114153271890245378017425537109375p-357 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000110 #b1110010000111011010101100101111110001111010000100001)))
(assert (= y (fp #b0 #b01010011010 #b1111001000101001011101100001011011000100101000101111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
