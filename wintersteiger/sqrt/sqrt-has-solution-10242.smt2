(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.00555580245909848002838771208189427852630615234375p275 {+ 25021109884540 275 (6.10457e+082)}
; 1.00555580245909848002838771208189427852630615234375p275 S == 1.4181366665163823714834734346368350088596343994140625p137
; [HW: 1.4181366665163823714834734346368350088596343994140625p137] 

; mpf : + 1883120135513121 137
; mpfd: + 1883120135513121 137 (2.47074e+041) class: Pos. norm. non-zero
; hwf : + 1883120135513121 137 (2.47074e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010010 #b0000000101101100000110101110010111011101011001111100)))
(assert (= r (fp #b0 #b10010001000 #b0110101100001011000000010010101111110010010000100001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
