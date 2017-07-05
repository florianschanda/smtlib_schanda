(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.330071452218839045400500253890641033649444580078125p217 {+ 1486509669218402 217 (2.80146e+065)}
; 1.330071452218839045400500253890641033649444580078125p217 S == 1.630994452607879896532949715037830173969268798828125p108
; [HW: 1.630994452607879896532949715037830173969268798828125p108] 

; mpf : + 2841746381637698 108
; mpfd: + 2841746381637698 108 (5.29288e+032) class: Pos. norm. non-zero
; hwf : + 2841746381637698 108 (5.29288e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011000 #b0101010001111111100100000000110010011111100001100010)))
(assert (= r (fp #b0 #b10001101011 #b1010000110001000110110100011100111101000100001000010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
