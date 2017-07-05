(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1437147819340249821351562786730937659740447998046875p-678 {- 647233838365707 -678 (-9.1197e-205)}
; Y = -0.8384457129986031542756563794682733714580535888671875p-1022 {- 3776023800630899 -1023 (-1.8656e-308)}
; -1.1437147819340249821351562786730937659740447998046875p-678 * -0.8384457129986031542756563794682733714580535888671875p-1022 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101011001 #b0010010011001010011111011111000001011011110000001011)))
(assert (= y (fp #b1 #b00000000000 #b1101011010100100011000001101010011001100111001110011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
