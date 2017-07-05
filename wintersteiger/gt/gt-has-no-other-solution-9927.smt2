(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.68571458754311809258297216729260981082916259765625p-775 {+ 3088183960941700 -775 (8.48276e-234)}
; Y = 1.7237627519406164555704208396491594612598419189453125p-367 {+ 3259537659944405 -367 (5.73415e-111)}
; 1.68571458754311809258297216729260981082916259765625p-775 > 1.7237627519406164555704208396491594612598419189453125p-367 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111000 #b1010111110001010111111011011111111100011010010000100)))
(assert (= y (fp #b0 #b01010010000 #b1011100101001000100001000000010110100101110111010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
