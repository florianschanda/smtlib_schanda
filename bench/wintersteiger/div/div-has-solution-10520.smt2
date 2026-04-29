(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9192332604439972243426382192410528659820556640625p-909 {- 4139858569202152 -909 (-4.43467e-274)}
; Y = -1.246668685591678649160485292668454349040985107421875p230 {- 1110897000514654 230 (-2.15105e+069)}
; -1.9192332604439972243426382192410528659820556640625p-909 / -1.246668685591678649160485292668454349040985107421875p230 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110010 #b1110101101010010110111101111011100000000100111101000)))
(assert (= y (fp #b1 #b10011100101 #b0011111100100101101011011101000110010000010001011110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
