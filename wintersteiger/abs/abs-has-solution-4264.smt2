(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0986768889491986822548597046989016234874725341796875p-697 {+ 444401200301691 -697 (1.67095e-210)}
; 1.0986768889491986822548597046989016234874725341796875p-697 | == 1.0986768889491986822548597046989016234874725341796875p-697
; [HW: 1.0986768889491986822548597046989016234874725341796875p-697] 

; mpf : + 444401200301691 -697
; mpfd: + 444401200301691 -697 (1.67095e-210) class: Pos. norm. non-zero
; hwf : + 444401200301691 -697 (1.67095e-210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000110 #b0001100101000010111000110111101011101000011001111011)))
(assert (= r (fp #b0 #b00101000110 #b0001100101000010111000110111101011101000011001111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
