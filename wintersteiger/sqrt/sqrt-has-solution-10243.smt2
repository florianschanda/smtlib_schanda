(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.511747607432627038548389464267529547214508056640625p928 {+ 2304706334141322 928 (3.43017e+279)}
; 1.511747607432627038548389464267529547214508056640625p928 S == 1.22953145849653910914867083192802965641021728515625p464
; [HW: 1.22953145849653910914867083192802965641021728515625p464] 

; mpf : + 1033717790954820 464
; mpfd: + 1033717790954820 464 (5.85676e+139) class: Pos. norm. non-zero
; hwf : + 1033717790954820 464 (5.85676e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011111 #b1000001100000001111001000010010110111010101110001010)))
(assert (= r (fp #b0 #b10111001111 #b0011101011000010100100101101101110100101010101000100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
