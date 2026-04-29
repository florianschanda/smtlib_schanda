(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.667382034892914699497623587376438081264495849609375p135 {+ 3005621483657494 135 (7.26247e+040)}
; Y = 1.15056023269648566298428704612888395786285400390625p-285 {+ 678063007868708 -285 (1.8508e-086)}
; 1.667382034892914699497623587376438081264495849609375p135 < 1.15056023269648566298428704612888395786285400390625p-285 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010000110 #b1010101011011001100011001000110111001101100100010110)))
(assert (= y (fp #b0 #b01011100010 #b0010011010001011000111011000101110000010011100100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
