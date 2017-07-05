(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0425583391840385072413255329593084752559661865234375p892 {- 191665720490743 892 (-3.44236e+268)}
; Y = -1.5537551413550361179005676603992469608783721923828125p585 {- 2493891448261037 585 (-1.96757e+176)}
; -1.0425583391840385072413255329593084752559661865234375p892 * -1.5537551413550361179005676603992469608783721923828125p585 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111011 #b0000101011100101000110100111001011110111101011110111)))
(assert (= y (fp #b1 #b11001001000 #b1000110111000010111001011001111000011100100110101101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
