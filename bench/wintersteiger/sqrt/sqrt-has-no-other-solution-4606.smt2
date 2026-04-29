(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.565253785191403235188545295386575162410736083984375p-429 {+ 2545676736357766 -429 (1.12906e-129)}
; 1.565253785191403235188545295386575162410736083984375p-429 S == 1.769324043351812481006390953552909195423126220703125p-215
; [HW: 1.769324043351812481006390953552909195423126220703125p-215] 

; mpf : + 3464727474966386 -215
; mpfd: + 3464727474966386 -215 (3.36015e-065) class: Pos. norm. non-zero
; hwf : + 3464727474966386 -215 (3.36015e-065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010010 #b1001000010110100011110001101100101010110010110000110)))
(assert (= r (fp #b0 #b01100101000 #b1100010011110010011010111010011000111000111101110010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
