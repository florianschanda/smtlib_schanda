(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.32987088048886814561910796328447759151458740234375p-227 {+ 1485606374450044 -227 (6.16596e-069)}
; Y = 1.065991460746156693772945800446905195713043212890625p-575 {+ 297199118026026 -575 (8.61998e-174)}
; 1.32987088048886814561910796328447759151458740234375p-227 < 1.065991460746156693772945800446905195713043212890625p-575 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011100 #b0101010001110010011010110000001110011010001101111100)))
(assert (= y (fp #b0 #b00111000000 #b0001000011100100110100001111110110111000010100101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
