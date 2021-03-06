(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.17197316303664766934389263042248785495758056640625p300 {+ 774498272969572 300 (2.38735e+090)}
; Y = 1.505609001220879150650944211520254611968994140625p751 {+ 2277060509493520 751 (1.78336e+226)}
; Z = -1.9809674330253634888521219181711785495281219482421875p-886 {- 4417884565835619 -886 (-3.83973e-267)}
; 1.17197316303664766934389263042248785495758056640625p300 x 1.505609001220879150650944211520254611968994140625p751 -1.9809674330253634888521219181711785495281219482421875p-886 == +oo
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
(assert (= x (fp #b0 #b10100101011 #b0010110000000110011011101110011100001000001101100100)))
(assert (= y (fp #b0 #b11011101110 #b1000000101101111100101110110110011001110100100010000)))
(assert (= z (fp #b1 #b00010001001 #b1111101100100000101011101000001101001000111101100011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
