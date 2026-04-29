(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.8824530217145258870203861079062335193157196044921875p108 {+ 3974215099765507 108 (6.10891e+032)}
; +zero M 1.8824530217145258870203861079062335193157196044921875p108 == 1.8824530217145258870203861079062335193157196044921875p108
; [HW: 1.8824530217145258870203861079062335193157196044921875p108] 

; mpf : + 3974215099765507 108
; mpfd: + 3974215099765507 108 (6.10891e+032) class: Pos. norm. non-zero
; hwf : + 3974215099765507 108 (6.10891e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10001101011 #b1110000111101000011100001111010010000101001100000011)))
(assert (= r (fp #b0 #b10001101011 #b1110000111101000011100001111010010000101001100000011)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
