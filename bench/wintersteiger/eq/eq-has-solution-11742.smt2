(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.92228115592541914935509339557029306888580322265625p950 {+ 4153585070156548 950 (1.82942e+286)}
; Y = -1.9042045305009758227043903389130719006061553955078125p-177 {- 4072175186630909 -177 (-9.94041e-054)}
; 1.92228115592541914935509339557029306888580322265625p950 = -1.9042045305009758227043903389130719006061553955078125p-177 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110101 #b1110110000011010100111100010101001101010101100000100)))
(assert (= y (fp #b1 #b01101001110 #b1110011101111001111100101011011101100101100011111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
