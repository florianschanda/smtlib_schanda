(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6334520864117141325522197803365997970104217529296875p-253 {+ 2852814580320859 -253 (1.12854e-076)}
; Y = 1.6337745230810682972588665506918914616107940673828125p1010 {+ 2854266705984813 1010 (1.79262e+304)}
; 1.6334520864117141325522197803365997970104217529296875p-253 = 1.6337745230810682972588665506918914616107940673828125p1010 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000010 #b1010001000101001111010100111101010111000101001011011)))
(assert (= y (fp #b0 #b11111110001 #b1010001000111111000011000001000110101011110100101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
