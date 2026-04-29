(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6807274674500145561495401125284843146800994873046875p44 {+ 3065723968748747 44 (2.95677e+013)}
; Y = 1.1487031702392116461197701937635429203510284423828125p-195 {+ 669699542078125 -195 (2.28749e-059)}
; 1.6807274674500145561495401125284843146800994873046875p44 = 1.1487031702392116461197701937635429203510284423828125p-195 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101011 #b1010111001000100001001111100001000101111110011001011)))
(assert (= y (fp #b0 #b01100111100 #b0010011000010001011010010011010011111101001010101101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
