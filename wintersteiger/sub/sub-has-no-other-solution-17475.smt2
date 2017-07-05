(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4830798560104863081932080604019574820995330810546875p-950 {- 2175598259519019 -950 (-1.55836e-286)}
; Y = -1.6217539189753440442842702395864762365818023681640625p-98 {- 2800130717813505 -98 (-5.11735e-030)}
; -1.4830798560104863081932080604019574820995330810546875p-950 - -1.6217539189753440442842702395864762365818023681640625p-98 == 1.62175391897534382223966531455516815185546875p-98
; [HW: 1.62175391897534382223966531455516815185546875p-98] 

; mpf : + 2800130717813504 -98
; mpfd: + 2800130717813504 -98 (5.11735e-030) class: Pos. norm. non-zero
; hwf : + 2800130717813504 -98 (5.11735e-030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001001 #b0111101110101011000111110001011011101011111000101011)))
(assert (= y (fp #b1 #b01110011101 #b1001111100101011010000111100110000101000101100000001)))
(assert (= r (fp #b0 #b01110011101 #b1001111100101011010000111100110000101000101100000000)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
