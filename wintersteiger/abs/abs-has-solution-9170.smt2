(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1898132843043567330454379771254025399684906005859375p51 {+ 854843036463071 51 (2.67922e+015)}
; 1.1898132843043567330454379771254025399684906005859375p51 | == 1.1898132843043567330454379771254025399684906005859375p51
; [HW: 1.1898132843043567330454379771254025399684906005859375p51] 

; mpf : + 854843036463071 51
; mpfd: + 854843036463071 51 (2.67922e+015) class: Pos. norm. non-zero
; hwf : + 854843036463071 51 (2.67922e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110010 #b0011000010010111100110100111100001101110111111011111)))
(assert (= r (fp #b0 #b10000110010 #b0011000010010111100110100111100001101110111111011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
