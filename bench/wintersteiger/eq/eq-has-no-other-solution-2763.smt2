(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.610821152482776685843646191642619669437408447265625p-954 {- 2750893914711450 -954 (-1.05787e-287)}
; Y = 1.1740327104621191001143643006798811256885528564453125p-289 {+ 783773649987477 -289 (1.18035e-087)}
; -1.610821152482776685843646191642619669437408447265625p-954 = 1.1740327104621191001143643006798811256885528564453125p-289 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000101 #b1001110001011110110001100110100110011110010110011010)))
(assert (= y (fp #b0 #b01011011110 #b0010110010001101011010000101111111011110011110010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
