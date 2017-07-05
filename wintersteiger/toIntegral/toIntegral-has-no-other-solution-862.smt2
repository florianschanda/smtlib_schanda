(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4713245617374786089470717342919670045375823974609375 573 {+ 2122657120611471 573 (4.54879e+172)}
; 1.4713245617374786089470717342919670045375823974609375 573 I == 1.4713245617374786089470717342919670045375823974609375 573
; [HW: 1.4713245617374786089470717342919670045375823974609375 573] 

; mpf : + 2122657120611471 573
; mpfd: + 2122657120611471 573 (4.54879e+172) class: Pos. norm. non-zero
; hwf : + 2122657120611471 573 (4.54879e+172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111100 #b0111100010101000101110011111101001110110110010001111)))
(assert (= r (fp #b0 #b11000111100 #b0111100010101000101110011111101001110110110010001111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
