(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9380796406731535252987441708683036267757415771484375p833 {- 4224735120179463 833 (-1.11009e+251)}
; Y = -1.7233018599771485757088385071256197988986968994140625p-652 {- 3257461987069473 -652 (-9.22156e-197)}
; Z = -oo {- 0 1024 (-1.#INF)}
; -1.9380796406731535252987441708683036267757415771484375p833 x -1.7233018599771485757088385071256197988986968994140625p-652 -oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000000 #b1111000000100101111111001100000110111100000100000111)))
(assert (= y (fp #b1 #b00101110011 #b1011100100101010010011111000100110111100111000100001)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
