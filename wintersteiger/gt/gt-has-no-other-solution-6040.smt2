(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9595190622157481197262995920027606189250946044921875p279 {+ 4321289691049731 279 (1.90335e+084)}
; Y = -1.7416440860174662308423876311280764639377593994140625p122 {- 3340068029429793 122 (-9.26017e+036)}
; 1.9595190622157481197262995920027606189250946044921875p279 > -1.7416440860174662308423876311280764639377593994140625p122 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010110 #b1111010110100011000010101001000000011010111100000011)))
(assert (= y (fp #b1 #b10001111001 #b1011110111011100011000110000011010110111100000100001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
