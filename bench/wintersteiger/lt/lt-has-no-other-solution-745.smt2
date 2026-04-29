(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.474183805829216264982051143306307494640350341796875p-86 {+ 2135534011237582 -86 (1.90534e-026)}
; Y = 1.543544201518469716205572694889269769191741943359375p73 {+ 2447905463417974 73 (1.45784e+022)}
; 1.474183805829216264982051143306307494640350341796875p-86 < 1.543544201518469716205572694889269769191741943359375p73 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101001 #b0111100101100100000111000010001001010100010011001110)))
(assert (= y (fp #b0 #b10001001000 #b1000101100100101101101100111100101110011110001110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
