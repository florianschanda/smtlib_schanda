(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.930715295163969447145291269407607614994049072265625p-814 {+ 4191569056488474 -814 (1.76727e-245)}
; Y = -1.4760163540241830748556139951688237488269805908203125p875 {- 2143787074605573 875 (-3.71824e+263)}
; 1.930715295163969447145291269407607614994049072265625p-814 / -1.4760163540241830748556139951688237488269805908203125p875 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010001 #b1110111001000011010110111000101010011101110000011010)))
(assert (= y (fp #b1 #b11101101010 #b0111100111011100001101010011000011100101001000000101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
