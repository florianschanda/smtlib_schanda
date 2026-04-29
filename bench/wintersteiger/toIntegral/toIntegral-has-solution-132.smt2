(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4659353100130545488610778193105943500995635986328125 522 {+ 2098386088553549 522 (2.01267e+157)}
; 1.4659353100130545488610778193105943500995635986328125 522 I == 1.4659353100130545488610778193105943500995635986328125 522
; [HW: 1.4659353100130545488610778193105943500995635986328125 522] 

; mpf : + 2098386088553549 522
; mpfd: + 2098386088553549 522 (2.01267e+157) class: Pos. norm. non-zero
; hwf : + 2098386088553549 522 (2.01267e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001001 #b0111011101000111100010010101011010001110110001001101)))
(assert (= r (fp #b0 #b11000001001 #b0111011101000111100010010101011010001110110001001101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
