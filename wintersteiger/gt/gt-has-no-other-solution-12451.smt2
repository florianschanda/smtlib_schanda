(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4800571628259771017610546550713479518890380859375p874 {- 2161985259619608 874 (-1.86421e+263)}
; Y = 1.1586168766320439349470916567952372133731842041015625p689 {+ 714346906494745 689 (2.97582e+207)}
; -1.4800571628259771017610546550713479518890380859375p874 > 1.1586168766320439349470916567952372133731842041015625p689 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101101001 #b0111101011100101000001101011011010001100010100011000)))
(assert (= y (fp #b0 #b11010110000 #b0010100010011011000111011001100110111010011100011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
