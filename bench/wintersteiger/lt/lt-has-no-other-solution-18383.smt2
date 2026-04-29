(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.963018113269695330558306523016653954982757568359375p-449 {+ 4337048016072438 -449 (1.35038e-135)}
; Y = -1.5634833161658303612995268849772401154041290283203125p-447 {- 2537703252713925 -447 (-4.30215e-135)}
; 1.963018113269695330558306523016653954982757568359375p-449 < -1.5634833161658303612995268849772401154041290283203125p-447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111110 #b1111011010001000010110101110010111110010111011110110)))
(assert (= y (fp #b1 #b01001000000 #b1001000001000000011100010100111011000110000111000101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
