(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5500601386290682182078626283328048884868621826171875p1006 {- 2477250635361235 1006 (-1.06298e+303)}
; Y = 1.6689454680226740723725242787622846662998199462890625p-522 {+ 3012662560518097 -522 (1.21558e-157)}
; -1.5500601386290682182078626283328048884868621826171875p1006 / 1.6689454680226740723725242787622846662998199462890625p-522 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101101 #b1000110011010000101111011100001000111110101111010011)))
(assert (= y (fp #b0 #b00111110101 #b1010101101000000000000101001101111110110111111010001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
