(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5752764408800616902084357207058928906917572021484375 297 {+ 2590814764782471 297 (4.01112e+089)}
; 1.5752764408800616902084357207058928906917572021484375 297 I == 1.5752764408800616902084357207058928906917572021484375 297
; [HW: 1.5752764408800616902084357207058928906917572021484375 297] 

; mpf : + 2590814764782471 297
; mpfd: + 2590814764782471 297 (4.01112e+089) class: Pos. norm. non-zero
; hwf : + 2590814764782471 297 (4.01112e+089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100101000 #b1001001101000101010100010001101110111101001110000111)))
(assert (= r (fp #b0 #b10100101000 #b1001001101000101010100010001101110111101001110000111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
