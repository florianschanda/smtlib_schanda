(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4751330623402936215171621370245702564716339111328125p583 {+ 2139809082507149 583 (4.67002e+175)}
; Y = -1.6196608908735410370383078770828433334827423095703125p-301 {- 2790704557234149 -301 (-3.97553e-091)}
; 1.4751330623402936215171621370245702564716339111328125p583 > -1.6196608908735410370383078770828433334827423095703125p-301 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000110 #b0111100110100010010100100000001111111111111110001101)))
(assert (= y (fp #b1 #b01011010010 #b1001111010100010000110001001110011101001011111100101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
