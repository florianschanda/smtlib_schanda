(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0387291220089600596310219771112315356731414794921875p-202 {- 174420459447939 -202 (-1.61601e-061)}
; Y = -1.890292728737660521431962479255162179470062255859375p696 {- 4009522001393590 696 (-6.2145e+209)}
; Z = -1.4588545251361535459722063023946247994899749755859375p-742 {- 2066497068420447 -742 (-6.30602e-224)}
; -1.0387291220089600596310219771112315356731414794921875p-202 x -1.890292728737660521431962479255162179470062255859375p696 -1.4588545251361535459722063023946247994899749755859375p-742 == 1.9635021064615914010431652059196494519710540771484375p494
; [HW: 1.9635021064615914010431652059196494519710540771484375p494] 

; mpf : + 4339227727631111 494
; mpfd: + 4339227727631111 494 (1.00427e+149) class: Pos. norm. non-zero
; hwf : + 4339227727631111 494 (1.00427e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110101 #b0000100111101010001001101101100001101110011010000011)))
(assert (= y (fp #b1 #b11010110111 #b1110001111101010001110010110100111001011011110110110)))
(assert (= z (fp #b1 #b00100011001 #b0111010101110111011111010111101100010100110101011111)))
(assert (= r (fp #b0 #b10111101101 #b1111011010101000000100101111010011100001001100000111)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
