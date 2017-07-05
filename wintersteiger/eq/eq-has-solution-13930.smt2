(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1346695744730939114930379219003953039646148681640625p-416 {- 606497845415169 -416 (-6.70488e-126)}
; Y = -1.4371176013561874906798720985534600913524627685546875p578 {- 1968602666584811 578 (-1.42177e+174)}
; -1.1346695744730939114930379219003953039646148681640625p-416 = -1.4371176013561874906798720985534600913524627685546875p578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011111 #b0010001001111001101101001000101000100000110100000001)))
(assert (= y (fp #b1 #b11001000001 #b0110111111100110111100000110101001010100101011101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
