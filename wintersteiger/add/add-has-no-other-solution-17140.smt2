(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8424377214186389295491608208976686000823974609375p175 {- 3794002208263832 175 (-8.82352e+052)}
; Y = 1.732038655776287239262956063612364232540130615234375p981 {+ 3296809017374886 981 (3.53984e+295)}
; -1.8424377214186389295491608208976686000823974609375p175 + 1.732038655776287239262956063612364232540130615234375p981 == 1.7320386557762870172183511385810561478137969970703125p981
; [HW: 1.7320386557762870172183511385810561478137969970703125p981] 

; mpf : + 3296809017374885 981
; mpfd: + 3296809017374885 981 (3.53984e+295) class: Pos. norm. non-zero
; hwf : + 3296809017374885 981 (3.53984e+295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101110 #b1101011110101001111111111001111001101000111010011000)))
(assert (= y (fp #b0 #b11111010100 #b1011101101100110111000101010010111110111100010100110)))
(assert (= r (fp #b0 #b11111010100 #b1011101101100110111000101010010111110111100010100101)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
