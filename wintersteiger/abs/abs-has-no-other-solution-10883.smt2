(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6343394436018254811671113202464766800403594970703125p-390 {+ 2856810881831589 -390 (6.48103e-118)}
; 1.6343394436018254811671113202464766800403594970703125p-390 | == 1.6343394436018254811671113202464766800403594970703125p-390
; [HW: 1.6343394436018254811671113202464766800403594970703125p-390] 

; mpf : + 2856810881831589 -390
; mpfd: + 2856810881831589 -390 (6.48103e-118) class: Pos. norm. non-zero
; hwf : + 2856810881831589 -390 (6.48103e-118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111001 #b1010001001100100000100011101110011010101001010100101)))
(assert (= r (fp #b0 #b01001111001 #b1010001001100100000100011101110011010101001010100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
