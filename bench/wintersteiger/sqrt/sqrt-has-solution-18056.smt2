(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.58582688638173241457707263180054724216461181640625p372 {+ 2638329747212388 372 (1.52551e+112)}
; 1.58582688638173241457707263180054724216461181640625p372 S == 1.2592961869162204724403864020132459700107574462890625p186
; [HW: 1.2592961869162204724403864020132459700107574462890625p186] 

; mpf : + 1167766210774481 186
; mpfd: + 1167766210774481 186 (1.23511e+056) class: Pos. norm. non-zero
; hwf : + 1167766210774481 186 (1.23511e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101110011 #b1001010111111000110000000011011000100000100001100100)))
(assert (= r (fp #b0 #b10010111001 #b0100001001100001001111000010001011001000010111010001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
