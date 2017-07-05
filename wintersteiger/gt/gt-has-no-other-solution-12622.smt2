(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.379646472697352965752770614926703274250030517578125p-611 {+ 1709775712972322 -611 (1.62346e-184)}
; Y = -1.492412332962010257375595756457187235355377197265625p228 {- 2217627999240346 228 (-6.43766e+068)}
; 1.379646472697352965752770614926703274250030517578125p-611 > -1.492412332962010257375595756457187235355377197265625p228 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011100 #b0110000100110000100000101110000001000110111000100010)))
(assert (= y (fp #b1 #b10011100011 #b0111111000001110101111000001001000111000000010011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
