(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.591401132723878841801479211426340043544769287109375p-456 {+ 2663433920961750 -456 (8.55267e-138)}
; Y = -1.0785413765222122695064399522379972040653228759765625p203 {- 353718914038601 203 (-1.38652e+061)}
; 1.591401132723878841801479211426340043544769287109375p-456 < -1.0785413765222122695064399522379972040653228759765625p203 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110111 #b1001011101100110000100001000101111011101110011010110)))
(assert (= y (fp #b1 #b10011001010 #b0001010000011011010010011010001110001011101101001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
