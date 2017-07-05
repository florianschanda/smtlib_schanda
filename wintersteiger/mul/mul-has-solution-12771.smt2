(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3077969975594907481308837304823100566864013671875p111 {- 1386194443514680 111 (-3.39524e+033)}
; Y = 1.2039525983087404625848648720420897006988525390625p-948 {+ 918520845744488 -948 (5.06027e-286)}
; -1.3077969975594907481308837304823100566864013671875p111 * 1.2039525983087404625848648720420897006988525390625p-948 == -1.5745255932721182734468357011792249977588653564453125p-837
; [HW: -1.5745255932721182734468357011792249977588653564453125p-837] 

; mpf : - 2587433247775125 -837
; mpfd: - 2587433247775125 -837 (-1.71808e-252) class: Neg. norm. non-zero
; hwf : - 2587433247775125 -837 (-1.71808e-252) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101110 #b0100111011001011110010001011011001010011001100111000)))
(assert (= y (fp #b0 #b00001001011 #b0011010000110110001111001100101110101011100101101000)))
(assert (= r (fp #b1 #b00010111010 #b1001001100010100000110111111100111010001100110010101)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
