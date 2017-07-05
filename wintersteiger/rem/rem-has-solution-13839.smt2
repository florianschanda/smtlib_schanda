(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.369789155527097346265463784220628440380096435546875p604 {- 1665382303037486 604 (-9.09434e+181)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.369789155527097346265463784220628440380096435546875p604 % -oo == -1.369789155527097346265463784220628440380096435546875p604
; [HW: -1.369789155527097346265463784220628440380096435546875p604] 

; mpf : - 1665382303037486 604
; mpfd: - 1665382303037486 604 (-9.09434e+181) class: Neg. norm. non-zero
; hwf : - 1665382303037486 604 (-9.09434e+181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011011 #b0101111010101010100000001000100101100111100000101110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b11001011011 #x5eaa80896782e)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
