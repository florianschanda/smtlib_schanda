(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.55779774443844498676980947493575513362884521484375p-896 {- 2512097714001084 -896 (-2.94873e-270)}
; Y = 0.5892987809732572745957668303162790834903717041015625p-1022 {+ 2653965770401049 -1023 (1.31123e-308)}
; -1.55779774443844498676980947493575513362884521484375p-896 = 0.5892987809732572745957668303162790834903717041015625p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111111 #b1000111011001011110101010011111000100101010010111100)))
(assert (= y (fp #b0 #b00000000000 #b1001011011011100010010001110111111011010010100011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
