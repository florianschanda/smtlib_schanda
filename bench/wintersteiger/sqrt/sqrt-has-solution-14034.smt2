(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5328775979769215798143022766453213989734649658203125p708 {+ 2399867351682949 708 (2.06416e+213)}
; 1.5328775979769215798143022766453213989734649658203125p708 S == 1.2380943413072049708034683135338127613067626953125p354
; [HW: 1.2380943413072049708034683135338127613067626953125p354] 

; mpf : + 1072281586790152 354
; mpfd: + 1072281586790152 354 (4.54331e+106) class: Pos. norm. non-zero
; hwf : + 1072281586790152 354 (4.54331e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000011 #b1000100001101010101010101001000000010100111110000101)))
(assert (= r (fp #b0 #b10101100001 #b0011110011110011110000000011000101000110111100001000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
