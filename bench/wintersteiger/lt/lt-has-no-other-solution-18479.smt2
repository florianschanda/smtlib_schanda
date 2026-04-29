(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.763330920047575745002177427522838115692138671875p-394 {+ 3437736847086640 -394 (4.37034e-119)}
; Y = -1.6383119075553043142434717083233408629894256591796875p-459 {- 2874701269012219 -459 (-1.1006e-138)}
; 1.763330920047575745002177427522838115692138671875p-394 < -1.6383119075553043142434717083233408629894256591796875p-459 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110101 #b1100001101101001101001111011100110100001010000110000)))
(assert (= y (fp #b1 #b01000110100 #b1010001101101000011010001011111110011000111011111011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
