(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.335489604020668519268610907602123916149139404296875p-414 {- 1510910855654158 -414 (-3.15662e-125)}
; Y = -1.3983694592705229187146187541657127439975738525390625p759 {- 1794096548326513 759 (-4.24022e+228)}
; -1.335489604020668519268610907602123916149139404296875p-414 < -1.3983694592705229187146187541657127439975738525390625p759 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100001 #b0101010111100010101001011000110101101010101100001110)))
(assert (= y (fp #b1 #b11011110110 #b0110010111111011100010100111011101001010110001110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
