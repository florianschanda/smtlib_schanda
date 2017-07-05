(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.33550410609564007557992226793430745601654052734375p-257 {+ 1510976167193596 -257 (5.76682e-078)}
; Y = -1.5368431807009945710973397581255994737148284912109375p-599 {- 2417726748561391 -599 (-7.40734e-181)}
; 1.33550410609564007557992226793430745601654052734375p-257 > -1.5368431807009945710973397581255994737148284912109375p-599 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111110 #b0101010111100011100110001101101101011010101111111100)))
(assert (= y (fp #b1 #b00110101000 #b1000100101101110100011100000000000110000111111101111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
