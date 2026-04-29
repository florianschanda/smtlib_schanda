(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.20513164047607990170263292384333908557891845703125p1022 {- 923830779609972 1022 (-5.41614e+307)}
; Y = -1.4141806013279885068101293654763139784336090087890625p-524 {- 1865303601804817 -524 (-2.57506e-158)}
; -1.20513164047607990170263292384333908557891845703125p1022 / -1.4141806013279885068101293654763139784336090087890625p-524 == +oo
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
(assert (= x (fp #b1 #b11111111101 #b0011010010000011100000011101011100111000001101110100)))
(assert (= y (fp #b1 #b00111110011 #b0110101000000111101111010110100101010111011000010001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
