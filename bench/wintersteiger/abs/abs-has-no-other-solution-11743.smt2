(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.95295222860060935232695555896498262882232666015625p-691 {+ 4291715301627588 -691 (1.90092e-208)}
; 1.95295222860060935232695555896498262882232666015625p-691 | == 1.95295222860060935232695555896498262882232666015625p-691
; [HW: 1.95295222860060935232695555896498262882232666015625p-691] 

; mpf : + 4291715301627588 -691
; mpfd: + 4291715301627588 -691 (1.90092e-208) class: Pos. norm. non-zero
; hwf : + 4291715301627588 -691 (1.90092e-208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001100 #b1111001111110100101011010110000001111101011011000100)))
(assert (= r (fp #b0 #b00101001100 #b1111001111110100101011010110000001111101011011000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
