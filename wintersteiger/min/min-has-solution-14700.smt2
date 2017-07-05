(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8323435917989441268360906178713776171207427978515625p317 {- 3748542289869945 317 (-4.89233e+095)}
; Y = -1.305171891489838476019258450833149254322052001953125p939 {- 1374372016797586 939 (-6.06504e+282)}
; -1.8323435917989441268360906178713776171207427978515625p317 m -1.305171891489838476019258450833149254322052001953125p939 == -1.305171891489838476019258450833149254322052001953125p939
; [HW: -1.305171891489838476019258450833149254322052001953125p939] 

; mpf : - 1374372016797586 939
; mpfd: - 1374372016797586 939 (-6.06504e+282) class: Neg. norm. non-zero
; hwf : - 1374372016797586 939 (-6.06504e+282) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111100 #b1101010100010100011110000011100111001111110001111001)))
(assert (= y (fp #b1 #b11110101010 #b0100111000011111101111101011110110011011011110010010)))
(assert (= r (fp #b1 #b11110101010 #b0100111000011111101111101011110110011011011110010010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
