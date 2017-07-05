(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5831367792507666791834708419628441333770751953125p991 {- 2626214581739784 991 (-3.31317e+298)}
; Y = -1.090503722901257521726847699028439819812774658203125p554 {- 407592532733746 554 (-6.4305e+166)}
; -1.5831367792507666791834708419628441333770751953125p991 > -1.090503722901257521726847699028439819812774658203125p554 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011110 #b1001010101001000011100111011001111111010000100001000)))
(assert (= y (fp #b1 #b11000101001 #b0001011100101011010000001000001000000110111100110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
