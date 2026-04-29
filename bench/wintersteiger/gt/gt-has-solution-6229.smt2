(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2216125629223271165102460145135410130023956298828125p-1 {+ 998054255797613 -1 (0.610806)}
; Y = 1.1411860253281524979485084259067662060260772705078125p274 {+ 635845331057789 274 (3.46398e+082)}
; 1.2216125629223271165102460145135410130023956298828125p-1 > 1.1411860253281524979485084259067662060260772705078125p274 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111110 #b0011100010111011100110011101011000100010010101101101)))
(assert (= y (fp #b0 #b10100010001 #b0010010000100100110001000111000101101111110001111101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
