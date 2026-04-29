(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8539378303738647257858929151552729308605194091796875p-197 {+ 3845794094669307 -197 (9.22967e-060)}
; Y = -1.3858666925380116463628610290470533072948455810546875p-903 {- 1737789092728875 -903 (-2.04944e-272)}
; 1.8539378303738647257858929151552729308605194091796875p-197 = -1.3858666925380116463628610290470533072948455810546875p-903 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111010 #b1101101010011011101010110110111001000101110111111011)))
(assert (= y (fp #b1 #b00001111000 #b0110001011001000001010001101100100010001000000101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
