(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8879571424620460451393455514335073530673980712890625p-260 {+ 3999003455913041 -260 (1.01904e-078)}
; Y = 1.5266783891041539877875266029150225222110748291015625p-975 {+ 2371948596913561 -975 (4.78081e-294)}
; 1.8879571424620460451393455514335073530673980712890625p-260 < 1.5266783891041539877875266029150225222110748291015625p-975 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111011 #b1110001101010001001010001100011100011111110001010001)))
(assert (= y (fp #b0 #b00000110000 #b1000011011010100011001010001100010110110010110011001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
