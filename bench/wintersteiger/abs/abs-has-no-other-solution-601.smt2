(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.38637332316806816123744283686392009258270263671875p480 {- 1740070754245612 480 (-4.32791e+144)}
; -1.38637332316806816123744283686392009258270263671875p480 | == 1.38637332316806816123744283686392009258270263671875p480
; [HW: 1.38637332316806816123744283686392009258270263671875p480] 

; mpf : + 1740070754245612 480
; mpfd: + 1740070754245612 480 (4.32791e+144) class: Pos. norm. non-zero
; hwf : + 1740070754245612 480 (4.32791e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011111 #b0110001011101001010111001011001100001101101111101100)))
(assert (= r (fp #b0 #b10111011111 #b0110001011101001010111001011001100001101101111101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
