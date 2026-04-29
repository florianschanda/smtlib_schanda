(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.743434242917194065825015059090219438076019287109375p714 {+ 3348130179376342 714 (1.50253e+215)}
; Y = 1.585843152087246910042495073867030441761016845703125p849 {+ 2638403001437682 849 (5.95287e+255)}
; 1.743434242917194065825015059090219438076019287109375p714 = 1.585843152087246910042495073867030441761016845703125p849 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011001001 #b1011111001010001101101001110000000001110010011010110)))
(assert (= y (fp #b0 #b11101010000 #b1001010111111001110100010001101011001100110111110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
