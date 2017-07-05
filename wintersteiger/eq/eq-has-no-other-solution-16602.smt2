(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8182451747143082432245364543632604181766510009765625p130 {+ 3685048663941065 130 (2.47487e+039)}
; Y = 1.00924833550438552975947459344752132892608642578125p-1021 {+ 41650800331348 -1021 (4.4913e-308)}
; 1.8182451747143082432245364543632604181766510009765625p130 = 1.00924833550438552975947459344752132892608642578125p-1021 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010000001 #b1101000101111000100001000000100110000001111111001001)))
(assert (= y (fp #b0 #b00000000010 #b0000001001011110000110010101001010001000101001010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
