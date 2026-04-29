(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0011506594180303864050074480473995208740234375p-444 {- 5182109326272 -444 (-2.20385e-134)}
; Y = 1.769212756913544293269069385132752358913421630859375p-296 {+ 3464226285404470 -296 (1.38964e-089)}
; -1.0011506594180303864050074480473995208740234375p-444 < 1.769212756913544293269069385132752358913421630859375p-296 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001000011 #b0000000001001011011010001101110010010001101111000000)))
(assert (= y (fp #b0 #b01011010111 #b1100010011101011001000001001001010011100000100110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
