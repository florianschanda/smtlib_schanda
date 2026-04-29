(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6170413981869382613609786858432926237583160400390625p-101 {- 2778907410946865 -101 (-6.3781e-031)}
; -1.6170413981869382613609786858432926237583160400390625p-101 | == 1.6170413981869382613609786858432926237583160400390625p-101
; [HW: 1.6170413981869382613609786858432926237583160400390625p-101] 

; mpf : + 2778907410946865 -101
; mpfd: + 2778907410946865 -101 (6.3781e-031) class: Pos. norm. non-zero
; hwf : + 2778907410946865 -101 (6.3781e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011010 #b1001110111110110011011001101000101111101101100110001)))
(assert (= r (fp #b0 #b01110011010 #b1001110111110110011011001101000101111101101100110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
