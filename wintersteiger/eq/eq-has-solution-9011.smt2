(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1396217327478253000805352712632156908512115478515625p614 {+ 628800383575929 614 (7.74779e+184)}
; Y = -1.536868023191097609725375150446780025959014892578125p324 {- 2417838629190562 324 (-5.25237e+097)}
; 1.1396217327478253000805352712632156908512115478515625p614 = -1.536868023191097609725375150446780025959014892578125p324 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100101 #b0010001110111110001111111111011111110110011101111001)))
(assert (= y (fp #b1 #b10101000011 #b1000100101110000001011101100100111011111101110100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
