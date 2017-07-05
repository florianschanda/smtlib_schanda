(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.641731091669365039109607096179388463497161865234375p1010 {- 2890099905314214 1010 (-1.80135e+304)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.641731091669365039109607096179388463497161865234375p1010 % -oo == -1.641731091669365039109607096179388463497161865234375p1010
; [HW: -1.641731091669365039109607096179388463497161865234375p1010] 

; mpf : - 2890099905314214 1010
; mpfd: - 2890099905314214 1010 (-1.80135e+304) class: Neg. norm. non-zero
; hwf : - 2890099905314214 1010 (-1.80135e+304) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110001 #b1010010001001000011111010010001110001011110110100110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b11111110001 #xa4487d238bda6)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
