(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0187482529647924334170738802640698850154876708984375p-425 {- 84434625066087 -425 (-1.17576e-128)}
; -1.0187482529647924334170738802640698850154876708984375p-425 | == 1.0187482529647924334170738802640698850154876708984375p-425
; [HW: 1.0187482529647924334170738802640698850154876708984375p-425] 

; mpf : + 84434625066087 -425
; mpfd: + 84434625066087 -425 (1.17576e-128) class: Pos. norm. non-zero
; hwf : + 84434625066087 -425 (1.17576e-128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010110 #b0000010011001100101011110111110101010111010001100111)))
(assert (= r (fp #b0 #b01001010110 #b0000010011001100101011110111110101010111010001100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
