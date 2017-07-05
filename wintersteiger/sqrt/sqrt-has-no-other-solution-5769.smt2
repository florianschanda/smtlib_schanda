(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8150159379057679842617289978079497814178466796875p862 {+ 3670505474253432 862 (5.58132e+259)}
; 1.8150159379057679842617289978079497814178466796875p862 S == 1.34722527362938393480362719856202602386474609375p431
; [HW: 1.34722527362938393480362719856202602386474609375p431] 

; mpf : + 1563763612930912 431
; mpfd: + 1563763612930912 431 (7.47082e+129) class: Pos. norm. non-zero
; hwf : + 1563763612930912 431 (7.47082e+129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011101 #b1101000010100100111000100110111100000110001001111000)))
(assert (= r (fp #b0 #b10110101110 #b0101100011100011110000010110101010010101001101100000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
