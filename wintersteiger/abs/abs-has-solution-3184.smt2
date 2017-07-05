(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.245871466951552264390556956641376018524169921875p971 {+ 1107306646944048 971 (2.48656e+292)}
; 1.245871466951552264390556956641376018524169921875p971 | == 1.245871466951552264390556956641376018524169921875p971
; [HW: 1.245871466951552264390556956641376018524169921875p971] 

; mpf : + 1107306646944048 971
; mpfd: + 1107306646944048 971 (2.48656e+292) class: Pos. norm. non-zero
; hwf : + 1107306646944048 971 (2.48656e+292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001010 #b0011111011110001011011101011010110010011100100110000)))
(assert (= r (fp #b0 #b11111001010 #b0011111011110001011011101011010110010011100100110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
