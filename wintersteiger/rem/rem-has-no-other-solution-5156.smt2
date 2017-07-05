(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.627330255469699782366888030082918703556060791015625p-834 {- 2825244304771578 -834 (-1.42056e-251)}
; Y = 1.6939588284889295355384319918812252581119537353515625p113 {+ 3125312721393209 113 (1.75911e+034)}
; -1.627330255469699782366888030082918703556060791015625p-834 % 1.6939588284889295355384319918812252581119537353515625p113 == -1.627330255469699782366888030082918703556060791015625p-834
; [HW: -1.627330255469699782366888030082918703556060791015625p-834] 

; mpf : - 2825244304771578 -834
; mpfd: - 2825244304771578 -834 (-1.42056e-251) class: Neg. norm. non-zero
; hwf : - 2825244304771578 -834 (-1.42056e-251) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111101 #b1010000010011000101101110011001100001000100111111010)))
(assert (= y (fp #b0 #b10001110000 #b1011000110100111010010010010100100100001011000111001)))
(assert (= r (fp #b1 #b00010111101 #xa098b733089fa)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
