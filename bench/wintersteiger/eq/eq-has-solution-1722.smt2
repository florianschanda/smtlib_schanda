(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7079272781456411589573463061242364346981048583984375p159 {+ 3188221026062119 159 (1.24807e+048)}
; Y = -1.438031597239247449948607027181424200534820556640625p-961 {- 1972718938103178 -961 (-7.37807e-290)}
; 1.7079272781456411589573463061242364346981048583984375p159 = -1.438031597239247449948607027181424200534820556640625p-961 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010011110 #b1011010100111010101110001101101110010100111100100111)))
(assert (= y (fp #b1 #b00000111110 #b0111000000100010110101101011100011000001110110001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
