(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.982186403258034079755134371225722134113311767578125p-909 {+ 4423374319721250 -909 (4.58014e-274)}
; Y = 1.5243008026122952802694499041535891592502593994140625p-288 {+ 2361240899274785 -288 (3.06501e-087)}
; 1.982186403258034079755134371225722134113311767578125p-909 * 1.5243008026122952802694499041535891592502593994140625p-288 == +zero
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
(assert (= x (fp #b0 #b00001110010 #b1111101101110000100100010111000010010001101100100010)))
(assert (= y (fp #b0 #b01011011111 #b1000011000111000100100111101000001111100100000100001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
