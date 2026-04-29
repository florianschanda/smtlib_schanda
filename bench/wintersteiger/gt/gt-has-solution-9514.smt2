(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.31874295148504128150079850456677377223968505859375p-906 {- 1435490637535004 -906 (-2.43772e-273)}
; Y = 1.8265611455803181240042931676725856959819793701171875p375 {+ 3722500467234451 375 (1.40567e+113)}
; -1.31874295148504128150079850456677377223968505859375p-906 > 1.8265611455803181240042931676725856959819793701171875p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110101 #b0101000110011001001000110101100001110101011100011100)))
(assert (= y (fp #b0 #b10101110110 #b1101001110011001100000101110000001101001011010010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
