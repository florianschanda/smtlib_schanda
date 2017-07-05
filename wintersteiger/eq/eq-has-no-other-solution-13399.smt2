(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3213830746529293680424643753212876617908477783203125p998 {+ 1447380695250117 998 (3.53968e+300)}
; Y = 1.287711191743042160595678069512359797954559326171875p-679 {+ 1295736015924286 -679 (5.13395e-205)}
; 1.3213830746529293680424643753212876617908477783203125p998 = 1.287711191743042160595678069512359797954559326171875p-679 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100101 #b0101001001000110001010010100001100011111010011000101)))
(assert (= y (fp #b0 #b00101011000 #b0100100110100111011100001100111100111010110000111110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
