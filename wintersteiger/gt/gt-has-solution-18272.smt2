(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3285162999367290392882523519801907241344451904296875p-200 {+ 1479505885980187 -200 (8.26738e-061)}
; Y = -1.7144793272673186645960186069714836776256561279296875p547 {- 3217728832045019 547 (-7.89841e+164)}
; 1.3285162999367290392882523519801907241344451904296875p-200 > -1.7144793272673186645960186069714836776256561279296875p547 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110111 #b0101010000011001101001001110110001101110011000011011)))
(assert (= y (fp #b1 #b11000100010 #b1011011011101000000111100000000001000111111111011011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
