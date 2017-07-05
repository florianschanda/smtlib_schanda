(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.85405630479579119906929918215610086917877197265625p-73 {- 3846327656031748 -73 (-1.96306e-022)}
; Y = -1.4212059591701733385349371019401587545871734619140625p-910 {- 1896943000765025 -910 (-1.64195e-274)}
; -1.85405630479579119906929918215610086917877197265625p-73 < -1.4212059591701733385349371019401587545871734619140625p-910 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110110 #b1101101010100011011011110001101000001010011000000100)))
(assert (= y (fp #b1 #b00001110001 #b0110101111010100001001110101101110000100001001100001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
