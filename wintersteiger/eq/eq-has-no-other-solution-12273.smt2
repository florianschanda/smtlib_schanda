(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.697497699778165003436924962443299591541290283203125p180 {- 3141250380812722 180 (-2.60141e+054)}
; Y = 1.9818166864310813313210246633389033377170562744140625p558 {+ 4421709263157153 558 (1.86983e+168)}
; -1.697497699778165003436924962443299591541290283203125p180 = 1.9818166864310813313210246633389033377170562744140625p558 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110011 #b1011001010001111001101011001000110010101000110110010)))
(assert (= y (fp #b0 #b11000101101 #b1111101101011000010101101001111011100011011110100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
