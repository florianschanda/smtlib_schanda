(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4365947667838334655954213303630240261554718017578125p420 {- 1966248028999581 420 (-3.88985e+126)}
; Y = -1.096696003740515124036392080597579479217529296875p1010 {- 435480086414000 1010 (-1.20332e+304)}
; -1.4365947667838334655954213303630240261554718017578125p420 = -1.096696003740515124036392080597579479217529296875p1010 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100011 #b0110111111000100101011001011010011110000111110011101)))
(assert (= y (fp #b1 #b11111110001 #b0001100011000001000100011011110110111000001010110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
