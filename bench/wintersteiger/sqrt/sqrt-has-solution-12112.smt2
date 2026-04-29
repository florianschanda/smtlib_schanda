(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.534753064721510629198064634692855179309844970703125p843 {+ 2408313703015026 843 (9.00171e+253)}
; 1.534753064721510629198064634692855179309844970703125p843 S == 1.7520006077176517589322202184121124446392059326171875p421
; [HW: 1.7520006077176517589322202184121124446392059326171875p421] 

; mpf : + 3386709656699603 421
; mpfd: + 3386709656699603 421 (9.48773e+126) class: Pos. norm. non-zero
; hwf : + 3386709656699603 421 (9.48773e+126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001010 #b1000100011100101100100111010110001101010001001110010)))
(assert (= r (fp #b0 #b10110100100 #b1100000010000011000111001010000010111000001011010011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
