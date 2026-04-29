(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.75224255070785961407864306238479912281036376953125p-526 {+ 3387799271060148 -526 (7.97658e-159)}
; Y = -1.258946790296206597048467301647178828716278076171875p637 {- 1166192668286782 637 (-7.17984e+191)}
; 1.75224255070785961407864306238479912281036376953125p-526 > -1.258946790296206597048467301647178828716278076171875p637 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110001 #b1100000010010010111101111100000111110011001010110100)))
(assert (= y (fp #b1 #b11001111100 #b0100001001001010010101100011101110111001111100111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
