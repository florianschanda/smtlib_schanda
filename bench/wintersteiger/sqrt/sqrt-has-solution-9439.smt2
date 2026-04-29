(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.94986696578000628932159088435582816600799560546875p659 {+ 4277820513138380 659 (4.66415e+198)}
; 1.94986696578000628932159088435582816600799560546875p659 S == 1.974774400168285648504706841777078807353973388671875p329
; [HW: 1.974774400168285648504706841777078807353973388671875p329] 

; mpf : + 4389993625368190 329
; mpfd: + 4389993625368190 329 (2.15966e+099) class: Pos. norm. non-zero
; hwf : + 4389993625368190 329 (2.15966e+099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010010 #b1111001100101010011110110100000110010011011011001100)))
(assert (= r (fp #b0 #b10101001000 #b1111100110001010110100001010100110110011011001111110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
