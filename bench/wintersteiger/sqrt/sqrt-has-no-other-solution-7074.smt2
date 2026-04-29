(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2849343764447136440054464401328004896640777587890625p97 {+ 1283230351581457 97 (2.03606e+029)}
; 1.2849343764447136440054464401328004896640777587890625p97 S == 1.6030810188164001939270519869751296937465667724609375p48
; [HW: 1.6030810188164001939270519869751296937465667724609375p48] 

; mpf : + 2716035451615759 48
; mpfd: + 2716035451615759 48 (4.51227e+014) class: Pos. norm. non-zero
; hwf : + 2716035451615759 48 (4.51227e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100000 #b0100100011110001011101011001010001010110000100010001)))
(assert (= r (fp #b0 #b10000101111 #b1001101001100011100001001000010010100111101000001111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
