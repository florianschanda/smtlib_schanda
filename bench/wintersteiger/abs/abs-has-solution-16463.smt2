(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.410625308416879608586214089882560074329376220703125p786 {+ 1849291985975154 786 (5.74101e+236)}
; 1.410625308416879608586214089882560074329376220703125p786 | == 1.410625308416879608586214089882560074329376220703125p786
; [HW: 1.410625308416879608586214089882560074329376220703125p786] 

; mpf : + 1849291985975154 786
; mpfd: + 1849291985975154 786 (5.74101e+236) class: Pos. norm. non-zero
; hwf : + 1849291985975154 786 (5.74101e+236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010001 #b0110100100011110101111010111111010001111011101110010)))
(assert (= r (fp #b0 #b11100010001 #b0110100100011110101111010111111010001111011101110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
