(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.663534836160529106763306117500178515911102294921875p230 {- 2988295240879902 230 (-2.87032e+069)}
; Y = -1.1095837559471448674486282470752485096454620361328125p-141 {- 493521362449421 -141 (-3.98044e-043)}
; -1.663534836160529106763306117500178515911102294921875p230 > -1.1095837559471448674486282470752485096454620361328125p-141 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100101 #b1010100111011101011010110100010100010000111100011110)))
(assert (= y (fp #b1 #b01101110010 #b0001110000001101101011100101011111110111010000001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
