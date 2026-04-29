(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.30353852493105382137628112104721367359161376953125p-520 {- 1367015987772084 -520 (-3.79775e-157)}
; Y = 1.12527584363804411538012573146261274814605712890625p170 {+ 564192242726820 170 (1.68406e+051)}
; -1.30353852493105382137628112104721367359161376953125p-520 > 1.12527584363804411538012573146261274814605712890625p170 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110111 #b0100110110110100101100110110010110100111101010110100)))
(assert (= y (fp #b0 #b10010101001 #b0010000000010010000100111110001101100111011110100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
