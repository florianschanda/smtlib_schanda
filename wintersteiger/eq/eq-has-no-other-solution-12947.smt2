(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0509835532216171838371110425214283168315887451171875p-649 {+ 229609511290899 -649 (4.49913e-196)}
; Y = 1.9115386570106311925343334223725832998752593994140625p-237 {+ 4105205156046881 -237 (8.65514e-072)}
; 1.0509835532216171838371110425214283168315887451171875p-649 = 1.9115386570106311925343334223725832998752593994140625p-237 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110110 #b0000110100001101010000100001010110111000100000010011)))
(assert (= y (fp #b0 #b01100010010 #b1110100101011010100110001111000011100110100000100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
