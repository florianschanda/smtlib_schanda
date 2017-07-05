(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5142235334808022972907792791374959051609039306640625p427 {- 2315856913769281 427 (-5.24805e+128)}
; Y = 1.2859190562846924965612060987041331827640533447265625p-135 {+ 1287664955341865 -135 (2.95233e-041)}
; -1.5142235334808022972907792791374959051609039306640625p427 > 1.2859190562846924965612060987041331827640533447265625p-135 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101010 #b1000001110100100001001110100101100100010001101000001)))
(assert (= y (fp #b0 #b01101111000 #b0100100100110001111111011100010000001011110000101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
