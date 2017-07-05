(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2211323186221669789830457375501282513141632080078125p-860 {+ 995891427746365 -860 (1.58842e-259)}
; Y = 1.163322015898490935370546139893122017383575439453125p131 {+ 735536969941842 131 (3.16686e+039)}
; 1.2211323186221669789830457375501282513141632080078125p-860 - 1.163322015898490935370546139893122017383575439453125p131 == -1.1633220158984907133259412148618139326572418212890625p131
; [HW: -1.1633220158984907133259412148618139326572418212890625p131] 

; mpf : - 735536969941841 131
; mpfd: - 735536969941841 131 (-3.16686e+039) class: Neg. norm. non-zero
; hwf : - 735536969941841 131 (-3.16686e+039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100011 #b0011100010011100001000001010110010010010001000111101)))
(assert (= y (fp #b0 #b10010000010 #b0010100111001111011110001011110100000000001101010010)))
(assert (= r (fp #b1 #b10010000010 #b0010100111001111011110001011110100000000001101010001)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
