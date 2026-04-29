(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.979678356784198012263686905498616397380828857421875p-944 {+ 4412079082556254 -944 (1.33131e-284)}
; 1.979678356784198012263686905498616397380828857421875p-944 | == 1.979678356784198012263686905498616397380828857421875p-944
; [HW: 1.979678356784198012263686905498616397380828857421875p-944] 

; mpf : + 4412079082556254 -944
; mpfd: + 4412079082556254 -944 (1.33131e-284) class: Pos. norm. non-zero
; hwf : + 4412079082556254 -944 (1.33131e-284) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001111 #b1111101011001100001100110110011011111100101101011110)))
(assert (= r (fp #b0 #b00001001111 #b1111101011001100001100110110011011111100101101011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
