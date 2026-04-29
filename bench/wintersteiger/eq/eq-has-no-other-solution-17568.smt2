(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.951300540930596572053445925121195614337921142578125p-448 {- 4284276761652386 -448 (-2.68464e-135)}
; Y = -1.572739611981362362058689541299827396869659423828125p-2 {- 2579389903099586 -2 (-0.393185)}
; -1.951300540930596572053445925121195614337921142578125p-448 = -1.572739611981362362058689541299827396869659423828125p-2 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111111 #b1111001110001000011011101010011111110110110010100010)))
(assert (= y (fp #b1 #b01111111101 #b1001001010011111000100000010111010010101011011000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
