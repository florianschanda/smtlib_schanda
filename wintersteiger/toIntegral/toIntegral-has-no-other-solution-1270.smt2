(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9472956765742537310615034584770910441875457763671875 479 {+ 4266240456029491 479 (3.03948e+144)}
; 1.9472956765742537310615034584770910441875457763671875 479 I == 1.9472956765742537310615034584770910441875457763671875 479
; [HW: 1.9472956765742537310615034584770910441875457763671875 479] 

; mpf : + 4266240456029491 479
; mpfd: + 4266240456029491 479 (3.03948e+144) class: Pos. norm. non-zero
; hwf : + 4266240456029491 479 (3.03948e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011110 #b1111001010000001111110000010111010000111010100110011)))
(assert (= r (fp #b0 #b10111011110 #b1111001010000001111110000010111010000111010100110011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
