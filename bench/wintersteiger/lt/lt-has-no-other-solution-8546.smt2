(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.156163363991568271416099378257058560848236083984375p204 {+ 703297267881350 204 (2.97261e+061)}
; Y = 1.131198238346966977729834979982115328311920166015625p-358 {+ 590864337331066 -358 (1.92664e-108)}
; 1.156163363991568271416099378257058560848236083984375p204 < 1.131198238346966977729834979982115328311920166015625p-358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001011 #b0010011111111010010100100111110100101101010110000110)))
(assert (= y (fp #b0 #b01010011001 #b0010000110010110001101010010111011111110001101111010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
