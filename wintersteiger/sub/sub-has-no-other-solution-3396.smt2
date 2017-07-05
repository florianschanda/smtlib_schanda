(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1467038586288176293948026795987971127033233642578125p-652 {- 660695443054557 -652 (-6.13612e-197)}
; Y = -1.8275128132169358163849892662256024777889251708984375p-398 {- 3726786397248103 -398 (-2.83088e-120)}
; -1.1467038586288176293948026795987971127033233642578125p-652 - -1.8275128132169358163849892662256024777889251708984375p-398 == 1.827512813216935594340384341194294393062591552734375p-398
; [HW: 1.827512813216935594340384341194294393062591552734375p-398] 

; mpf : + 3726786397248102 -398
; mpfd: + 3726786397248102 -398 (2.83088e-120) class: Pos. norm. non-zero
; hwf : + 3726786397248102 -398 (2.83088e-120) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110011 #b0010010110001110011000100101001100000001111111011101)))
(assert (= y (fp #b1 #b01001110001 #b1101001111010111111000010011010111001001101001100111)))
(assert (= r (fp #b0 #b01001110001 #b1101001111010111111000010011010111001001101001100110)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
