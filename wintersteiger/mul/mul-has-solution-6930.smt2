(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3021238330101969626895197507110424339771270751953125p-141 {+ 1360644781764469 -141 (4.67114e-043)}
; Y = -1.1728862182999553187556784905609674751758575439453125p-285 {- 778610308313173 -285 (-1.88672e-086)}
; 1.3021238330101969626895197507110424339771270751953125p-141 * -1.1728862182999553187556784905609674751758575439453125p-285 == -1.5272430982575724289773688724380917847156524658203125p-426
; [HW: -1.5272430982575724289773688724380917847156524658203125p-426] 

; mpf : - 2374491820846469 -426
; mpfd: - 2374491820846469 -426 (-8.81313e-129) class: Neg. norm. non-zero
; hwf : - 2374491820846469 -426 (-8.81313e-129) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110010 #b0100110101010111111111001100111000011110111101110101)))
(assert (= y (fp #b1 #b01011100010 #b0010110001000010010001010110110110000111000001010101)))
(assert (= r (fp #b1 #b01001010101 #b1000011011111001011001110101100000001110110110000101)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
