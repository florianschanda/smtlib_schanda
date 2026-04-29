(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.63991439955032181075011976645328104496002197265625p-508 {+ 2881918251363844 -508 (1.95697e-153)}
; Y = -1.8336369556727323271161367301829159259796142578125p713 {- 3754367082929992 713 (-7.90133e+214)}
; 1.63991439955032181075011976645328104496002197265625p-508 = -1.8336369556727323271161367301829159259796142578125p713 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000011 #b1010001111010001011011100001101001001110111000000100)))
(assert (= y (fp #b1 #b11011001000 #b1101010101101001001110110100010101011001111101001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
