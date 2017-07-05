(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3304463078777029050314695268752984702587127685546875p841 {- 1488197869023979 841 (-1.95085e+253)}
; -1.3304463078777029050314695268752984702587127685546875p841 | == 1.3304463078777029050314695268752984702587127685546875p841
; [HW: 1.3304463078777029050314695268752984702587127685546875p841] 

; mpf : + 1488197869023979 841
; mpfd: + 1488197869023979 841 (1.95085e+253) class: Pos. norm. non-zero
; hwf : + 1488197869023979 841 (1.95085e+253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001000 #b0101010010011000001000010001010101101011001011101011)))
(assert (= r (fp #b0 #b11101001000 #b0101010010011000001000010001010101101011001011101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
