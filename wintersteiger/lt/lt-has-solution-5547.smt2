(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.622505188183735125306839108816348016262054443359375p952 {+ 2803514133540470 952 (6.17649e+286)}
; Y = -1.94448553212637786913319359882734715938568115234375p-312 {- 4253584690541180 -312 (-2.33048e-094)}
; 1.622505188183735125306839108816348016262054443359375p952 < -1.94448553212637786913319359882734715938568115234375p-312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110111 #b1001111101011100100000000000000011010110111001110110)))
(assert (= y (fp #b1 #b01011000111 #b1111000111001001110011011100100000000111001001111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
