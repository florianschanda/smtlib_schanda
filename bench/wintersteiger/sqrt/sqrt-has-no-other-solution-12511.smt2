(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5522296265500565848327596540912054479122161865234375p-221 {+ 2487021140353783 -221 (4.60603e-067)}
; 1.5522296265500565848327596540912054479122161865234375p-221 S == 1.761947573879572903621237855986692011356353759765625p-111
; [HW: 1.761947573879572903621237855986692011356353759765625p-111] 

; mpf : + 3431506809799898 -111
; mpfd: + 3431506809799898 -111 (6.78678e-034) class: Pos. norm. non-zero
; hwf : + 3431506809799898 -111 (6.78678e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100010 #b1000110101011110111010111011100111101010001011110111)))
(assert (= r (fp #b0 #b01110010000 #b1100001100001110111111110000011100010100010011011010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
