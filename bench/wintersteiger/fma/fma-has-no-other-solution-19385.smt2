(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8733199343167223904771390152745880186557769775390625p486 {- 3933083330764017 486 (-3.74274e+146)}
; Y = -1.3675164058496440677714645062224008142948150634765625p1012 {- 1655146748437001 1012 (-6.00189e+304)}
; Z = -1.758297364947818408609236939810216426849365234375p175 {- 3415067730215024 175 (-8.42057e+052)}
; -1.8733199343167223904771390152745880186557769775390625p486 x -1.3675164058496440677714645062224008142948150634765625p1012 -1.758297364947818408609236939810216426849365234375p175 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100101 #b1101111110010001111001010010110011010101110011110001)))
(assert (= y (fp #b1 #b11111110011 #b0101111000010101100011100001111111011110001000001001)))
(assert (= z (fp #b1 #b10010101110 #b1100001000011111110001101010111100011000000001110000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
