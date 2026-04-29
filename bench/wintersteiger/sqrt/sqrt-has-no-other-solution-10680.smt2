(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.80084487325237052601778486859984695911407470703125p-547 {+ 3606684672760948 -547 (3.90903e-165)}
; 1.80084487325237052601778486859984695911407470703125p-547 S == 1.897811831163653817355907449382357299327850341796875p-274
; [HW: 1.897811831163653817355907449382357299327850341796875p-274] 

; mpf : + 4043385028277454 -274
; mpfd: + 4043385028277454 -274 (6.25222e-083) class: Pos. norm. non-zero
; hwf : + 4043385028277454 -274 (6.25222e-083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011100 #b1100110100000100001010110110101111001001110001110100)))
(assert (= r (fp #b0 #b01011101101 #b1110010111010110111111110000010011001111010011001110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
