(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5786660620700201373978188712499104440212249755859375p476 {+ 2606080261510495 476 (3.08012e+143)}
; Y = -1.9995119850120055549069775224779732525348663330078125p-295 {- 4501401803252413 -295 (-3.14105e-089)}
; 1.5786660620700201373978188712499104440212249755859375p476 - -1.9995119850120055549069775224779732525348663330078125p-295 == 1.57866606207002035944242379628121852874755859375p476
; [HW: 1.57866606207002035944242379628121852874755859375p476] 

; mpf : + 2606080261510496 476
; mpfd: + 2606080261510496 476 (3.08012e+143) class: Pos. norm. non-zero
; hwf : + 2606080261510496 476 (3.08012e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011011 #b1001010000100011011101011000001111100101010101011111)))
(assert (= y (fp #b1 #b01011011000 #b1111111111100000000001000111011110010110001010111101)))
(assert (= r (fp #b0 #b10111011011 #b1001010000100011011101011000001111100101010101100000)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
