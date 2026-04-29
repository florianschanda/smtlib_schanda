(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.573519840284023363352616797783412039279937744140625p-33 {+ 2582903738992714 -33 (1.83182e-010)}
; Y = -1.3052727410572895205831400744500569999217987060546875p714 {- 1374826202871979 714 (-1.12491e+215)}
; 1.573519840284023363352616797783412039279937744140625p-33 = -1.3052727410572895205831400744500569999217987060546875p714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011110 #b1001001011010010001100100011110110100000100001001010)))
(assert (= y (fp #b1 #b11011001001 #b0100111000100110010110101011011100110011100010101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
