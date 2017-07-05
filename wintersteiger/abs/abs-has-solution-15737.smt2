(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.34264313758569553414190522744320333003997802734375p-845 {- 1543127506751996 -845 (-5.72288e-255)}
; -1.34264313758569553414190522744320333003997802734375p-845 | == 1.34264313758569553414190522744320333003997802734375p-845
; [HW: 1.34264313758569553414190522744320333003997802734375p-845] 

; mpf : + 1543127506751996 -845
; mpfd: + 1543127506751996 -845 (5.72288e-255) class: Pos. norm. non-zero
; hwf : + 1543127506751996 -845 (5.72288e-255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110010 #b0101011110110111011101011110111000100001000111111100)))
(assert (= r (fp #b0 #b00010110010 #b0101011110110111011101011110111000100001000111111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
