(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6656781463186647318508448734064586460590362548828125p250 {- 2997947851709421 250 (-3.01363e+075)}
; -1.6656781463186647318508448734064586460590362548828125p250 | == 1.6656781463186647318508448734064586460590362548828125p250
; [HW: 1.6656781463186647318508448734064586460590362548828125p250] 

; mpf : + 2997947851709421 250
; mpfd: + 2997947851709421 250 (3.01363e+075) class: Pos. norm. non-zero
; hwf : + 2997947851709421 250 (3.01363e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111001 #b1010101001101001111000100000110000011001101111101101)))
(assert (= r (fp #b0 #b10011111001 #b1010101001101001111000100000110000011001101111101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
