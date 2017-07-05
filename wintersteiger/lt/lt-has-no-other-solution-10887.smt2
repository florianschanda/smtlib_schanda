(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.449538158553364208813718505552969872951507568359375p180 {+ 2024539883349750 180 (2.22141e+054)}
; Y = 1.7375411406155552018759635757305659353733062744140625p10 {+ 3321590006046625 10 (1779.24)}
; 1.449538158553364208813718505552969872951507568359375p180 < 1.7375411406155552018759635757305659353733062744140625p10 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110011 #b0111001100010100111011101100100101001010011011110110)))
(assert (= y (fp #b0 #b10000001001 #b1011110011001111011111110000011001100101111110100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
