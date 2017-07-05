(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2524115791712311374084265480632893741130828857421875p751 {+ 1136760693899555 751 (1.48345e+226)}
; 1.2524115791712311374084265480632893741130828857421875p751 | == 1.2524115791712311374084265480632893741130828857421875p751
; [HW: 1.2524115791712311374084265480632893741130828857421875p751] 

; mpf : + 1136760693899555 751
; mpfd: + 1136760693899555 751 (1.48345e+226) class: Pos. norm. non-zero
; hwf : + 1136760693899555 751 (1.48345e+226) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101110 #b0100000010011110000010111001010110101100000100100011)))
(assert (= r (fp #b0 #b11011101110 #b0100000010011110000010111001010110101100000100100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
