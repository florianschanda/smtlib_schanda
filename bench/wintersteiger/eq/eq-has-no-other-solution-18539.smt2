(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.730510130889288955557958615827374160289764404296875p-452 {- 3289925153263374 -452 (-1.48805e-136)}
; Y = 1.4845235389241298040730043794610537588596343994140625p-627 {+ 2182100029350945 -627 (2.66551e-189)}
; -1.730510130889288955557958615827374160289764404296875p-452 = 1.4845235389241298040730043794610537588596343994140625p-627 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111011 #b1011101100000010101101100100000110010000111100001110)))
(assert (= y (fp #b0 #b00110001100 #b0111110000001001101111000001000111010010010000100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
