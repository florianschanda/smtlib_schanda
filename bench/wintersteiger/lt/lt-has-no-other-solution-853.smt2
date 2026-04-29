(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8105794505456624943207089017960242927074432373046875p-337 {+ 3650525311431627 -337 (6.46709e-102)}
; Y = 0.440089368277743364643583845463581383228302001953125p-1022 {+ 1981986314985362 -1023 (9.79231e-309)}
; 1.8105794505456624943207089017960242927074432373046875p-337 < 0.440089368277743364643583845463581383228302001953125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101110 #b1100111110000010001000101000011011100111001111001011)))
(assert (= y (fp #b0 #b00000000000 #b0111000010101001101100100110010000010001111110010010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
