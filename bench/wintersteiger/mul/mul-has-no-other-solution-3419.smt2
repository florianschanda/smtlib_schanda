(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5998682145103131357899428621749393641948699951171875p-462 {+ 2701566267340051 -462 (1.34346e-139)}
; Y = 1.9677820063455360166670971011626534163951873779296875p-799 {+ 4358502683153627 -799 (5.90215e-241)}
; 1.5998682145103131357899428621749393641948699951171875p-462 * 1.9677820063455360166670971011626534163951873779296875p-799 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110001 #b1001100110010000111101101001101100111011010100010011)))
(assert (= y (fp #b0 #b00011100000 #b1111011111000000100011111100001011101001010011011011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
