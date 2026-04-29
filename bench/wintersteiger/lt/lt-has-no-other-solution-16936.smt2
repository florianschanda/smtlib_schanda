(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1070476650806231333490359247662127017974853515625p-428 {+ 482099824567976 -428 (1.59709e-129)}
; Y = 1.3246506679016467611376128843403421342372894287109375p-912 {+ 1462096626987439 -912 (3.826e-275)}
; 1.1070476650806231333490359247662127017974853515625p-428 < 1.3246506679016467611376128843403421342372894287109375p-912 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010011 #b0001101101100111011110011100110010100010011010101000)))
(assert (= y (fp #b0 #b00001101111 #b0101001100011100010011100110000101000011000110101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
