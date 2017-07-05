(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5858319773039373234979620974627323448657989501953125p580 {- 2638352674687733 580 (-6.27559e+174)}
; Y = -1.9205452557693607484878839386510662734508514404296875p454 {- 4145767270860571 454 (-8.93393e+136)}
; -1.5858319773039373234979620974627323448657989501953125p580 = -1.9205452557693607484878839386510662734508514404296875p454 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000011 #b1001010111111001000101011001111101111000101011110101)))
(assert (= y (fp #b1 #b10111000101 #b1110101110101000110110101001100000000100011100011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
