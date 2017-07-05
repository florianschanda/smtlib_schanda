(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.952554197810965064263655222021043300628662109375p49 {- 4289922730311664 49 (-1.09919e+015)}
; -1.952554197810965064263655222021043300628662109375p49 | == 1.952554197810965064263655222021043300628662109375p49
; [HW: 1.952554197810965064263655222021043300628662109375p49] 

; mpf : + 4289922730311664 49
; mpfd: + 4289922730311664 49 (1.09919e+015) class: Pos. norm. non-zero
; hwf : + 4289922730311664 49 (1.09919e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110000 #b1111001111011010100101111000011101000011111111110000)))
(assert (= r (fp #b0 #b10000110000 #b1111001111011010100101111000011101000011111111110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
