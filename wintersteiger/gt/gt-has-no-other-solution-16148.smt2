(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7335389921439106064582347244140692055225372314453125p146 {+ 3303565931681045 146 (1.54637e+044)}
; Y = -1.7742938457143135888571805480751208961009979248046875p955 {- 3487109475034251 955 (-5.40345e+287)}
; 1.7335389921439106064582347244140692055225372314453125p146 > -1.7742938457143135888571805480751208961009979248046875p955 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010001 #b1011101111001001001101100001110110011001010100010101)))
(assert (= y (fp #b1 #b11110111010 #b1100011000111000000111110001100011010110010010001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
