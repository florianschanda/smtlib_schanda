(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.68924250782369878010058528161607682704925537109375p-4 {- 3104072301402716 -4 (-0.105578)}
; Y = 1.7223852665166388131723351762047968804836273193359375p450 {+ 3253334017102271 450 (5.00759e+135)}
; -1.68924250782369878010058528161607682704925537109375p-4 = 1.7223852665166388131723351762047968804836273193359375p450 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111011 #b1011000001110010001100100110111000011101101001011100)))
(assert (= y (fp #b0 #b10111000001 #b1011100011101110001111011010011011001101000110111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
