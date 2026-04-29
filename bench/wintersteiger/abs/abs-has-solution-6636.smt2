(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.860218212519667790871835677535273134708404541015625p582 {- 3874078421360890 582 (-2.94457e+175)}
; -1.860218212519667790871835677535273134708404541015625p582 | == 1.860218212519667790871835677535273134708404541015625p582
; [HW: 1.860218212519667790871835677535273134708404541015625p582] 

; mpf : + 3874078421360890 582
; mpfd: + 3874078421360890 582 (2.94457e+175) class: Pos. norm. non-zero
; hwf : + 3874078421360890 582 (2.94457e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000101 #b1101110000110111010000101100001000110010000011111010)))
(assert (= r (fp #b0 #b11001000101 #b1101110000110111010000101100001000110010000011111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
