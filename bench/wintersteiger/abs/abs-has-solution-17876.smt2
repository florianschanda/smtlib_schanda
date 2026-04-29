(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8693351145265089119362755809561349451541900634765625p451 {- 3915137297841673 451 (-1.08696e+136)}
; -1.8693351145265089119362755809561349451541900634765625p451 | == 1.8693351145265089119362755809561349451541900634765625p451
; [HW: 1.8693351145265089119362755809561349451541900634765625p451] 

; mpf : + 3915137297841673 451
; mpfd: + 3915137297841673 451 (1.08696e+136) class: Pos. norm. non-zero
; hwf : + 3915137297841673 451 (1.08696e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000010 #b1101111010001100101111101111111000100111111000001001)))
(assert (= r (fp #b0 #b10111000010 #b1101111010001100101111101111111000100111111000001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
