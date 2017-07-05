(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3308517776715096392337045472231693565845489501953125p-221 {- 1490023942636277 -221 (-3.94912e-067)}
; Y = 1.366104398346017045895450792158953845500946044921875p249 {+ 1648787631969822 249 (1.23581e+075)}
; -1.3308517776715096392337045472231693565845489501953125p-221 < 1.366104398346017045895450792158953845500946044921875p249 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100010 #b0101010010110010101100111011110011101100001011110101)))
(assert (= y (fp #b0 #b10011111000 #b0101110110111001000001001001000111010001011000011110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
