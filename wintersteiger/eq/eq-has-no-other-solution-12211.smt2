(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5780588311988401617469435223028995096683502197265625p-99 {+ 2603345536785321 -99 (2.48974e-030)}
; Y = -1.44734716643443750427877603215165436267852783203125p-1013 {- 2014672532059380 -1013 (-1.64887e-305)}
; 1.5780588311988401617469435223028995096683502197265625p-99 = -1.44734716643443750427877603215165436267852783203125p-1013 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011100 #b1001001111111011101010011101111100101001101110101001)))
(assert (= y (fp #b1 #b00000001010 #b0111001010000101010110000000100111001011010011110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
