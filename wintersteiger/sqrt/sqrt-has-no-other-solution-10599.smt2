(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0037521798059076960640823017456568777561187744140625p-942 {+ 16898315575713 -942 (2.70004e-284)}
; 1.0037521798059076960640823017456568777561187744140625p-942 S == 1.0018743333402186923564158860244788229465484619140625p-471
; [HW: 1.0018743333402186923564158860244788229465484619140625p-471] 

; mpf : + 8441246932577 -471
; mpfd: + 8441246932577 -471 (1.64318e-142) class: Pos. norm. non-zero
; hwf : + 8441246932577 -471 (1.64318e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010001 #b0000000011110101111001110010000110001110000110100001)))
(assert (= r (fp #b0 #b01000101000 #b0000000001111010110101100001100001100101111001100001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
