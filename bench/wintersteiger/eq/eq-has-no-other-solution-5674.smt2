(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0870740412813437725247922571725212037563323974609375p-877 {+ 392146619868303 -877 (1.07883e-264)}
; Y = 1.116152449454126394101649566437117755413055419921875p691 {+ 523104128079774 691 (1.1467e+208)}
; 1.0870740412813437725247922571725212037563323974609375p-877 = 1.116152449454126394101649566437117755413055419921875p691 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010010 #b0001011001001010011110111111111110100010010010001111)))
(assert (= y (fp #b0 #b11010110010 #b0001110110111100001010101011101111000001011110011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
