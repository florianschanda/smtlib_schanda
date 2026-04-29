(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9530347300326642567824819707311689853668212890625p-693 {+ 4292086855046248 -693 (4.75251e-209)}
; 1.9530347300326642567824819707311689853668212890625p-693 | == 1.9530347300326642567824819707311689853668212890625p-693
; [HW: 1.9530347300326642567824819707311689853668212890625p-693] 

; mpf : + 4292086855046248 -693
; mpfd: + 4292086855046248 -693 (4.75251e-209) class: Pos. norm. non-zero
; hwf : + 4292086855046248 -693 (4.75251e-209) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001010 #b1111001111111010000101011000010101110001010001101000)))
(assert (= r (fp #b0 #b00101001010 #b1111001111111010000101011000010101110001010001101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
