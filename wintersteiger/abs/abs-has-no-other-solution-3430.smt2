(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6757234343760181172200418586726300418376922607421875p608 {- 3043187807261347 608 (-1.78008e+183)}
; -1.6757234343760181172200418586726300418376922607421875p608 | == 1.6757234343760181172200418586726300418376922607421875p608
; [HW: 1.6757234343760181172200418586726300418376922607421875p608] 

; mpf : + 3043187807261347 608
; mpfd: + 3043187807261347 608 (1.78008e+183) class: Pos. norm. non-zero
; hwf : + 3043187807261347 608 (1.78008e+183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011111 #b1010110011111100001101100000001111001001001010100011)))
(assert (= r (fp #b0 #b11001011111 #b1010110011111100001101100000001111001001001010100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
