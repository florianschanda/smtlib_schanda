(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.51434797161685796851315899402834475040435791015625p-973 {- 2316417333312452 -973 (-1.89688e-293)}
; -1.51434797161685796851315899402834475040435791015625p-973 | == 1.51434797161685796851315899402834475040435791015625p-973
; [HW: 1.51434797161685796851315899402834475040435791015625p-973] 

; mpf : + 2316417333312452 -973
; mpfd: + 2316417333312452 -973 (1.89688e-293) class: Pos. norm. non-zero
; hwf : + 2316417333312452 -973 (1.89688e-293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110010 #b1000001110101100010011110000010011011011101111000100)))
(assert (= r (fp #b0 #b00000110010 #b1000001110101100010011110000010011011011101111000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
