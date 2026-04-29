(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5858065502614471231623838320956565439701080322265625p71 {- 2638238161468649 71 (-3.74438e+021)}
; -1.5858065502614471231623838320956565439701080322265625p71 | == 1.5858065502614471231623838320956565439701080322265625p71
; [HW: 1.5858065502614471231623838320956565439701080322265625p71] 

; mpf : + 2638238161468649 71
; mpfd: + 2638238161468649 71 (3.74438e+021) class: Pos. norm. non-zero
; hwf : + 2638238161468649 71 (3.74438e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000110 #b1001010111110111011010110000011100100111110011101001)))
(assert (= r (fp #b0 #b10001000110 #b1001010111110111011010110000011100100111110011101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
