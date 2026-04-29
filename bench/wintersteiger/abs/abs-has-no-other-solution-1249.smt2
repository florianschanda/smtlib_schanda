(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.8294661634993063525911338729201816022396087646484375p-1022 {+ 3735583504851911 -1023 (1.84562e-308)}
; 0.8294661634993063525911338729201816022396087646484375p-1022 | == 0.8294661634993063525911338729201816022396087646484375p-1022
; [HW: 0.8294661634993063525911338729201816022396087646484375p-1022] 

; mpf : + 3735583504851911 -1023
; mpfd: + 3735583504851911 -1023 (1.84562e-308) class: Pos. denorm.
; hwf : + 3735583504851911 -1023 (1.84562e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1101010001010111111001001111110101011110001111000111)))
(assert (= r (fp #b0 #b00000000000 #b1101010001010111111001001111110101011110001111000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
