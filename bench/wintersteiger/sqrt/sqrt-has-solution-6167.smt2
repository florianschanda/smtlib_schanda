(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.619948795288205900533284875564277172088623046875p869 {+ 2792001163448752 869 (6.37628e+261)}
; 1.619948795288205900533284875564277172088623046875p869 S == 1.799971552713100830800385665497742593288421630859375p434
; [HW: 1.799971552713100830800385665497742593288421630859375p434] 

; mpf : + 3602751586705718 434
; mpfd: + 3602751586705718 434 (7.98516e+130) class: Pos. norm. non-zero
; hwf : + 3602751586705718 434 (7.98516e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100100 #b1001111010110100111101101101100011110101000110110000)))
(assert (= r (fp #b0 #b10110110001 #b1100110011001010111011111000100010100010000100110110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
