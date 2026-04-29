(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.630365133317083436992334100068546831607818603515625p863 {- 2838912179514170 863 (-1.0027e+260)}
; Y = -0.7850922321751718779836437533958815038204193115234375p-1022 {- 3535741084275575 -1023 (-1.74689e-308)}
; -1.630365133317083436992334100068546831607818603515625p863 / -0.7850922321751718779836437533958815038204193115234375p-1022 == +oo
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
(assert (= x (fp #b1 #b11101011110 #b1010000101011111100111000000000000100010101100111010)))
(assert (= y (fp #b1 #b00000000000 #b1100100011111011110011011111010110001001001101110111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
