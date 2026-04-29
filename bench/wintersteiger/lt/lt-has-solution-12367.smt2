(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4914674611845575302737643141881562769412994384765625p-458 {- 2213372675055497 -458 (-2.0039e-138)}
; Y = 1.9756726185483468594128453332814387977123260498046875p-716 {+ 4394038841329931 -716 (5.7311e-216)}
; -1.4914674611845575302737643141881562769412994384765625p-458 < 1.9756726185483468594128453332814387977123260498046875p-716 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110101 #b0111110111010000110011111100000011010101111110001001)))
(assert (= y (fp #b0 #b00100110011 #b1111100111000101101011100100010001000100100100001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
