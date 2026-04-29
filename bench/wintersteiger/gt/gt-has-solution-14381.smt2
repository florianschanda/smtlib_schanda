(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.88048479388297007375285829766653478145599365234375p599 {- 3965350989636732 599 (-3.90155e+180)}
; Y = 1.5072839598705980446169405695400200784206390380859375p635 {+ 2284603852644255 635 (2.14903e+191)}
; -1.88048479388297007375285829766653478145599365234375p599 > 1.5072839598705980446169405695400200784206390380859375p635 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010110 #b1110000101100111011100111001001001011010010001111100)))
(assert (= y (fp #b0 #b11001111010 #b1000000111011101010111001001000101101101111110011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
