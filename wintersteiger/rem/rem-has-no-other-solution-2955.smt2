(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4269882196456917800020391950965858995914459228515625p916 {+ 1922983986887929 916 (7.9049e+275)}
; Y = -1.186229050178354782474343664944171905517578125p-301 {- 838701080988800 -301 (-2.91165e-091)}
; 1.4269882196456917800020391950965858995914459228515625p916 % -1.186229050178354782474343664944171905517578125p-301 == 1.153074245760564053853158839046955108642578125p-301
; [HW: 1.153074245760564053853158839046955108642578125p-301] 

; mpf : + 689385116167296 -301
; mpfd: + 689385116167296 -301 (2.83027e-091) class: Pos. norm. non-zero
; hwf : + 689385116167296 -301 (2.83027e-091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010011 #b0110110101001111000110011001011100100111110011111001)))
(assert (= y (fp #b1 #b01011010010 #b0010111110101100101101010000000000010100110010000000)))
(assert (= r (fp #b1 #b01011001101 #x0f9aaa15c0000)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
