(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.035714266451277953962062383652664721012115478515625p-376 {+ 160842757081786 -376 (6.72917e-114)}
; Y = 1.031247239484776923035269646788947284221649169921875p-804 {+ 140725056099998 -804 (9.66599e-243)}
; 1.035714266451277953962062383652664721012115478515625p-376 + 1.031247239484776923035269646788947284221649169921875p-804 == 1.035714266451277953962062383652664721012115478515625p-376
; [HW: 1.035714266451277953962062383652664721012115478515625p-376] 

; mpf : + 160842757081786 -376
; mpfd: + 160842757081786 -376 (6.72917e-114) class: Pos. norm. non-zero
; hwf : + 160842757081786 -376 (6.72917e-114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010000111 #b0000100100100100100100011111011001101000101010111010)))
(assert (= y (fp #b0 #b00011011011 #b0000011111111111110100011010111110101101011010011110)))
(assert (= r (fp #b0 #b01010000111 #b0000100100100100100100011111011001101000101010111010)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
