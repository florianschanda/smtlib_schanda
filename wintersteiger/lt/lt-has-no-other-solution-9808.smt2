(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.164701826189912470255194421042688190937042236328125p555 {+ 741751083056130 555 (1.37361e+167)}
; Y = -1.8342345122731316120479050368885509669780731201171875p-446 {- 3757058238612883 -446 (-1.00943e-134)}
; 1.164701826189912470255194421042688190937042236328125p555 < -1.8342345122731316120479050368885509669780731201171875p-446 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101010 #b0010101000101001111001100001110100010011110000000010)))
(assert (= y (fp #b1 #b01001000001 #b1101010110010000011001001001101101101000010110010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
