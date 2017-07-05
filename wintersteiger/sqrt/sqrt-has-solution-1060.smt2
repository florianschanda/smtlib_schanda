(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5438478010523686290156319955713115632534027099609375p-200 {+ 2449272754165711 -200 (9.60739e-061)}
; 1.5438478010523686290156319955713115632534027099609375p-200 S == 1.2425167206329132962849826071760617196559906005859375p-100
; [HW: 1.2425167206329132962849826071760617196559906005859375p-100] 

; mpf : + 1092198212673503 -100
; mpfd: + 1092198212673503 -100 (9.80173e-031) class: Pos. norm. non-zero
; hwf : + 1092198212673503 -100 (9.80173e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100110111 #b1000101100111001100111000000011110000101011111001111)))
(assert (= r (fp #b0 #b01110011011 #b0011111000010101100100110110011111011001111111011111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
