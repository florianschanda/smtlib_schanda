(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.240636308912105079116372507996857166290283203125p868 {+ 1083729591148368 868 (2.44163e+261)}
; 1.240636308912105079116372507996857166290283203125p868 S == 1.11383854705792284534027203335426747798919677734375p434
; [HW: 1.11383854705792284534027203335426747798919677734375p434] 

; mpf : + 512683238110460 434
; mpfd: + 512683238110460 434 (4.94129e+130) class: Pos. norm. non-zero
; hwf : + 512683238110460 434 (4.94129e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100011 #b0011110110011010010101110101010100000001111101010000)))
(assert (= r (fp #b0 #b10110110001 #b0001110100100100100001011110010010100011010011111100)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
