(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.370579963811821233576893064309842884540557861328125p746 {- 1668943786933890 746 (-5.07319e+224)}
; Y = -1.8256616234008962162960187924909405410289764404296875p-839 {- 3718449379482395 -839 (-4.98028e-253)}
; -1.370579963811821233576893064309842884540557861328125p746 / -1.8256616234008962162960187924909405410289764404296875p-839 == +oo
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
(assert (= x (fp #b1 #b11011101001 #b0101111011011110010101000001100100011111111010000010)))
(assert (= y (fp #b1 #b00010111000 #b1101001101011110100011110110011000010001101100011011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
