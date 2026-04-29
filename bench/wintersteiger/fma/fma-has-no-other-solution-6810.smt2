(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3979690730959035693814485057373531162738800048828125p622 {- 1792293369299693 622 (-2.43307e+187)}
; Y = -1.0381113058268047755205998328165151178836822509765625p127 {- 171638062720201 127 (-1.76625e+038)}
; Z = +oo {+ 0 1024 (1.#INF)}
; -1.3979690730959035693814485057373531162738800048828125p622 x -1.0381113058268047755205998328165151178836822509765625p127 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101101 #b0110010111100001010011010001100111000100001011101101)))
(assert (= y (fp #b1 #b10001111110 #b0000100111000001101010011001110000100010010011001001)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
