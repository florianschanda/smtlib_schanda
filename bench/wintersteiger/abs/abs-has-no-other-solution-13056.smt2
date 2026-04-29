(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.534249252854519074418249147129245102405548095703125p-48 {+ 2406044736078578 -48 (5.45075e-015)}
; 1.534249252854519074418249147129245102405548095703125p-48 | == 1.534249252854519074418249147129245102405548095703125p-48
; [HW: 1.534249252854519074418249147129245102405548095703125p-48] 

; mpf : + 2406044736078578 -48
; mpfd: + 2406044736078578 -48 (5.45075e-015) class: Pos. norm. non-zero
; hwf : + 2406044736078578 -48 (5.45075e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001111 #b1000100011000100100011110001110011101100001011110010)))
(assert (= r (fp #b0 #b01111001111 #b1000100011000100100011110001110011101100001011110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
