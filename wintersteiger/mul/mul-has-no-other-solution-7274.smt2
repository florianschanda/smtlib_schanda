(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.072563374944297986957053581136278808116912841796875p-343 {- 326796388359886 -343 (-5.98597e-104)}
; Y = 1.1788428537129058693011529612704180181026458740234375p780 {+ 805436609339319 780 (7.4964e+234)}
; -1.072563374944297986957053581136278808116912841796875p-343 * 1.1788428537129058693011529612704180181026458740234375p780 == -1.264383669707281665495202105375938117504119873046875p437
; [HW: -1.264383669707281665495202105375938117504119873046875p437] 

; mpf : - 1190678196376558 437
; mpfd: - 1190678196376558 437 (-4.48732e+131) class: Neg. norm. non-zero
; hwf : - 1190678196376558 437 (-4.48732e+131) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010101000 #b0001001010010011100000110110101001000101111011001110)))
(assert (= y (fp #b0 #b11100001011 #b0010110111001000101001010010111111010001111110110111)))
(assert (= r (fp #b1 #b10110110100 #b0100001110101110101001011110111011111101001111101110)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
