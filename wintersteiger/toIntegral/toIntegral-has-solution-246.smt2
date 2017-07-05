(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.23179801154996493295357140596024692058563232421875 529 {+ 1043925438441644 529 (2.16475e+159)}
; 1.23179801154996493295357140596024692058563232421875 529 I == 1.23179801154996493295357140596024692058563232421875 529
; [HW: 1.23179801154996493295357140596024692058563232421875 529] 

; mpf : + 1043925438441644 529
; mpfd: + 1043925438441644 529 (2.16475e+159) class: Pos. norm. non-zero
; hwf : + 1043925438441644 529 (2.16475e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010000 #b0011101101010111000111010100111011100010100010101100)))
(assert (= r (fp #b0 #b11000010000 #b0011101101010111000111010100111011100010100010101100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
