(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.471554201641507741982195511809550225734710693359375p193 {+ 2123691326797686 193 (1.84742e+058)}
; Y = 1.40726711008337712627280779997818171977996826171875p994 {+ 1834168005211756 994 (2.35609e+299)}
; 1.471554201641507741982195511809550225734710693359375p193 > 1.40726711008337712627280779997818171977996826171875p994 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000000 #b0111100010110111110001101011001001010111011101110110)))
(assert (= y (fp #b0 #b11111100001 #b0110100001000010101010000100011010001011011001101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
