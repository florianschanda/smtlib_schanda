(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6454267674462972337323662941344082355499267578125p311 {+ 2906743749366088 311 (6.86447e+093)}
; 1.6454267674462972337323662941344082355499267578125p311 | == 1.6454267674462972337323662941344082355499267578125p311
; [HW: 1.6454267674462972337323662941344082355499267578125p311] 

; mpf : + 2906743749366088 311
; mpfd: + 2906743749366088 311 (6.86447e+093) class: Pos. norm. non-zero
; hwf : + 2906743749366088 311 (6.86447e+093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100110110 #b1010010100111010101100000100101000100101000101001000)))
(assert (= r (fp #b0 #b10100110110 #b1010010100111010101100000100101000100101000101001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
