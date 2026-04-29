(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8035632962686241054228730718023143708705902099609375p49 {- 3618927361643983 49 (-1.01532e+015)}
; -1.8035632962686241054228730718023143708705902099609375p49 | == 1.8035632962686241054228730718023143708705902099609375p49
; [HW: 1.8035632962686241054228730718023143708705902099609375p49] 

; mpf : + 3618927361643983 49
; mpfd: + 3618927361643983 49 (1.01532e+015) class: Pos. norm. non-zero
; hwf : + 3618927361643983 49 (1.01532e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110000 #b1100110110110110010100101111110110111101010111001111)))
(assert (= r (fp #b0 #b10000110000 #b1100110110110110010100101111110110111101010111001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
