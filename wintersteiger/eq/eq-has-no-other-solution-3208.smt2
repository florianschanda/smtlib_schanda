(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9187401796901879524881451288820244371891021728515625p974 {- 4137637930903033 974 (-3.0636e+293)}
; Y = 1.906379757549562459217895593610592186450958251953125p631 {+ 4081971538356370 631 (1.69878e+190)}
; -1.9187401796901879524881451288820244371891021728515625p974 = 1.906379757549562459217895593610592186450958251953125p631 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001101 #b1110101100110010100011100111000101001010010111111001)))
(assert (= y (fp #b0 #b11001110110 #b1110100000001000100000001111100001101110100010010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
