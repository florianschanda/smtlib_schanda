(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4217308319114911885350238662795163691043853759765625p-469 {+ 1899306817447241 -469 (9.32716e-142)}
; Y = 1.67038531136012835531801101751625537872314453125p-23 {+ 3019147038436128 -23 (1.99125e-007)}
; 1.4217308319114911885350238662795163691043853759765625p-469 > 1.67038531136012835531801101751625537872314453125p-23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101010 #b0110101111110110100011010100001011000110010101001001)))
(assert (= y (fp #b0 #b01111101000 #b1010101110011110010111110010110000000010101100100000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
