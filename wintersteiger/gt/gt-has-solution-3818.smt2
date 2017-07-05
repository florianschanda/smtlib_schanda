(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6466117741995078826988674336462281644344329833984375p808 {+ 2912080545338279 808 (2.81079e+243)}
; Y = -1.5432659441743463712981565549853257834911346435546875p823 {- 2446652303746667 823 (-8.63231e+247)}
; 1.6466117741995078826988674336462281644344329833984375p808 > -1.5432659441743463712981565549853257834911346435546875p823 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100111 #b1010010110001000010110010110011101100101001110100111)))
(assert (= y (fp #b1 #b11100110110 #b1000101100010011011110100001011101000010011001101011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
