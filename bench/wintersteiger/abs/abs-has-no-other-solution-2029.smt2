(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9468334361076553573610681269201450049877166748046875p218 {- 4264158710036363 218 (-8.20102e+065)}
; -1.9468334361076553573610681269201450049877166748046875p218 | == 1.9468334361076553573610681269201450049877166748046875p218
; [HW: 1.9468334361076553573610681269201450049877166748046875p218] 

; mpf : + 4264158710036363 218
; mpfd: + 4264158710036363 218 (8.20102e+065) class: Pos. norm. non-zero
; hwf : + 4264158710036363 218 (8.20102e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011001 #b1111001001100011101011010001001011010111011110001011)))
(assert (= r (fp #b0 #b10011011001 #b1111001001100011101011010001001011010111011110001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
