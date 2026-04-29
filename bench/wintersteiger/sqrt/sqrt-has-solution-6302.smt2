(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7228888158382906770071940627531148493289947509765625p658 {+ 3255601801639625 658 (2.0606e+198)}
; 1.7228888158382906770071940627531148493289947509765625p658 S == 1.3125885935198013942937222964246757328510284423828125p329
; [HW: 1.3125885935198013942937222964246757328510284423828125p329] 

; mpf : + 1407773873296045 329
; mpfd: + 1407773873296045 329 (1.43548e+099) class: Pos. norm. non-zero
; hwf : + 1407773873296045 329 (1.43548e+099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010001 #b1011100100001111001111011100111010101011011011001001)))
(assert (= r (fp #b0 #b10101001000 #b0101000000000101110011100101101001000101001010101101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
