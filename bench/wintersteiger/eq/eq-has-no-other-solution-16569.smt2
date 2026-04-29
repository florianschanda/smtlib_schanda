(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.44335470925411168963137242826633155345916748046875p112 {+ 1996692103389772 112 (7.49433e+033)}
; Y = 1.4828533425139454049457299333880655467510223388671875p439 {+ 2174578133420403 439 (2.10507e+132)}
; 1.44335470925411168963137242826633155345916748046875p112 = 1.4828533425139454049457299333880655467510223388671875p439 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101111 #b0111000101111111101100011011100011000110001001001100)))
(assert (= y (fp #b0 #b10110110110 #b0111101110011100010001101101001011011100100101110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
