(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.593716917338590999264624770148657262325286865234375p689 {+ 2673863287689638 689 (4.09334e+207)}
; Y = 1.947646729497824136245753834373317658901214599609375p-745 {+ 4267821457845270 -745 (1.05236e-224)}
; 1.593716917338590999264624770148657262325286865234375p689 / 1.947646729497824136245753834373317658901214599609375p-745 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110000 #b1001011111111101110101001111011100001101000110100110)))
(assert (= y (fp #b0 #b00100010110 #b1111001010011000111110011101111101011010110000010110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
