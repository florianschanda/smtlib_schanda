(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.926920193055397856340960061061196029186248779296875p841 {- 4174477436046478 841 (-2.82547e+253)}
; Y = 1.059254759146905033873053980641998350620269775390625p-392 {+ 266859711213930 -392 (1.05013e-118)}
; -1.926920193055397856340960061061196029186248779296875p841 > 1.059254759146905033873053980641998350620269775390625p-392 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001000 #b1110110101001010101001000100101100101100110010001110)))
(assert (= y (fp #b0 #b01001110111 #b0000111100101011010100011110010010101011000101101010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
