(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.45316235068321741863428542274050414562225341796875p453 {- 2040861793675276 453 (-3.37989e+136)}
; Y = -1.843275498083503993740350779262371361255645751953125p-807 {- 3797775218939538 -807 (-2.15965e-243)}
; -1.45316235068321741863428542274050414562225341796875p453 / -1.843275498083503993740350779262371361255645751953125p-807 == +oo
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
(assert (= x (fp #b1 #b10111000100 #b0111010000000010011100101010001111110110100000001100)))
(assert (= y (fp #b1 #b00011011000 #b1101011111100000111001110010110111001001011010010010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
