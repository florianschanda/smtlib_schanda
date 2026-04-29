(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5018531876351610687692073042853735387325286865234375p-621 {+ 2260145828828407 -621 (1.72584e-187)}
; Y = 1.9341321001953308833520850384957157075405120849609375p169 {+ 4206956978354511 169 (1.44729e+051)}
; 1.5018531876351610687692073042853735387325286865234375p-621 > 1.9341321001953308833520850384957157075405120849609375p169 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010010 #b1000000001111001011100110101010001001001010011110111)))
(assert (= y (fp #b0 #b10010101000 #b1110111100100011010010000000010001111011100101001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
