(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.306796770561131193488790813717059791088104248046875p140 {+ 1381689821577582 140 (1.82141e+042)}
; 1.306796770561131193488790813717059791088104248046875p140 S == 1.1431521204814043546349466851097531616687774658203125p70
; [HW: 1.1431521204814043546349466851097531616687774658203125p70] 

; mpf : + 644699836457349 70
; mpfd: + 644699836457349 70 (1.3496e+021) class: Pos. norm. non-zero
; hwf : + 644699836457349 70 (1.3496e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001011 #b0100111010001010001110111011000000010100000101101110)))
(assert (= r (fp #b0 #b10001000101 #b0010010010100101100111100000101111010010000110000101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
