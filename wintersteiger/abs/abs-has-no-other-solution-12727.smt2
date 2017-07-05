(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1065290371943421465772416922845877707004547119140625p-691 {+ 479764132212577 -691 (1.07705e-208)}
; 1.1065290371943421465772416922845877707004547119140625p-691 | == 1.1065290371943421465772416922845877707004547119140625p-691
; [HW: 1.1065290371943421465772416922845877707004547119140625p-691] 

; mpf : + 479764132212577 -691
; mpfd: + 479764132212577 -691 (1.07705e-208) class: Pos. norm. non-zero
; hwf : + 479764132212577 -691 (1.07705e-208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001100 #b0001101101000101011111001010101011010010111101100001)))
(assert (= r (fp #b0 #b00101001100 #b0001101101000101011111001010101011010010111101100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
