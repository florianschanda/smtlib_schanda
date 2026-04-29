(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2056030221751452558009987114928662776947021484375p526 {+ 925953694054232 526 (2.64839e+158)}
; 1.2056030221751452558009987114928662776947021484375p526 | == 1.2056030221751452558009987114928662776947021484375p526
; [HW: 1.2056030221751452558009987114928662776947021484375p526] 

; mpf : + 925953694054232 526
; mpfd: + 925953694054232 526 (2.64839e+158) class: Pos. norm. non-zero
; hwf : + 925953694054232 526 (2.64839e+158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001101 #b0011010010100010011001100101000000110011011101011000)))
(assert (= r (fp #b0 #b11000001101 #b0011010010100010011001100101000000110011011101011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
