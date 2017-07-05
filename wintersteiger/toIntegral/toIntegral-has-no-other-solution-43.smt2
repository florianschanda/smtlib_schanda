(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4449846855648382781822647302760742604732513427734375 442 {+ 2004032864095383 442 (1.64105e+133)}
; 1.4449846855648382781822647302760742604732513427734375 442 I == 1.4449846855648382781822647302760742604732513427734375 442
; [HW: 1.4449846855648382781822647302760742604732513427734375 442] 

; mpf : + 2004032864095383 442
; mpfd: + 2004032864095383 442 (1.64105e+133) class: Pos. norm. non-zero
; hwf : + 2004032864095383 442 (1.64105e+133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111001 #b0111000111101010100001000010111110111000110010010111)))
(assert (= r (fp #b0 #b10110111001 #b0111000111101010100001000010111110111000110010010111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
