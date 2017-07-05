(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.04658651984029926751418315689079463481903076171875p259 {+ 209807033393260 259 (9.69492e+077)}
; 1.04658651984029926751418315689079463481903076171875p259 | == 1.04658651984029926751418315689079463481903076171875p259
; [HW: 1.04658651984029926751418315689079463481903076171875p259] 

; mpf : + 209807033393260 259
; mpfd: + 209807033393260 259 (9.69492e+077) class: Pos. norm. non-zero
; hwf : + 209807033393260 259 (9.69492e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000010 #b0000101111101101000110000001101100100110000001101100)))
(assert (= r (fp #b0 #b10100000010 #b0000101111101101000110000001101100100110000001101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
