(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.497516825274455953831420629285275936126708984375p-909 {+ 2240616588916592 -909 (3.46024e-274)}
; Y = 1.9949516964880105174273694501607678830623626708984375p734 {+ 4480864089555047 734 (1.80281e+221)}
; 1.497516825274455953831420629285275936126708984375p-909 m 1.9949516964880105174273694501607678830623626708984375p734 == 1.497516825274455953831420629285275936126708984375p-909
; [HW: 1.497516825274455953831420629285275936126708984375p-909] 

; mpf : + 2240616588916592 -909
; mpfd: + 2240616588916592 -909 (3.46024e-274) class: Pos. norm. non-zero
; hwf : + 2240616588916592 -909 (3.46024e-274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110010 #b0111111101011101010000110011110111000011011101110000)))
(assert (= y (fp #b0 #b11011011101 #b1111111010110101001001111000010110000100000001100111)))
(assert (= r (fp #b0 #b00001110010 #b0111111101011101010000110011110111000011011101110000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
