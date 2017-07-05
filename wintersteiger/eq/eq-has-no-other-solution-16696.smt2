(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.254089033692377785911276077968068420886993408203125p837 {- 1144315277455922 837 (-1.1493e+252)}
; Y = -1.408246869721130334340841727680526673793792724609375p566 {- 1838580450351254 566 (-3.40139e+170)}
; -1.254089033692377785911276077968068420886993408203125p837 = -1.408246869721130334340841727680526673793792724609375p566 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000100 #b0100000100001011111110101001100111111011001000110010)))
(assert (= y (fp #b1 #b11000110101 #b0110100010000010110111011110101000100101100010010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
