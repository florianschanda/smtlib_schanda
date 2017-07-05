(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8326845738751165182378599638468585908412933349609375p135 {+ 3750077936621135 135 (7.98247e+040)}
; 1.8326845738751165182378599638468585908412933349609375p135 S == 1.9145153819570717157461103852256201207637786865234375p67
; [HW: 1.9145153819570717157461103852256201207637786865234375p67] 

; mpf : + 4118611133406455 67
; mpfd: + 4118611133406455 67 (2.82533e+020) class: Pos. norm. non-zero
; hwf : + 4118611133406455 67 (2.82533e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000110 #b1101010100101010110100001111010010101101011001001111)))
(assert (= r (fp #b0 #b10001000010 #b1110101000011101101011100001100100110001110011110111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
