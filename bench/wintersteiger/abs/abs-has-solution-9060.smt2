(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.287165399795747955380420535220764577388763427734375p-472 {+ 1293277987513830 -472 (1.05554e-142)}
; 1.287165399795747955380420535220764577388763427734375p-472 | == 1.287165399795747955380420535220764577388763427734375p-472
; [HW: 1.287165399795747955380420535220764577388763427734375p-472] 

; mpf : + 1293277987513830 -472
; mpfd: + 1293277987513830 -472 (1.05554e-142) class: Pos. norm. non-zero
; hwf : + 1293277987513830 -472 (1.05554e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100111 #b0100100110000011101010111111000010101010010111100110)))
(assert (= r (fp #b0 #b01000100111 #b0100100110000011101010111111000010101010010111100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
