(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.586674434630242824795232081669382750988006591796875p-946 {- 2642146765188558 -946 (-2.66755e-285)}
; Y = 1.053036610918546056581135417218320071697235107421875p968 {+ 238855661169758 968 (2.62712e+291)}
; -1.586674434630242824795232081669382750988006591796875p-946 M 1.053036610918546056581135417218320071697235107421875p968 == 1.053036610918546056581135417218320071697235107421875p968
; [HW: 1.053036610918546056581135417218320071697235107421875p968] 

; mpf : + 238855661169758 968
; mpfd: + 238855661169758 968 (2.62712e+291) class: Pos. norm. non-zero
; hwf : + 238855661169758 968 (2.62712e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001101 #b1001011000110000010010111011011000100010110111001110)))
(assert (= y (fp #b0 #b11111000111 #b0000110110010011110011101010110101100010110001011110)))
(assert (= r (fp #b0 #b11111000111 #b0000110110010011110011101010110101100010110001011110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
