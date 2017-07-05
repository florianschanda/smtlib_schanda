(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6010882800610095610949201727635227143764495849609375p-732 {- 2707060954099535 -732 (-7.08694e-221)}
; Y = -1.321419121746694624874862711294554173946380615234375p826 {- 1447543036928166 826 (-5.91312e+248)}
; -1.6010882800610095610949201727635227143764495849609375p-732 < -1.321419121746694624874862711294554173946380615234375p826 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100011 #b1001100111100000111010111110100011011110111101001111)))
(assert (= y (fp #b1 #b11100111001 #b0101001001001000100001100000100000110110000010100110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
