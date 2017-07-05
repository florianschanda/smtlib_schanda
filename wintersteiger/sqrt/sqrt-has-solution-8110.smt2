(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3615661391638258503888891937094740569591522216796875p916 {+ 1628349129607995 916 (7.54249e+275)}
; 1.3615661391638258503888891937094740569591522216796875p916 S == 1.1668616623935441634074550165678374469280242919921875p458
; [HW: 1.1668616623935441634074550165678374469280242919921875p458] 

; mpf : + 751478120577987 458
; mpfd: + 751478120577987 458 (8.68475e+137) class: Pos. norm. non-zero
; hwf : + 751478120577987 458 (8.68475e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010011 #b0101110010001111100110010011011100001100101100111011)))
(assert (= r (fp #b0 #b10111001001 #b0010101010110111011100100010011011101111101111000011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
