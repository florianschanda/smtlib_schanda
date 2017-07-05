(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4500739256060966031469661174924112856388092041015625p187 {- 2026952763648793 187 (-2.84446e+056)}
; Y = 1.9406455826131241426679707728908397257328033447265625p-905 {+ 4236291095344169 -905 (7.17464e-273)}
; -1.4500739256060966031469661174924112856388092041015625p187 / 1.9406455826131241426679707728908397257328033447265625p-905 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111010 #b0111001100111000000010110111011101000010101100011001)))
(assert (= y (fp #b0 #b00001110110 #b1111000011001110001001100001111001110011010000101001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
