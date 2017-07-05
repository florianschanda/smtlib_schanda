(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5580660922225728626244745100848376750946044921875p-204 {+ 2513306244981688 -204 (6.05992e-062)}
; Y = 1.9095855186772638933945245298673398792743682861328125p485 {+ 4096409002976525 485 (1.9076e+146)}
; 1.5580660922225728626244745100848376750946044921875p-204 < 1.9095855186772638933945245298673398792743682861328125p485 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110011 #b1000111011011101011010110101111100011010001110111000)))
(assert (= y (fp #b0 #b10111100100 #b1110100011011010100110001011011110100010010100001101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
