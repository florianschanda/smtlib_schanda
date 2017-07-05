(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.617857815825211265092775647644884884357452392578125p458 {+ 2782584229118370 458 (1.20414e+138)}
; Y = -1.1199100698354216287810913854627870023250579833984375p1016 {- 540026945828775 1016 (-7.86428e+305)}
; 1.617857815825211265092775647644884884357452392578125p458 > -1.1199100698354216287810913854627870023250579833984375p1016 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001001 #b1001111000101011111011100000100010001100000110100010)))
(assert (= y (fp #b1 #b11111110111 #b0001111010110010011011010010010001100111011110100111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
