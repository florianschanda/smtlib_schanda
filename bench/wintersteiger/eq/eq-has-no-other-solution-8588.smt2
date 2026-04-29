(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.51504605548757265154335982515476644039154052734375p506 {+ 2319561223572476 506 (3.17398e+152)}
; Y = -1.681439148094122426613239440484903752803802490234375p578 {- 3068929093432358 578 (-1.66348e+174)}
; 1.51504605548757265154335982515476644039154052734375p506 = -1.681439148094122426613239440484903752803802490234375p578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111001 #b1000001111011010000011101110110001000000101111111100)))
(assert (= y (fp #b1 #b11001000001 #b1010111001110010110010111100011101000111010000100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
