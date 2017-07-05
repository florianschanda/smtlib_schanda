(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.484412146046948155486688847304321825504302978515625p136 {+ 2181598360430778 136 (1.29311e+041)}
; Y = -1.222507589840851505158525469596497714519500732421875p-895 {- 1002085098694366 -895 (-4.62813e-270)}
; 1.484412146046948155486688847304321825504302978515625p136 < -1.222507589840851505158525469596497714519500732421875p-895 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010000111 #b0111110000000010011011110011010100001110100010111010)))
(assert (= y (fp #b1 #b00010000000 #b0011100011110110010000011110010101111010011011011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
